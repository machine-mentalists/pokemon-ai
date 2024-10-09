console.clear()

-- Name
for i=0x0, 0x7, 0x1 do
	print(string.format("%X", tonumber(memory.read_u8(0x2598+0xABC0+i,"System Bus"))))
end

-- Coordinates
x = string.format("%X", tonumber(memory.read_u8(0x260D+0xAD54, "System Bus")))
y = string.format("%X", tonumber(memory.read_u8(0x260E+0xAD54, "System Bus")))
print(x .. ", " .. y)
