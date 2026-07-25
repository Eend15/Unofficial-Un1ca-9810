/*
 * AIDL vibrator HAL for Exynos9810 (starlte / star2lte / crownlte).
 *
 * The legacy 9810 vendor only ships a HIDL vibrator HAL, but the One UI 8 /
 * Android 16 framework binds android.hardware.vibrator.IVibrator over AIDL
 * exclusively, so no vibrator is ever registered and hasVibrator() is false.
 * Vendor binaries from a modern Samsung donor cannot be reused: the 9810 is
 * ARMv8.0 and those are built for ARMv8.2+, so they die on an illegal opcode.
 *
 * This service therefore talks to the kernel's sec_vibrator driver directly
 * through the legacy timed_output sysfs interface, which is present and
 * working on these devices:
 *
 *   /sys/class/timed_output/vibrator/enable     write duration in ms (0 = stop)
 *   /sys/class/timed_output/vibrator/intensity  write 0..10000
 */

#include <aidl/android/hardware/vibrator/BnVibrator.h>
#include <android/binder_ibinder.h>
#include <android/binder_manager.h>
#include <android/binder_process.h>
#include <android/log.h>

#include <cerrno>
#include <cstring>
#include <fcntl.h>
#include <string>
#include <unistd.h>

#define LOG_TAG "unica-vibrator-aidl"
#define ALOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)
#define ALOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

namespace {

// Two node layouts exist across the exynos9810 family: the legacy Samsung
// timed_output class (star2lte's kernel exposes this) and the LED transient
// trigger class (the legacy-port vendor init chowns this one). Support both --
// which target gets which depends on the flashed kernel, not the ROM.
//
// They are NOT interchangeable: timed_output takes the duration in ms written
// straight to "enable", whereas the LED trigger takes the duration in
// "duration" and then a 0/1 trigger in "activate".
constexpr char kEnablePath[] = "/sys/class/timed_output/vibrator/enable";
constexpr char kIntensityPath[] = "/sys/class/timed_output/vibrator/intensity";

constexpr char kLedsActivate[] = "/sys/class/leds/vibrator/activate";
constexpr char kLedsDuration[] = "/sys/class/leds/vibrator/duration";
constexpr char kIntensityPathAlt[] = "/sys/class/leds/vibrator/intensity";

constexpr int kMaxIntensity = 10000;

bool writeNode(const char* path, const std::string& value) {
    int fd = ::open(path, O_WRONLY | O_CLOEXEC);
    if (fd < 0) return false;
    ssize_t written = ::write(fd, value.c_str(), value.size());
    ::close(fd);
    if (written < 0) {
        ALOGE("write %s <- %s failed: %s", path, value.c_str(), strerror(errno));
        return false;
    }
    return true;
}

// Prefer timed_output; fall back to the leds interface if it is missing.
// Only valid for nodes whose semantics match on both layouts (e.g. intensity).
bool writeEither(const char* primary, const char* fallback, const std::string& value) {
    if (::access(primary, W_OK) == 0 && writeNode(primary, value)) return true;
    return writeNode(fallback, value);
}

// Drive the motor for timeoutMs (0 stops it), on whichever layout this kernel
// exposes. Writing the duration to "activate" would be meaningless, so the two
// layouts get their own sequences rather than one shared write.
bool vibrateFor(int timeoutMs) {
    if (::access(kEnablePath, W_OK) == 0 &&
        writeNode(kEnablePath, std::to_string(timeoutMs > 0 ? timeoutMs : 0))) {
        return true;
    }
    if (timeoutMs <= 0) return writeNode(kLedsActivate, "0");
    // Stop first: the trigger ignores a new duration while still active.
    writeNode(kLedsActivate, "0");
    if (!writeNode(kLedsDuration, std::to_string(timeoutMs))) return false;
    return writeNode(kLedsActivate, "1");
}

/*
 * Samsung's libvibratorservice expects the vibrator binder to carry an
 * ISehVibrator extension. AidlHalWrapper::supportsHapticEngine() does:
 *
 *     bl   getSehHal()      ; AIBinder_getExtension + ISehVibrator::fromBinder
 *     ldr  x0, [sp, #0x8]
 *     ldr  x8, [x0]         ; <-- vtable load, SIGSEGV when the extension is null
 *
 * With no extension attached this kills system_server during
 * VibratorManagerService.<init>, i.e. the device boot-loops as soon as an AIDL
 * vibrator successfully registers. We cannot implement the real interface (it
 * is proprietary and unpublished), but attaching a binder that merely carries
 * the right descriptor makes fromBinder() return a valid proxy, so the vtable
 * load succeeds and the call fails cleanly as UNKNOWN_TRANSACTION instead.
 */
constexpr char kSehDescriptor[] = "vendor.samsung.hardware.vibrator.ISehVibrator";

void* SehOnCreate(void* args) { return args; }
void SehOnDestroy(void* /*userData*/) {}
binder_status_t SehOnTransact(AIBinder* /*binder*/, transaction_code_t /*code*/,
                              const AParcel* /*in*/, AParcel* /*out*/) {
    return STATUS_UNKNOWN_TRANSACTION;
}

AIBinder* makeSehExtension() {
    static AIBinder_Class* clazz =
            AIBinder_Class_define(kSehDescriptor, SehOnCreate, SehOnDestroy, SehOnTransact);
    return AIBinder_new(clazz, nullptr);
}

}  // namespace

