ENTRY(coldboot_entry_hook)

SECTIONS
{
    . = 0x00150000;
    .text : { *(.text*) }
    /DISCARD/ : { *(.ARM.attributes) *(.comment) *(.note*) }
}
