module lua

fn C.luaL_checkversion_(state &C.lua_State, ver C.lua_Number, sz usize)
fn C.luaL_getmetafield(state &C.lua_State, obj int, e &char) int
fn C.luaL_callmeta(state &C.lua_State, obj int, e &char) int
fn C.luaL_tolstring(state &C.lua_State, obj int, e &char) &char
fn C.luaL_argerror(state &C.lua_State, arg int, extramsg &char) int
fn C.luaL_typeerror(state &C.lua_State, arg int, tname &char) int
fn C.luaL_checklstring(state &C.lua_State, arg int, l &usize) &char
fn C.luaL_optlstring(state &C.lua_State, arg int, def &char, l &usize) &char
fn C.luaL_checknumber(state &C.lua_State, arg int) C.lua_Number
fn C.luaL_optnumber(state &C.lua_State, arg int, def C.lua_Number) C.lua_Number
fn C.luaL_checkinteger(state &C.lua_State, arg int) C.lua_Integer
fn C.luaL_optinteger(state &C.lua_State, arg int, def C.lua_Integer) C.lua_Integer

fn C.luaL_checkstack(state &C.lua_State, sz int, msg &char)
fn C.luaL_checktype(state &C.lua_State, arg int, t int)
fn C.luaL_checkany(state &C.lua_State, arg int)
fn C.luaL_newmetatable(state &C.lua_State, tname &char) int
fn C.luaL_setmetatable(state &C.lua_State, tname &char)
fn C.luaL_testudata(state &C.lua_State, ud int, tname &char) voidptr
fn C.luaL_checkudata(state &C.lua_State, ud int, tname &char) voidptr
fn C.luaL_where(state &C.lua_State, lvl int)
fn C.luaL_error(state &C.lua_State, fmt &char, ...&char) int
fn C.luaL_checkoption(state &C.lua_State, arg int, def &char, list &&char) int
fn C.luaL_fileresult(state &C.lua_State, stat int, fname &char) int
fn C.luaL_execresult(state &C.lua_State, stat int) int

fn C.luaL_ref(state &C.lua_State, t int) int
fn C.luaL_unref(state &C.lua_State, t int, ref int)
fn C.luaL_loadfilex(state &C.lua_State, filename &char, mode &char) int
fn C.luaL_loadbufferx(state &C.lua_State, buff &char, sz usize, name &char, mode &char) int
fn C.luaL_loadString(state &C.lua_State, s &char) int
fn C.luaL_newstate() C.lua_State
fn C.luaL_len(state &C.lua_State, idx int) C.lua_Integer
fn C.luaL_addgsub(b C.lua_Buffer, s &char, p &char, r &char)
fn C.luaL_gsub(state &C.lua_State, s &char, p &char, r &char) &char
fn C.luaL_setfuncs(state &C.lua_State, l &C.luaL_Reg, nup int)
fn C.luaL_getsubtable(state &C.lua_State, idx int, fname &char) int
fn C.luaL_traceback(state &C.lua_State, L1 &C.lua_State, msg &char, level int)
fn C.luaL_requiref(state &C.lua_State, modname &char, openf C.lua_CFunction, glb int)

fn C.luaL_buffinit(state &C.lua_State, b &C.luaL_Buffer)
fn C.luaL_prepbuffsize(b &C.luaL_Buffer, sz usize) &char
fn C.luaL_addlstring(b &C.luaL_Buffer, s &char, i usize)
fn C.luaL_addstring(b &C.luaL_Buffer, s &char)
fn C.luaL_addvalue(b &C.luaL_Buffer)
fn C.luaL_pushresult(b &C.luaL_Buffer)
fn C.luaL_pushresultsize(b &C.luaL_Buffer, sz usize)
fn C.luaL_buffinitsize(state &C.lua_State, b &C.luaL_Buffer, sz usize)

pub fn lua_check_version(state Lua_State) {
	C.luaL_checkversion_(state.state, C.lua_Number(C.LUA_VERSION_NUM), C.LUAL_NUMSIZES)
}

pub fn lua_get_meta_field(state Lua_State, obj int, e string) int{
	return C.luaL_getmetafield(state.state, obj, e.str)
}

pub fn lua_call_meta(state Lua_State, obj int, e string) int {
	return C.luaL_callmeta(state.state, obj, e.str)
}

pub fn lua_to_l_string(state Lua_State, obj int, e string) string {
	unsafe { return C.luaL_tolstring(state.state, obj, e.str).vstring() }
}

pub fn lua_arg_error(state Lua_State, arg int, extramsg string) int {
	unsafe { return C.luaL_argerror(state.state, arg, extramsg.str) }
}

pub fn lua_type_error(state Lua_State, arg int, tname string) int {
	return C.luaL_typeerror(state.state, arg, tname.str)
}

pub fn lua_check_l_string(state Lua_State, arg int, l string) string {
	unsafe { return C.luaL_checklstring(state.state, arg, l.str).vstring() }
}

pub fn lua_opt_l_string(state Lua_State, arg int, def string, l string) string {
	unsafe { return C.luaL_optlstring(state.state, arg, def.str, l.str).vstring() }
}

