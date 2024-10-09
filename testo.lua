-- Source: https://github.com/mkdasher/PokemonBizhawkLua/blob/master/pkmgen3

local utils = {} --wegen dofile
function utils.translatePath(path)
	local separator = package.config:sub(1, 1)
	local pathTranslated = string.gsub(path, "\\", separator)
	return pathTranslated == nil and path or pathTranslated
end --wegen dofile
--dofile (utils.translatePath("Memory.lua"))
--local trainer = Memory.readbyte(0x2598)
local f = assert(loadfile(utils.translatePath("Memory.lua")))
--for i=0x0,0x60,0x1 do print(i, Memory.readbyte(Memory.readbyte(i+0x2598+0xABC0))) end
--for i=0x0,0x60,0x1 do print(i, string.format("%X", tonumber(Memory.readbyte(i+0x2598+0xABC0)))) end
for i=0x0, 0x5, 0x1 do
	print(string.format("%X", tonumber(memory.read_u8(0x2598+0xABC0+i,"System Bus"))))
end