module lua

fn C.lua_newstate(f C.lua_Alloc, voidptr(ud)) &C.lua_State
fn C.lua_close(L &C.lua_State)
fn C.lua_newthread(L &C.lua_State) &C.lua_State
fn C.lua_resetthread(L &C.lua_State) int
fn C.lua_atpanic(L &C.lua_State, panicf C.lua_CFunction) C.lua_CFunction
fn C.lua_version(L &C.lua_State) C.lua_Number

fn C.lua_absindex(L &C.lua_State, idx int) int
fn C.lua_gettop(L &C.lua_State) int
fn C.lua_settop(L &C.lua_State, idx int)
fn C.lua_pushvalue(L &C.lua_State, idx int)
fn C.lua_rotate(L &C.lua_State, idx int, n int)
fn C.lua_copy(L &C.lua_State, fromidx int, toidx int)
fn C.lua_checkstack(L &C.lua_State, n int) int
fn C.lua_xmove(from &C.lua_State, to &C.lua_State, n int)

fn C.lua_isnumber(L &C.lua_State, idx int) int
fn C.lua_isstring(L &C.lua_State, idx int) int
fn C.lua_iscfunction(L &C.lua_State, idx int) int
fn C.lua_isinteger(L &C.lua_State, idx int) int
fn C.lua_isuserdata(L &C.lua_State, idx int) int
fn C.lua_type(L &C.lua_State, idx int) int
fn C.lua_typename(L &C.lua_State, tp int) &char

fn C.lua_tonumberx(L &C.lua_State, idx int, isnum &int) C.lua_Number
fn C.lua_tointegerx(L &C.lua_State, idx int, isnum &int) C.lua_Integer
fn C.lua_toboolean(L &C.lua_State, idx int) int
fn C.lua_tolstring(L &C.lua_State, idx int, len &usize) &char
fn C.lua_rawlen(L &C.lua_State, idx int) C.lua_Unsigned
fn C.lua_tocfunction(L &C.lua_State, idx int) C.lua_CFunction
fn C.lua_touserdata(L &C.lua_State, idx int)
fn C.lua_tothread(L &C.lua_State, idx int) C.lua_State
fn C.lua_topointer(L &C.lua_State, idx int) voidptr

fn C.lua_arith(L &C.lua_State, op int)
fn C.lua_rawequal(L &C.lua_State, idx1 int, idx2 int)
fn C.lua_compare(L &C.lua_State, idx1 int, idx2 int, op int)

fn C.lua_pushnil(L &C.lua_State)
fn C.lua_pushnumber(L &C.lua_State, n C.lua_Number)
fn C.lua_pushinteger(L &C.lua_State, n C.lua_Integer)
fn C.lua_pushlstring(L &C.lua_State, s &char, len usize) &char
fn C.lua_pushstring(L &C.lua_State, s &char) &char
fn C.lua_pushvfstring(L &C.lua_State, fmt &char, argp C.va_list)
fn C.lua_pushfstring(L &C.lua_State, fmt &char, other...&char)
fn C.lua_pushcclosure(L &C.lua_State, @fn C.lua_CFunction, n int)
fn C.lua_pushboolean(L &C.lua_State, b int)
fn C.lua_pushlightuserdata(L &C.lua_State, voidptr(p))
fn C.lua_pushthread(L &C.lua_State)

fn C.lua_getglobal(L &C.lua_State, name &char) int
fn C.lua_gettable(L &C.lua_State, idx int) int
fn C.lua_getfield(L &C.lua_State, idx int, k &char) int
fn C.lua_geti(L &C.lua_State, idx int, n C.lua_Integer) int
fn C.lua_rawget(L &C.lua_State, idx int) int
fn C.lua_rawgeti(L &C.lua_State, idx int, n C.lua_Integer) int
fn C.lua_rawgetp(L &C.lua_State, idx int, p &char) int
fn C.lua_createtable(L &C.lua_State, narr int, nrec int)
fn C.lua_newuserdatauv(L &C.lua_State, sz usize, nuvalue int) voidptr
fn C.lua_getmetatable(L &C.lua_State, objidx int) int
fn C.lua_getiuservalue(L &C.lua_State, idx int, n int) int

