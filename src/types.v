module lua

pub struct Lua_State {
mut:
	state &C.lua_State
}

pub struct Lua_Buffer {
mut:
	buffer &C.luaL_Buffer
}

pub struct Lua_Reg {
mut:
	reg &C.luaL_Reg
}

pub struct Lua_C_Function {
mut:
	func &C.lua_CFunction
}
