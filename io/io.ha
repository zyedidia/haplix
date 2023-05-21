export type stream = *vtable;

export type vtable = struct {
	putc: nullable *fn(s: *stream, b: u8) void,
};
