.section ".text.boot"

.globl _start
_start:
    la sp, _stack_start
    call kernel.start
_hlt:
    j _hlt
