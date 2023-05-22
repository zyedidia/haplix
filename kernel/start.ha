use dev::uart;

let @symbol("_bss_start") bss_start: [*]u8;
let @symbol("_bss_end") bss_end: [*]u8;

export fn start() void = {
	const bss_size = (&bss_end: uintptr - &bss_start: uintptr): size;
	for (let i = 0z; i < bss_size; i += 1) {
		bss_start[i] = 0;
	};
	kinit();
	kmain();
};

fn kinit() void = {
	console = uart::virt_new(0x10000000);
};
