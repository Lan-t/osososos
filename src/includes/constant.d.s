; about drive

SECT_SIZE   equ (512)

BOOT_LOAD   equ 0x7c00
BOOT_SIZE   equ (1024 * 8)
BOOT_SECT   equ (BOOT_SIZE / SECT_SIZE)
BOOT_END    equ (BOOT_LOAD + BOOT_SIZE)

KERNEL_SIZE equ (1024 * 16)
KERNEL_LOAD equ (0x0010_1000)
KERNEL_SECT equ (KERNEL_SIZE / SECT_SIZE)

; about memory
E820_RECORD_SIZE    equ 20

; kbc
%define KBC_CMD_KEYBOARD_DISABLE 0xad
%define KBC_CMD_KEYBOARD_ENABLE 0xae
%define KBC_CMD_READ_OUTPUTPORT 0xd0
%define KBC_CMD_WRITE_OUTPUTPORT 0xd1

; ring buff
%define RING_ITEM_SIZE (1 << 4)
%define RING_INDEX_MASK (RING_ITEM_SIZE - 1)

STACK_BASE equ 0x0010_4000
STACK_SIZE equ 0x400

SP_TASK_0 equ STACK_BASE + (STACK_SIZE * 1)
SP_TASK_1 equ STACK_BASE + (STACK_SIZE * 2)
SP_TASK_2 equ STACK_BASE + (STACK_SIZE * 3)
SP_TASK_3 equ STACK_BASE + (STACK_SIZE * 4)
