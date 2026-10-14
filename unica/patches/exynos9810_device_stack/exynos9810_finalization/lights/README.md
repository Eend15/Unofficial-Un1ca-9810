# Galaxy S9-series status LED

The One UI 8 framework already contains Samsung's service LED state machine,
charging/low-battery observers, channel light policy, screen suppression, DND
suppression and ambient-light brightness handling. The existing Samsung AIDL
HAL supports the Exynos9810 RGB driver's led_pattern and led_blink nodes.
Replacing these with an independent polling service would duplicate ownership.

Compared directly with SM-G965F stock framework-res.apk:

- config_defaultNotificationColor: stock blue #ff0000ff; donor white #ffffffff.
- config_defaultNotificationLedOn: both 500 ms.
- config_defaultNotificationLedOff: stock 5000 ms; donor 2000 ms.
- Battery blink: both 125 ms on / 2875 ms off.
- config_intrusiveNotificationLed and config_useAttentionLight: both false.

restore_stock_led.py restores only the two differing resources for starlte and
star2lte in the existing APK rebuild pipeline. It preserves channel colours,
channel LED opt-outs, global pulse settings, DND, charging priorities and other
resources. Stock NotificationRecord also checks shouldShowLights(); channels
which disable LEDs must not be forced to blink.

Stock driver's patterns: 0 off, 1 red charging, 2 charging error, 3 missed
notification, 4 low battery, 5 green fully charged, 6 powering.

S9+ checks on 2026-10-08: charging pattern 1, simulated low battery pattern 4
while Dozing, actual USB-powered full battery pattern 5. Simulation was reset
and stay_on_while_plugged_in restored to its original value (15). That developer
setting keeps the display awake on power and can suppress the status LED.

Runtime resource lookup confirmed blue and 5000 ms with temporary fabricated
overlays. These are validation overlays, not the ROM delivery mechanism; the
source modifies framework resources for the next build. The live system-server
still used the donor defaults despite the overlay lookup. An actual local app
notification reached LightsService and SehLight with the screen off: default
white 500/2000 ms, then an explicitly blue channel produced
led_blink 0xff0000ff 500 2000 and took priority over the charging LED. This
verifies the notification-to-driver path, not physical visual observation or
the new 5000 ms default on the installed ROM. The test app was uninstalled,
validation overlays disabled, and stay-awake restored to 15. No physical S9
test or full ROM build has been run.

Reference: https://www.samsung.com/us/support/answer/ANS10003383/