pub fn lua_check_number(state Lua_State, arg int) f64 {
	return f64(C.luaL_checknumber(state.state, arg))
}

pub fn lua_opt_number(state Lua_State, arg int, def f64) f64 {
	unsafe { return f64(C.luaL_optnumber(state.state, arg, C.lua_Number(def))) }
}

pub fn lua_check_integer(state Lua_State, arg int) int {
	return int(C.luaL_checkinteger(state.state, arg))
}

pub fn lua_opt_integer(state Lua_State, arg int, def int) int {
	return int(C.luaL_optinteger(state.state, arg, C.lua_Integer(def)))
}

pub fn lua_check_stack(state Lua_State, sz int, msg string) {
	C.luaL_checkstack(state.state, sz, msg.str)
}

pub fn lua_check_type(state Lua_State, arg int, t int) {
	C.luaL_checktype(state.state, arg, t)
}

pub fn lua_checkany(state Lua_State, arg int) {
	C.luaL_checkany(state.state, arg)
}

pub fn lua_new_metatable(state Lua_State, tname string) int {
	return C.luaL_newmetatable(state.state, tname.str)
}

pub fn lua_set_metatable(state Lua_State, tname string) {
	C.luaL_setmetatable(state.state, tname.str)
}

pub fn lua_test_udata(state Lua_State, ud int, tname string) voidptr {
	return C.luaL_testudata(state.state, ud, tname.str)
}

pub fn lua_check_udata(state Lua_State, ud int, tname string) voidptr {
	return C.luaL_checkudata(state.state, ud, tname.str)
}

pub fn lua_where(state Lua_State, lvl int) {
	C.luaL_where(state.state, lvl)
}

pub fn lua_error(state Lua_State, fmt string, other ...string) int {
	return C.luaL_error(state.state, fmt.str, &other.data)
}

pub fn lua_check_option(state Lua_State, arg int, def string, list []string) int {
	return C.luaL_checkoption(state.state, arg, def.str, &&char(list.data))
}

pub fn lua_file_result(state Lua_State, stat int, fname string) int {
	return C.luaL_fileresult(state.state, stat, fname.str)
}

pub fn lua_exec_result(state Lua_State, stat int) int {
	return C.luaL_execresult(state.state, stat)
}

pub fn lua_ref(state Lua_State, t int) int {
	return C.lua_ref(state.state, t)
}

pub fn lua_unref(state Lua_State, t int, ref int) {
	C.lua_unref(state.state, t, ref)
}

pub fn lua_load_file_x(state Lua_State, filename string, mode string) int {
	return C.luaL_loadfilex(state.state, filename.str, mode.str)
}

pub fn lua_load_string(state Lua_State, s string) int {
	return C.luaL_loadString(state.state, s.str)
}

pub fn lua_new_state() Lua_State {
	return Lua_State { C.luaL_newstate() }
}

pub fn lua_len(state Lua_State, idx int) int {
	return int(C.luaL_len(state.state, idx))
}

pub fn lua_add_gsub(b C.lua_Buffer, s string, p string, r string) {
	C.luaL_addgsub(b.buffer, s.str, p.str, r.str)
}

pub fn lua_gsub(state Lua_State, s string, p string, r string) string {
	unsafe { return C.lua_gsub(state.state, s.str, p.str, r.str).vstring() }
}

pub fn lua_set_funcs(state Lua_State, l Lua_Reg, nup int) {
	C.luaL_setfuncs(state.state, l.reg, nup)
}

pub fn lua_get_subtable(state Lua_State, idx int, fname string) int {
	return C.luaL_getsubtable(state.state, idx, fname.str)
}

pub fn lua_traceback(state Lua_State, l1 Lua_State, msg string, level int) {
	C.lua_traceback(state.state, l1.state, msg.str, level)
}

pub fn lua_requiref(state Lua_State, modname string, openf Lua_C_Function, glb int) {
	C.luaL_requiref(state.state, modname.str, openf.func, glb)
}

pub fn lua_buff_init(state Lua_State, b Lua_Buffer) {
	C.luaL_buffinit(state.state, b.buffer)
}

pub fn lua_prep_buff_size(b Lua_Buffer, sz usize) string {
	unsafe { return C.luaL_prepbuffsize(b.buffer, sz).vstring() }
}

pub fn lua_add_l_string(b Lua_Buffer, s string, i usize) {
	C.luaL_addlstring(b.buffer, s.str, i)
}

pub fn lua_add_string(b Lua_Buffer, s string) {
	C.luaL_addstring(b.buffer, s.str)
}

pub fn lua_add_value(b Lua_Buffer) {
	C.luaL_addvalue(b.buffer)
}

pub fn push_result(b Lua_Buffer) {
	C.luaL_pushresult(b.buffer)
}

pub fn lua_push_result_size(b Lua_Buffer, sz usize) {
	C.luaL_pushresultsize(b.buffer, sz)
}

pub fn lua_buff_init_size(state Lua_State, b Lua_Buffer, sz usize) {
	C.luaL_buffinitsize(state.state, b.buffer, sz)
}
