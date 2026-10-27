# Optional app preload policy

For starlte, star2lte and crownlte, EXT4 and EROFS, final debloat removes Smart Switch and its known Agent/Assistant/Stub installer APKs and strips its package identities from removable_preload.txt and userdata_apks_count_list.txt. Package-based matching also covers renamed/localized preload sections, not just [SmartSwitch]. Samsung Cloud/Kids removal from the existing catalogs is retained.

The final release-defaults checker refuses lingering installer APKs or automatic preload requests, including cached/staged packaging. No Samsung Account/Galaxy Store service, global account restore setting or package installation permission is disabled. Existing user apps on connected phones are not uninstalled; this is source integration for subsequent builds. Manual installation is not blacklisted.

Run python3 scripts/tests/test_optional_preloads.py. Seven tests pass, including the production final debloat function across all six target/filesystem combinations, idempotence, renamed package-based entries and preservation of unrelated catalog entries and Samsung Account.

Acceptance still required on the next ROM build: log into Samsung Account, connect networking and wait for account/setup completion. Smart Switch should remain absent unless explicitly requested by the user. Check any unexpected install initiator and fresh logs before claiming all remote Store/account behavior is prevented. No login or Store installation test was run on the connected phone in this change.
