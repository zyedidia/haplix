use dev::uart;
use io;

export const console = uart::virt { ... };

export fn fprintln(st: *io::stream, s: str) void = {
	let putc = match (st.putc) {
	case null =>
		return;
	case let putc: *fn(_: *io::stream, _: u8) void =>
		yield putc;
	};
	let s = *(&s: *[]u8);
	for (let i = 0z; i < len(s); i += 1) {
		putc(st, s[i]);
	};
	putc(st, '\n');
};

export fn println(s: str) void = {
	fprintln(&console, s);
};
