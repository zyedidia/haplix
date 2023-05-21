export type uart = struct {
	base: uintptr,
};

fn tx(uart: *uart, b: u8) void = {
	vst(uart.base: *u8, b);
};

export fn println(uart: *uart, s: str) void = {
	let s = *(&s: *[]u8);
	for (let i = 0z; i < len(s); i += 1) {
		tx(uart, s[i]);
	};
	tx(uart, '\n');
};

export const dev = uart {
	base = 0x10000000,
};
