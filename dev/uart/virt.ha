use io;
use volatile;

export type virt = struct {
	stream: io::stream,
	base: uintptr,
};

export fn virt_new(base: uintptr) virt = {
	return virt {
		stream = &virt_vtable,
		base = base,
	};
};

export const virt_vtable: io::vtable = io::vtable {
	putc = &virt_tx,
	...
};

fn virt_tx(uart: *io::stream, b: u8) void = {
	const uart = uart: *virt;
	volatile::st8(uart.base: *u8, b);
};
