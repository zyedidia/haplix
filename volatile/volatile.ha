export fn st8(addr: *u8, val: u8) void;
export fn st16(addr: *u16, val: u16) void;
export fn st32(addr: *u32, val: u32) void;
export fn st64(addr: *u64, val: u64) void;

export fn ld8(addr: *u8) u8;
export fn ld16(addr: *u16) u16;
export fn ld32(addr: *u32) u32;
export fn ld64(addr: *u64) u64;
