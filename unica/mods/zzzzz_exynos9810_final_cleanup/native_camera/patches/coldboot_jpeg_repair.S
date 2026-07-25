.syntax unified
.arch armv7-a
.thumb

/*
 * Entry hook for ScenarioManager::PostConfigureStreams in the exact v2
 * UniHAL payload.  The v2 scenario wrapper's private physical photo config is
 * exactly two streams in a fixed order: implementation-defined preview then
 * JPEG. On the cold configure path that physical JPEG can return from the
 * legacy HAL with option 2 still cleared. That
 * makes Samsung submit the JPEG target on every repeating preview request,
 * exhausting PIPE_3AA_CAPTURE (P6) before the first still capture.
 *
 * Restore option 2 before the existing v2 buffer-manager repair runs. Normal
 * Camera2 clients never reach this private two-stream shape because the v2
 * scenario wrapper only creates it from Samsung's option-2 framework JPEG.
 */
.global coldboot_jpeg_repair
.type coldboot_jpeg_repair, %function
.thumb_func
coldboot_jpeg_repair:
    push    {r0-r4, lr}

    ldr     r0, [r0, #8]          /* saved framework stream config */
    cbz     r0, 3f
    ldr     r1, [r0]              /* num_streams */
    cmp     r1, #2
    bne     3f
    ldr     r2, [r0, #4]          /* camera3_stream_t **streams */
    cbz     r2, 3f

    ldr     r3, [r2]               /* physical preview */
    cbz     r3, 3f
    ldr     r4, [r3, #0x0c]
    cmp     r4, #0x22             /* IMPLEMENTATION_DEFINED */
    bne     3f

    ldr     r3, [r2, #4]          /* physical Samsung JPEG */
    cbz     r3, 3f
    ldr     r4, [r3, #0x0c]
    cmp     r4, #0x21             /* HAL_PIXEL_FORMAT_BLOB/JPEG */
    bne     3f
    ldr     r4, [r3, #0x2c]
    orr.w   r4, r4, #2            /* restore physical-still option */
    str     r4, [r3, #0x2c]

3:  ldmia.w sp!, {r0-r4, lr}

    /* Re-run the four original bytes replaced by the entry branch. */
    push    {r3-r7, lr}
    sub     sp, sp, #0x60
    .set    original_entry_after_hook, coldboot_jpeg_repair - 0x44c
    b.w     original_entry_after_hook
.size coldboot_jpeg_repair, .-coldboot_jpeg_repair
