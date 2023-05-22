export type stream = *vtable;

export type vtable = struct {
	putc: *fn(s: *stream, b: u8) void,
};

export const empty_vtable = vtable {
	putc = &empty_putc,
};

fn empty_putc(s: *stream, b: u8) void = {
	void;
};
