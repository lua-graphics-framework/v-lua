module lua

fn C.luaopen_base(L &C.lua_State) int
fn C.luaopen_coroutine(L &C.lua_State) int
fn C.luaopen_table(L &C.lua_State) int
fn C.luaopen_io(L &C.lua_State) int
fn C.luaopen_os(L &C.lua_State) int
fn C.luaopen_string(L &C.lua_State) int
fn C.luaopen_utf8(L &C.lua_State) int
fn C.luaopen_math(L &C.lua_State) int
fn C.luaopen_debug(L &C.lua_State) int
fn C.luaopen_package(L &C.lua_State) int

fn C.luaL_openlibs(L &C.lua_State)

// V wrapper
pub fn luaopen_base(state Lua_State) int {
	return C.luaopen_base(state.state)
}

pub fn luaopen_coroutine(state Lua_State) int {
	return C.luaopen_coroutine(state.state)
}

pub fn luaopen_table(state Lua_State) int {
	return C.luaopen_table(state.state)
}

pub fn luaopen_io(state Lua_State) int {
	return C.luaopen_io(state.state)
}

pub fn luaopen_os(state Lua_State) int {
	return C.luaopen_os(state.state)
}

pub fn luaopen_string(state Lua_State) int {
	return C.luaopen_string(state.state)
}

pub fn luaopen_utf8(state Lua_State) int {
	return C.luaopen_utf8(state.state)
}

pub fn luaopen_math(state Lua_State) int {
	return C.luaopen_math(state.state)
}

pub fn luaopen_debug(state Lua_State) int {
	return C.luaopen_debug(state.state)
}

pub fn luaopen_package(state Lua_State) int {
	return C.luaopen_package(state.state)
}

pub fn luaopen_libs(state Lua_State) {
	C.luaL_openlibs(state.state)
}
