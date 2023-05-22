use dev::uart;
use io;

export const console = uart::virt {
	stream = &io::empty_vtable,
	...
};

export fn fprintln(st: *io::stream, s: str) void = {
	let s = *(&s: *[]u8);
	for (let i = 0z; i < len(s); i += 1) {
		st.putc(st, s[i]);
	};
	st.putc(st, '\n');
};

export fn println(s: str) void = {
	fprintln(&console, s);
};
