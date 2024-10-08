local utils = {} --wegen dofile
function utils.translatePath(path)
	local separator = package.config:sub(1, 1)
	local pathTranslated = string.gsub(path, "\\", separator)
	return pathTranslated == nil and path or pathTranslated
end --wegen dofile
dofile (utils.translatePath("Memory.lua"))
local trainer = Memory.readdword(0x25B6)
--for i=0,2000,1 do print(Memory.readdword(i)) end
print(trainer)