namespace aidl::android::hardware::vibrator {

class Vibrator : public BnVibrator {
  public:
    ndk::ScopedAStatus getCapabilities(int32_t* _aidl_return) override {
        // Only amplitude control is backed by real hardware here. Advertising
        // callbacks or compose/PWLE would promise behaviour this driver has no
        // way to deliver, and the framework handles their absence fine.
        *_aidl_return = IVibrator::CAP_AMPLITUDE_CONTROL;
        return ndk::ScopedAStatus::ok();
    }

    ndk::ScopedAStatus off() override {
        vibrateFor(0);
        return ndk::ScopedAStatus::ok();
    }

    ndk::ScopedAStatus on(int32_t timeoutMs,
                          const std::shared_ptr<IVibratorCallback>& callback) override {
        if (timeoutMs <= 0) return off();
        if (!vibrateFor(timeoutMs)) {
            return ndk::ScopedAStatus::fromExceptionCode(EX_ILLEGAL_STATE);
        }
        // CAP_ON_CALLBACK is not advertised, so a callback should never arrive;
        // complete it immediately if one does rather than leaving it dangling.
        if (callback != nullptr) callback->onComplete();
        return ndk::ScopedAStatus::ok();
    }

    ndk::ScopedAStatus perform(Effect effect, EffectStrength strength,
                               const std::shared_ptr<IVibratorCallback>& callback,
                               int32_t* _aidl_return) override {
        int32_t ms = effectDurationMs(effect);
        if (ms == 0) {
            return ndk::ScopedAStatus::fromExceptionCode(EX_UNSUPPORTED_OPERATION);
        }

        setAmplitude(strengthToAmplitude(strength));
        if (!vibrateFor(ms)) {
            return ndk::ScopedAStatus::fromExceptionCode(EX_ILLEGAL_STATE);
        }

        *_aidl_return = ms;
        if (callback != nullptr) callback->onComplete();
        return ndk::ScopedAStatus::ok();
    }

    ndk::ScopedAStatus getSupportedEffects(std::vector<Effect>* _aidl_return) override {
        *_aidl_return = {Effect::CLICK, Effect::DOUBLE_CLICK, Effect::TICK, Effect::THUD,
                         Effect::POP,   Effect::HEAVY_CLICK};
        return ndk::ScopedAStatus::ok();
    }

    ndk::ScopedAStatus setAmplitude(float amplitude) override {
        if (amplitude <= 0.0f || amplitude > 1.0f) {
            return ndk::ScopedAStatus::fromExceptionCode(EX_ILLEGAL_ARGUMENT);
        }
        int level = static_cast<int>(amplitude * kMaxIntensity);
        if (level < 1) level = 1;
        writeEither(kIntensityPath, kIntensityPathAlt, std::to_string(level));
        return ndk::ScopedAStatus::ok();
    }

