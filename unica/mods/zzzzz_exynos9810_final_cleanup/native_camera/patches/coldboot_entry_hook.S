.syntax unified
.arch armv7-a
.thumb

.global coldboot_entry_hook
.type coldboot_entry_hook, %function
.thumb_func
coldboot_entry_hook:
    .set coldboot_jpeg_repair, coldboot_entry_hook + 0x450
    b.w coldboot_jpeg_repair
.size coldboot_entry_hook, .-coldboot_entry_hook
