encoding = {
	[0x80]='A', [0x81]='B', [0x82]='C', [0x83]='D', [0x84]='E',
	[0x85]='F', [0x86]='G', [0x87]='H', [0x88]='I', [0x89]='J',
	[0x8A]='K', [0x8B]='L', [0x8C]='M', [0x8D]='N', [0x8E]='O',
	[0x8F]='P', [0x90]='Q', [0x91]='R', [0x92]='S', [0x93]='T',
	[0x94]='U', [0x95]='V', [0x96]='W', [0x97]='X', [0x98]='Y',
	[0x99]='Z', [0x9A]='(', [0x9B]=')', [0x9C]=':', [0x9D]=';',
	[0x9E]='[', [0x9F]=']', [0xA0]='a', [0xA1]='b', [0xA2]='c',
	[0xA3]='d', [0xA4]='e', [0xA5]='f', [0xA6]='g', [0xA7]='h',
	[0xA8]='i', [0xA9]='j', [0xAA]='k', [0xAB]='l', [0xAC]='m',
	[0xAD]='n', [0xAE]='o', [0xAF]='p', [0xB0]='q', [0xB1]='r',
	[0xB2]='s', [0xB3]='t', [0xB4]='u', [0xB5]='v', [0xB6]='w',
	[0xB7]='x', [0xB8]='y', [0xB9]='z',
}

console.clear()

-- Player Name
for i=0x0, 0x8, 0x1 do
	byte = memory.read_u8(0x2598+0xABC0+i,"System Bus")
	print(encoding[byte])
end

-- Coordinates
x = string.format("%X", tonumber(memory.read_u8(0x260D+0xAD54, "System Bus")))
y = string.format("%X", tonumber(memory.read_u8(0x260E+0xAD54, "System Bus")))
print(x .. ", " .. y)

-- Walk in random direction
input = {A=false, B=false, L=false, Power=false, R=false, Select=false, Start=false, Up=false, Right=false, Down=false, Left=false}

dice = math.random(4)

if dice == 1 then
	input.Right = true
elseif dice == 2 then
	input.Left = true
elseif dice == 3 then
	input.Up = true
elseif dice == 4 then
	input.Down = true
end


-- Hold down key for 10 frames to walk in direction
for i=0,10,1 do 
	joypad.set(input)
	emu.frameadvance()
end