fn C.lua_setglobal(L &C.lua_State, name &char)
fn C.lua_settable(L &C.lua_State, idx int)
fn C.lua_setfield(L &C.lua_State, idx int, k &char)
fn C.lua_seti(L &C.lua_State, idx int, n C.lua_Integer)
fn C.lua_rawset(L &C.lua_State, idx int)
fn C.lua_rawseti(L &C.lua_State, idx int, n C.lua_Integer)
fn C.lua_rawsetp(L &C.lua_State, idx int, p voidptr)
fn C.lua_setmetatable(L &C.lua_State, objidx int) int
fn C.lua_setiuservalue(L &C.lua_State, idx int, n int) int

fn C.lua_callk(L &C.lua_State, nargs int, nresults int, ctx C.lua_KContext, k C.lua_CFunction)
fn C.lua_pcallk(L &C.lua_State, nargs int, nresults int, errfunc int, ctx C.lua_KContext, k C.lua_CFunction) int
fn C.lua_load(L &C.lua_State, reader C.lua_Reader, dt voidptr, chunkname &char, mode &char) int
fn C.lua_dump(L &C.lua_State, writer C.lua_Writer, data voidptr, strip int) int

fn C.lua_yieldk(L &C.lua_State, nresults int, ctx C.lua_KContext, k C.lua_KFunction) int
fn C.lua_resume(L &C.lua_State, from &C.lua_State, narg int, nres &int) int
fn C.lua_status(L &C.lua_State) int
fn C.lua_isyieldable(L &C.lua_State) int

fn C.lua_setwarnf(L &C.lua_State, f C.lua_WarnFunction, ud voidptr)
fn C.lua_warning(L &C.lua_State, msg &char, tocont int)

fn C.lua_gc(L &C.lua_State, what int, ...int) int
fn C.lua_error(L &C.lua_State) int
fn C.lua_next(L &C.lua_State, idx int) int
fn C.lua_concat(L &C.lua_State, n int)
fn C.lua_len(L &C.lua_State, idx int)
fn C.lua_stringtonumber(L &C.lua_State, s &char) usize
fn C.lua_getallocf(L &C.lua_State, ud &voidptr) C.lua_Alloc
fn C.lua_setallocf(L &C.lua_State, f C.lua_Alloc, ud voidptr)
fn C.lua_toclose(L &C.lua_State, idx int)
fn C.lua_closeslot(L &C.lua_State, idx int)

fn C.lua_getstack(L &C.lua_State, level int, ar &C.lua_Debug) int
fn C.lua_getinfo(L &C.lua_State, what &char, ar &C.lua_Debug) int
fn C.lua_getlocal(L &C.lua_State, ar &C.lua_Debug, n int) &char
fn C.lua_setlocal(L &C.lua_State, ar &C.lua_Debug, n int) &char
fn C.lua_getupvalue(L &C.lua_State, funcindex int, n int) &char
fn C.lua_setupvalue(L &C.lua_State, funcindex int, n int) &char
fn C.lua_upvalueid(L &C.lua_State, fidx int, n int) voidptr
fn C.lua_upvaluejoin(L &C.lua_State, fidx1 int, n1 int, fidx2 int, n2 int)

fn C.lua_sethook(L &C.lua_State, func C.lua_Hook, mask int, count int)
fn C.lua_gethook(L &C.lua_State) C.lua_Hook
fn C.lua_gethookmask(L &C.lua_State) int
fn C.lua_gethookcount(L &C.lua_State) int
fn C.lua_setcstacklimit(L &C.lua_State, limit u32) int

pub fn lua_close(state Lua_State) {
	C.lua_close(state.state)
}

pub fn lua_new_thread(state Lua_State) Lua_State {
	return Lua_State { C.lua_newthread(state.state) }
}

pub fn lua_reset_thread(state Lua_State) int {
	return C.lua_resetthread(state.state)
}

pub fn lua_at_panic(state Lua_State, panicf Lua_C_Function) Lua_C_Function {
	func := C.lua_atpanic(state.state, panicf.func)
	return Lua_C_Function { &func }
}

pub fn lua_version(state Lua_State) f64 {
	return f64(C.lua_version(state.state))
}

