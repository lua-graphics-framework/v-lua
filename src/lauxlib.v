module lua

fn C.luaL_checkVersion_(state &C.lua_State, ver C.lua_Number, sz usize)
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

fn C.luaL_buffinit(state &C.lua_State, b &C.lua_Buffer)
fn C.luaL_prepbuffsize(b &C.luaL_Buffer, sz usize) &char
fn C.luaL_addlstring(b &C.luaL_Buffer, s &char, i usize)
fn C.luaL_addstring(b &C.luaL_Buffer, s &char)
fn C.luaL_addvalue(b &C.luaL_Buffer)
fn C.luaL_pushresult(b &C.luaL_Buffer)
fn C.luaL_pushresultsize(b &C.luaL_Buffer, sz usize)
fn C.luaL_buffinitsize(state &lua_State, b &C.luaL_Buffer, sz usize)
