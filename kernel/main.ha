use dev::uart;

fn kmain() void = {
	console = uart::virt_new(0x10000000);

	println("hello");
};