pub fn lua_abs_index(state Lua_State, idx int) int {
	return C.lua_absindex(state.state, idx)
}

pub fn lua_get_top(state Lua_State) int {
	return C.lua_gettop(state.state)
}

pub fn lua_set_top(state Lua_State, idx int) {
	C.lua_settop(state.state, idx)
}

pub fn lua_push_value(state Lua_State, idx int) {
	C.lua_pushvalue(state.state, idx)
}

pub fn lua_rotate(state Lua_State, idx int, n int) {
	C.lua_rotate(state.state, idx, n)
}

pub fn lua_copy(state Lua_State, from_idx int, to_idx int) {
	C.lua_copy(state.state, from_idx, to_idx)
}

pub fn lua_checkstack(state Lua_State, n int) int {
	return C.lua_checkstack(state.state, n)
}

pub fn lua_xmove(state Lua_State, to Lua_State, n int) {
	C.lua_xmove(state.state, to.state, n)
}

pub fn lua_isnumber(state Lua_State, idx int) int {
	return C.lua_isnumber(state.state, idx)
}

pub fn lua_isstring(state Lua_State, idx int) int {
	return C.lua_isstring(state.state, idx)
}

pub fn lua_iscfunction(state Lua_State, idx int) int {
	return C.lua_iscfunction(state.state, idx)
}

pub fn lua_isuserdata(state Lua_State, idx int) int {
	return C.lua_isuserdata(state.state, idx)
}

pub fn lua_type(state Lua_State, idx int) int {
	return C.lua_type(state.state, idx)
}

pub fn lua_typename(state Lua_State, tp int) string {
	unsafe { return C.lua_typename(state.state, tp).vstring() }
}

pub fn lua_to_number_x(state Lua_State, idx int, isnum &int) f64 {
	return f64(C.lua_tonumberx(state.state, idx, isnum))
}

pub fn lua_to_integer_x(state Lua_State, idx int, isnum &int) int {
	return int(C.lua_tointegerx(state.state, idx, isnum))
}

pub fn lua_to_boolean(state Lua_State, idx int) int {
	return C.lua_toboolean(state.state, idx)
}

pub fn lua_raw_len(state Lua_State, idx int) u32 {
	return u32(C.lua_rawlen(state.state, idx))
}

pub fn lua_to_c_function(state Lua_State, idx int) Lua_C_Function {
	func := C.lua_tocfunction(state.state, idx)
	return Lua_C_Function { &func }
}

pub fn lua_to_userdata(state Lua_State, idx int) {
	C.lua_touserdata(state.state, idx)
}

pub fn lua_to_thread(state Lua_State, idx int) Lua_State {
	s := C.lua_tothread(state.state, idx)
	return Lua_State { &s }
}

pub fn lua_to_pointer(state Lua_State, idx int) voidptr {
	return C.lua_topointer(state.state, idx)
}

pub fn lua_arith(state Lua_State, op int) {
	C.lua_arith(state.state, op)
}

pub fn lua_rawequal(state Lua_State, idx1 int, idx2 int) {
	C.lua_rawequal(state.state, idx1, idx2)
}

pub fn lua_compare(state Lua_State, idx1 int, idx2 int, op int) {
	C.lua_compare(state.state, idx1, idx2, op)
}

pub fn lua_push_nil(state Lua_State) {
	C.lua_pushnil(state.state)
}

pub fn lua_push_number(state Lua_State, n f64) {
	C.lua_pushnumber(state.state, C.lua_Number(n))
}

pub fn lua_push_integer(state Lua_State, n int) {
	C.lua_pushinteger(state.state, C.lua_Integer(n))
}

pub fn lua_push_l_string(state Lua_State, s string, len usize) string {
	unsafe { return C.lua_pushlstring(state.state, s.str, len).vstring() }
}

pub fn lua_push_string(state Lua_State, s string) string {
	unsafe { return C.lua_pushstring(state.state, s.str).vstring() }
}

pub fn lua_push_vf_string(state Lua_State, fmt string, argp Valist) {
	C.lua_pushvfstring(state.state, fmt.str, argp.list)
}

pub fn lua_push_f_string(state Lua_State, fmt string, other...string) {
	C.lua_pushfstring(state.state, fmt.str, &other.data)
}

