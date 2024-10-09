for i=0x0, 0x5, 0x1 do
	print(string.format("%X", tonumber(memory.read_u8(0x2598+0xABC0+i,"System Bus"))))
end