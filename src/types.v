module lua

pub struct Lua_State {
mut:
	state &C.lua_State
}