pub fn lua_push_c_closure(state Lua_State, @fn Lua_C_Function, n int) {
	C.lua_pushcclosure(state.state, @fn.func, n)	
}

pub fn lua_push_boolean(state Lua_State, b int) {
	C.lua_pushboolean(state.state, b)
}

pub fn lua_push_light_userdata(state Lua_State, p voidptr) {
	C.lua_pushlightuserdata(state.state, p)
}

pub fn lua_push_thread(state Lua_State) {
	C.lua_pushthread(state.state)
}

pub fn lua_get_global(state Lua_State, name string) int {
	return C.lua_getglobal(state.state, name.str)
}

pub fn lua_get_table(state Lua_State, idx int) int {
	return C.lua_gettable(state.state, idx)
}

pub fn lua_get_field(state Lua_State, idx int, k string) int {
	return C.lua_getfield(state.state, idx, k.str)
}

pub fn lua_get_i(state Lua_State, idx int, n int) int {
	return C.lua_geti(state.state, idx, C.lua_Integer(n))
}

pub fn lua_rawget(state Lua_State, idx int) int {
	return C.lua_rawget(state.state, idx)
}

pub fn lua_rawget_i(state Lua_State, idx int, n int) int {
	return C.lua_rawgeti(state.state, idx, C.lua_Integer(n))
}

pub fn lua_rawget_p(state Lua_State, idx int, p string) int {
	return C.lua_rawgetp(state.state, idx, p.str)
}

pub fn lua_create_table(state Lua_State, narr int, nrec int) {
	C.lua_createtable(state.state, narr, nrec)
}

pub fn lua_new_userdata_uv(state Lua_State, sz usize, nuvalue int) voidptr {
	return C.lua_newuserdatauv(state.state, sz, nuvalue)
}

pub fn lua_get_metatable(state Lua_State, objidx int) int {
	return C.lua_getmetatable(state.state, objidx)
}

pub fn lua_get_i_user_value(state Lua_State, idx int, n int) int {
	return C.lua_getiuservalue(state.state, idx, n)
}

pub fn lua_set_global(state Lua_State, name string) {
	C.lua_setglobal(state.state, name.str)
}

pub fn lua_set_table(state Lua_State, idx int) {
	C.lua_settable(state.state, idx)
}

pub fn lua_set_field(state Lua_State, idx int, k string) {
	C.lua_setfield(state.state, idx, k.str)
}

pub fn lua_set_i(state Lua_State, idx int, n int) {
	C.lua_seti(state.state, idx, C.lua_Integer(n))
}

pub fn lua_rawset(state Lua_State, idx int) {
	C.lua_rawset(state.state, idx)
}

pub fn lua_rawset_i(state Lua_State, idx int, n int) {
	C.lua_rawseti(state.state, idx, C.lua_Integer(n))
}

pub fn lua_rawset_p(state Lua_State, idx int, p voidptr) {
	C.lua_rawsetp(state.state, idx, p)
}

pub fn lua_set_metatable(state Lua_State, objidx int) int {
	return C.lua_setmetatable(state.state, objidx)
}

pub fn lua_set_i_uservalue(state Lua_State, idx int, n int) int {
	return C.lua_setiuservalue(state.state, idx, n)
}

pub fn lua_callk(state Lua_State, nargs int, nresults int, ctx Lua_KContext, k Lua_C_Function) {
	C.lua_callk(state.state, nargs, nresults, ctx.ctx, k.func)
}

pub fn lua_pcallk(state Lua_State, nargs int, nresults int, errfunc int, ctx Lua_KContext, k Lua_C_Function) int {
	return C.lua_pcallk(state.state, nargs, nresults, errfunc, ctx.ctx, k.func)
}

pub fn lua_load(state Lua_State, reader Lua_Reader, dt voidptr, chunkname string, mode string) int {
	return C.lua_load(state.state, reader.r, dt, chunkname.str, mode.str)
}

pub fn lua_dump(state Lua_State, writer Lua_Writer, data voidptr, strip int) int {
	return C.lua_dump(state.state, writer.w, data, strip)
}