    // --- Everything below is not backed by this driver. -------------------
    ndk::ScopedAStatus setExternalControl(bool) override { return unsupported(); }
    ndk::ScopedAStatus getCompositionDelayMax(int32_t*) override { return unsupported(); }
    ndk::ScopedAStatus getCompositionSizeMax(int32_t*) override { return unsupported(); }
    ndk::ScopedAStatus getSupportedPrimitives(std::vector<CompositePrimitive>*) override {
        return unsupported();
    }
    ndk::ScopedAStatus getPrimitiveDuration(CompositePrimitive, int32_t*) override {
        return unsupported();
    }
    ndk::ScopedAStatus compose(const std::vector<CompositeEffect>&,
                               const std::shared_ptr<IVibratorCallback>&) override {
        return unsupported();
    }
    ndk::ScopedAStatus getSupportedAlwaysOnEffects(std::vector<Effect>*) override {
        return unsupported();
    }
    ndk::ScopedAStatus alwaysOnEnable(int32_t, Effect, EffectStrength) override {
        return unsupported();
    }
    ndk::ScopedAStatus alwaysOnDisable(int32_t) override { return unsupported(); }
    ndk::ScopedAStatus getResonantFrequency(float*) override { return unsupported(); }
    ndk::ScopedAStatus getQFactor(float*) override { return unsupported(); }
    ndk::ScopedAStatus getFrequencyResolution(float*) override { return unsupported(); }
    ndk::ScopedAStatus getFrequencyMinimum(float*) override { return unsupported(); }
    ndk::ScopedAStatus getBandwidthAmplitudeMap(std::vector<float>*) override {
        return unsupported();
    }
    ndk::ScopedAStatus getPwlePrimitiveDurationMax(int32_t*) override { return unsupported(); }
    ndk::ScopedAStatus getPwleCompositionSizeMax(int32_t*) override { return unsupported(); }
    ndk::ScopedAStatus getSupportedBraking(std::vector<Braking>*) override {
        return unsupported();
    }
    ndk::ScopedAStatus composePwle(const std::vector<PrimitivePwle>&,
                                   const std::shared_ptr<IVibratorCallback>&) override {
        return unsupported();
    }

  private:
    static ndk::ScopedAStatus unsupported() {
        return ndk::ScopedAStatus::fromExceptionCode(EX_UNSUPPORTED_OPERATION);
    }

    // Durations roughly matching what Samsung's own HAL emits for these
    // effects; the DC/LRA motor has no waveform engine exposed here, so each
    // effect is a single timed pulse.
    static int32_t effectDurationMs(Effect effect) {
        switch (effect) {
            case Effect::TICK:         return 10;
            case Effect::CLICK:        return 20;
            case Effect::POP:          return 25;
            case Effect::HEAVY_CLICK:  return 35;
            case Effect::THUD:         return 40;
            case Effect::DOUBLE_CLICK: return 60;
            default:                   return 0;
        }
    }

    static float strengthToAmplitude(EffectStrength strength) {
        switch (strength) {
            case EffectStrength::LIGHT:  return 0.5f;
            case EffectStrength::STRONG: return 1.0f;
            case EffectStrength::MEDIUM:
            default:                     return 0.75f;
        }
    }
};

}  // namespace aidl::android::hardware::vibrator

int main() {
    ABinderProcess_setThreadPoolMaxThreadCount(1);

    auto vib = ndk::SharedRefBase::make<aidl::android::hardware::vibrator::Vibrator>();
    ndk::SpAIBinder binder = vib->asBinder();
    const std::string name =
            std::string(aidl::android::hardware::vibrator::Vibrator::descriptor) + "/default";

    // Must be attached before the binder is published. Deliberately never
    // released: it has to outlive every client for the lifetime of the process.
    AIBinder* seh = makeSehExtension();
    if (AIBinder_setExtension(binder.get(), seh) != STATUS_OK) {
        ALOGE("failed to attach ISehVibrator extension; system_server would crash");
        return 1;
    }
    ALOGI("attached %s extension", kSehDescriptor);

    binder_status_t status = AServiceManager_addService(binder.get(), name.c_str());
    if (status != STATUS_OK) {
        ALOGE("failed to register %s (status %d)", name.c_str(), status);
        return 1;
    }
    ALOGI("registered %s", name.c_str());

    ABinderProcess_joinThreadPool();
    return 1;  // joinThreadPool should never return
}
