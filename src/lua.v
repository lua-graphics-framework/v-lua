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
fn C.lua_pushfstring()
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
fn C.lua_rawsetp(L &C.lua_State, idx int, voidptr(p))
fn C.lua_setmetatable(L &C.lua_State, objidx int) int
fn C.lua_setiuservalue(L &C.lua_State, idx int, n int) int

fn C.lua_callk(L &C.lua_State, nargs int, nresults int, ctx C.lua_LContext, k C.lua_CFunction)
fn C.lua_pcallk(L &C.lua_State, nargs int, nresults int, errfunc int, ctx C.lua_LContext, k C.lua_CFunction) int
fn C.lua_load(L &C.lua_State, reader C.lua_Reader, voidptr(dt), chunkname &char, mode &char) int
fn C.lua_dump(L &C.lua_State, writer C.lua_Writer, voidptr(data), strip int) int

fn C.lua_yieldk(L &C.lua_State, nresults int, ctx C.lua_KContext, k C.lua_KFunction) int
fn C.lua_resume(L &C.lua_State, from &C.lua_State, narg int, nres &int) int
fn C.lua_status(L &C.lua_State) int
fn C.lua_isyieldable(L &C.lua_State) int

fn C.lua_setwarnf(L &C.lua_State, f C.lua_WarnFunction, voidptr(ud))
fn C.lua_warning(L &C.lua_State, msg &char, tocont int)

fn C.lua_gc(L &C.lua_State, what int, ...int) int
fn C.lua_error(L &C.lua_State) int
fn C.lua_next(L &C.lua_State, idx int) int
fn C.lua_concat(L &C.lua_State, n int)
fn C.lua_len(L &C.lua_State, idx int)
fn C.lua_stringtonumber(L &C.lua_State, s &char) usize
fn C.lua_getallocf(L &C.lua_State, &voidptr(ud)) C.lua_Alloc
fn C.lua_setallocf(L &C.lua_State, f C.lua_Alloc, voidptr(ud))
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
