use kernel;

export @noreturn fn abort_fixed(loc: str, i: int) void = {
	kernel::println("abort");
	for (true) { void; };
};
