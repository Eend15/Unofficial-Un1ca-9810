ENTRY(coldboot_jpeg_repair)

SECTIONS
{
    . = 0x00150450;
    .text : { *(.text*) }
    /DISCARD/ : { *(.ARM.attributes) *(.comment) *(.note*) }
}
