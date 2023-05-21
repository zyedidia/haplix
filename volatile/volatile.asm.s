.global volatile.st8
volatile.st8:
	sb a1, 0(a0)
	ret
.global volatile.st16
volatile.st16:
	sh a1, 0(a0)
	ret
.global volatile.st32
volatile.st32:
	sw a1, 0(a0)
	ret
.global volatile.st64
volatile.st64:
	sd a1, 0(a0)
	ret

.global volatile.ld8
volatile.ld8:
	lb a0, 0(a0)
	ret
.global volatile.ld16
volatile.ld16:
	lh a0, 0(a0)
	ret
.global volatile.ld32
volatile.ld32:
	lw a0, 0(a0)
	ret
.global volatile.ld64
volatile.ld64:
	ld a0, 0(a0)
	ret
