module lua

pub struct Lua_State {
mut:
	state &C.lua_State
}

pub struct Lua_Buffer {
mut:
	buffer C.luaL_Buffer
}

pub struct Lua_Reg {
mut:
	reg &C.luaL_Reg
}

pub struct Lua_C_Function {
mut:
	func &C.lua_CFunction
}

pub struct Lua_K_Function {
mut:
	func &C.lua_KFunction
}

pub struct Lua_WarnFunction {
mut:
	func C.lua_WarnFunction
}

pub struct Lua_Alloc {
mut:
	alloc C.lua_Alloc
}

pub struct Lua_KContext {
mut:	
	ctx C.lua_KContext
}

pub struct Lua_Reader {
mut:
	r C.lua_Reader
}

pub struct Lua_Writer {
mut:
	w C.lua_Writer
}

pub struct Valist {
mut:
	list C.va_list
}

pub struct Lua_Hook {
mut:
	hook C.lua_Hook
}

pub struct Lua_Debug {
mut:
	debug C.lua_Debug
}