pub fn lua_yield_k(state Lua_State, nresults int, ctx Lua_KContext, k Lua_K_Function) int {
	return C.lua_yieldk(state.state, nresults, ctx.ctx, k.func)
}

pub fn lua_resume(state Lua_State, from Lua_State, narg int, nres &int) int {
	return C.lua_resume(state.state, from.state, narg, nres)
}

pub fn lua_status(state Lua_State) int {
	return C.lua_status(state.state)
}

pub fn lua_is_yieldable(state Lua_State) int {
	return C.lua_isyieldable(state.state)
}

pub fn lua_set_warn_f(state Lua_State, f Lua_WarnFunction, ud voidptr) {
	C.lua_setwarnf(state.state, f.func, ud)
}

pub fn lua_warning(state Lua_State, msg string, tocont int) {
	C.lua_warning(state.state, msg.str, tocont)
}

pub fn lua_gc(state Lua_State, what int, other...int) int {
	return C.lua_gc(state.state, what, &other.data)
}

pub fn lua_error(state Lua_State) int {
	return C.lua_error(state.state)
}

pub fn lua_next(state Lua_State, idx int) int {
	return C.lua_next(state.state, idx)
}

pub fn lua_concat(state Lua_State, n int) {
	C.lua_concat(state.state, n)
}

pub fn lua_len(state Lua_State, idx int) {
	C.lua_len(state.state, idx)
}

pub fn lua_string_to_number(state Lua_State, s string) usize {
	return C.lua_stringtonumber(state.state, s.str)
}

pub fn lua_get_alloc_f(state Lua_State, ud &voidptr) Lua_Alloc {
	alloc := C.lua_getallocf(state.state, ud)
	return Lua_Alloc { &alloc }
}

pub fn lua_set_alloc_f(state Lua_State, f Lua_Alloc, ud voidptr) {
	C.lua_setallocf(state.state, f.alloc, ud)
}

pub fn lua_toclose(state Lua_State, idx int) {
	C.lua_toclose(state.state, idx)
}

pub fn lua_close_slot(state Lua_State, idx int) {
	C.lua_closeslot(state.state, idx)
}

// TODO: Lua_Debug type

pub fn lua_get_stack(state Lua_State, level int, ar Lua_Debug) int {
	return C.lua_getstack(state.state, level ar.debug)
}

pub fn lua_get_info(state Lua_State, what string, ar Lua_Debug) int {
	return C.lua_getinfo(state.state, what.str, ar.debug)
}

pub fn lua_get_local(state Lua_State, ar Lua_Debug, n int) string {
	unsafe { return C.lua_getlocal(state.state, ar.debug, n).vstring() }
}

pub fn lua_set_local(state Lua_State, ar Lua_Debug, n int) string {
	unsafe { return C.lua_setlocal(state.state, ar.debug, n).vstring() }
}

pub fn lua_get_up_value(state Lua_State, func_index int, n int) string {
	unsafe { return C.lua_getupvalue(state.state, func_index, n).vstring() }
}

pub fn lua_set_up_value(state Lua_State, func_index int, n int) string {
	unsafe { return C.lua_setupvalue(state.state, func_index, n).vstring() }
}

pub fn lua_up_value_id(state Lua_State, fidx int, n int) voidptr {
	return C.lua_upvalueid(state.state, fidx, n)
}

pub fn lua_up_value_join(state Lua_State, fidx1 int, n1 int, fidx2 int, n2 int) {
	C.lua_upvaluejoin(state.state, fidx1, n1, fidx2, n2)
}

// TODO: Lua_Hook type

pub fn lua_set_hook(state Lua_State, func C.Lua_Hook, mask int, count int) {
	C.lua_sethook(state.state, func.hook, mask, count)
}

pub fn lua_get_hook(state Lua_State) Lua_Hook {
	return C.lua_gethook(state.state)
}

pub fn lua_get_hook_mask(state Lua_State) int {
	return C.lua_gethookmask(state.state)
}

pub fn lua_get_hook_count(state Lua_State) int {
	return C.lua_gethookcount(state.state)
}

pub fn lua_set_c_stack_limit(state Lua_State, limit u32) int {
	return C.lua_setcstacklimit(state.state, limit)
}
