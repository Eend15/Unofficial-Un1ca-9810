<!-- Small PRs with only the files you changed are reviewed fastest. The maintainer may re-implement the idea on top of the current code and credit you in the release notes. -->

### 📝 Description
What does this change and why? (e.g. Fixes #123)

### 🛠️ Type of Change
- [ ] 🐛 Bug fix
- [ ] ✨ New feature (new options default to off)
- [ ] ⚡ Performance / code cleanup
- [ ] 🌐 Translation / notification rules update

### 📱 Testing
- **Device & One UI version**: (e.g. Galaxy S25 Ultra, One UI 8.5)
- [ ] Tested on a real device
- [ ] `./gradlew testReleaseUnitTest` passes
- [ ] `python3 scripts/translations.py check` passes (en, ko, ja, zh, ru must be complete)

### 📸 Screenshots / Video (for UI or animation changes)

### ✅ Checklist
- [ ] Only the files I changed are in this PR (no "Upload files" of a whole folder; file modes unchanged)
- [ ] Based on the latest `main`
- [ ] No new permissions (the module stays INTERNET-free)
- [ ] Existing System UI hooks and Now Bar behavior remain intact
- [ ] Follows the existing code style
