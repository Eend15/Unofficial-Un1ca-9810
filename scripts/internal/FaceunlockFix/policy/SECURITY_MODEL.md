# FaceunlockFix SELinux and Binder security model

This port uses the already present `faced_exec` → `faced` process transition
and the stock `faced_service` service-manager label for the real original
`com.samsung.android.bio.face.IFaceDaemon` descriptor. The native engine
retains the original trusted-world path, no privilege-adding TE or permissive
rules are generated, and the camera is accessed via Android Camera2.

The older standalone policy *examples* proposing a separate `noble_faced`
domain and private SELinux types were obsolete and have been removed.
`file_contexts.example` and `service_contexts.example` show the audited
pre-existing labels only; they are not additional policy to merge.

An actual release still needs a complete Android 16 SELinux policy build and
`neverallow` validation. Never broaden `system_server` Binder grants, bypass
the original HAT, or switch SELinux to permissive to make a build pass.

The original stock Android persistent property
`persist.sys.un1ca.noble_face.experimental` is retained as a **runtime
compatibility key** so an already enrolled S9+ remains supported. It is not
the product name, nor authorization to bypass biometric access controls.
