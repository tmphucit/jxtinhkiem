
time_gia_nhap = {31,28,31,30,31,30,31,31,30,31,30,31}

mang_time_dau_gia = {
{ -- Thang 1
	{0},  -- Dai Ly
	{0}, -- Tuong Duong
	{0}, -- Phuong Tuong
},
{ -- Thang 2
	{0},  -- Dai Ly
	{0}, -- Tuong Duong
	{0}, -- Phuong Tuong
},
{ -- Thang 3
	{0},  -- Dai Ly
	{0}, -- Tuong Duong
	{0}, -- Phuong Tuong
},
{ -- Thang 4
	{26,17,"Ph­îng T­êng",2},
},
{ -- Thang 5
	{19,17,"Ph­îng T­êng",2},
	
},
{ -- Thang 6
	{0},  -- Dai Ly
	{0}, -- Tuong Duong
	{0}, -- Phuong Tuong
},
{ -- Thang 7
	{0},  -- Dai Ly
	{0}, -- Tuong Duong
	{0}, -- Phuong Tuong
},
{ -- Thang 8
	{0},  -- Dai Ly
	{0}, -- Tuong Duong
	{0}, -- Phuong Tuong
},
{ -- Thang 9
	{0},  -- Dai Ly
	{0}, -- Tuong Duong
	{0}, -- Phuong Tuong
},
{ -- Thang 10
	{18,11,"§¹i Lý ",1},
	{20,17,"Ph­îng T­êng",2},
	{22,15,"T­¬ng D­¬ng",4},
	{25,11,"§¹i Lý ",1},
	{27,17,"Ph­îng T­êng",2},
	{29,15,"T­¬ng D­¬ng",4},
},
{ -- Thang 11
	{26,17,"Ph­îng T­êng",2},
},
{ -- Thang 12
	{3,17,"Ph­îng T­êng",2},
	{10,17,"Ph­îng T­êng",2},
	{17,17,"Ph­îng T­êng",2},
	{24,17,"Ph­îng T­êng",2},
	{31,17,"Ph­îng T­êng",2},
},
}

mang_time_ctc = {
{ -- Thang 1
	{0},  -- Dai Ly
	{0}, -- Tuong Duong
	{0}, -- Phuong Tuong
},
{ -- Thang 2
	{0},  -- Dai Ly
	{0}, -- Tuong Duong
	{0}, -- Phuong Tuong
},
{ -- Thang 3
	{0},  -- Dai Ly
	{0}, -- Tuong Duong
	{0}, -- Phuong Tuong
},
{ -- Thang 4
	{27,17,"Ph­îng T­êng",2},
},
{ -- Thang 5
	{20,17,"Ph­îng T­êng",2},
		{26,17,"Ph­îng T­êng",2},
},
{ -- Thang 6
	{0},  -- Dai Ly
	{0}, -- Tuong Duong
	{0}, -- Phuong Tuong
},
{ -- Thang 7
	{0},  -- Dai Ly
	{0}, -- Tuong Duong
	{0}, -- Phuong Tuong
},
{ -- Thang 8
	{0},  -- Dai Ly
	{0}, -- Tuong Duong
	{0}, -- Phuong Tuong
},
{ -- Thang 9
	{0},  -- Dai Ly
	{0}, -- Tuong Duong
	{0}, -- Phuong Tuong
},
{ -- Thang 10
	{19,11,"§¹i Lý ",1},
	{21,17,"Ph­îng T­êng",2},
	{23,15,"T­¬ng D­¬ng",4},
	{26,11,"§¹i Lý ",1},
	{28,17,"Ph­îng T­êng",2},
	{30,15,"T­¬ng D­¬ng",4},
},
{ -- Thang 11
	{27,17,"Ph­îng T­êng",2},
},
{ -- Thang 12
	{4,17,"Ph­îng T­êng",2},
	{11,17,"Ph­îng T­êng",2},
	{18,17,"Ph­îng T­êng",2},
	{25,17,"Ph­îng T­êng",2},
},
}


function timelebao()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
for i=1,getn(time_dau_gia[thang]) do
	if ngay - time_dau_gia[thang][i] == 2 then
		return 1
	end
end
return 0
end

function vitrictc()
idmap,tenmap,vitri = check_vitri_ctc()

return vitri
end



function check_vitri_ctc()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
for i =1,getn(mang_time_ctc[thang]) do
	if ngay == mang_time_ctc[thang][i][1] then
		return mang_time_ctc[thang][i][2],mang_time_ctc[thang][i][3],mang_time_ctc[thang][i][4]
	end
end
return 0,"",0
end


function check_vitri_dau_gia()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
for i =1,getn(mang_time_dau_gia[thang]) do
	if ngay == mang_time_dau_gia[thang][i][1] then
		return mang_time_dau_gia[thang][i][2],mang_time_dau_gia[thang][i][3],mang_time_dau_gia[thang][i][4]
	end
end
return 0,"",0
end


function checktimeCTC()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
for i =1,getn(mang_time_ctc[thang]) do
	if ngay == mang_time_ctc[thang][i][1] then
		return 1
	end
end
return 0
end


