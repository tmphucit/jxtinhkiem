time_dau_gia = {
{4,11,18,25,32},
{1,8,15,22,29,36},
{1,8,15,22,29,36},
{5,12,19,26,33},
{3,10,17,24,31},
{7,14,21,28,35},
{5,12,19,26,33},
{2,9,16,23,30,37},
{6,13,20,27,34},
{4,11,18,25,32},
{1,8,15,22,29,36},
{6,13,20,27,34}
} 


time_gia_nhap = {31,28,31,30,31,30,31,31,30,31,30,31}
mang_map = {
{1,"Thµnh §« ",18},
{2,"Ph­îng T­êng ",17},
{3,"BiÖn Kinh ",9},
{4,"T­¬ng D­¬ng ",15}
}

function vitrictc()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
for i=1,getn(time_dau_gia[thang]) do
	for j=1,getn(mang_map) do
	if ngay - time_dau_gia[thang][i] + 3  == mang_map[j][1] then
		return mang_map[j][1]
	end
	end
end
return 0
end

function vitritt()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
for i=1,getn(time_dau_gia[thang]) do
	for j=1,getn(mang_map) do
	if ngay - time_dau_gia[thang][i] + 4  == mang_map[j][1] then
		return mang_map[j][1]
	end
	end
end
return 0
end

function checkIDMAP()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
for i=1,getn(time_dau_gia[thang]) do
	for j=1,getn(mang_map) do
	if ngay - time_dau_gia[thang][i] + 4  == mang_map[j][1] then
		return mang_map[j][3]
	end
	end
end
return 0
end

function checkIDMAPCTC()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
for i=1,getn(time_dau_gia[thang]) do
	for j=1,getn(mang_map) do
	if ngay - time_dau_gia[thang][i] + 3  == mang_map[j][1] then
		return mang_map[j][3]
	end
	end
end
return 0
end

function checkNameMAP()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
for i=1,getn(time_dau_gia[thang]) do
	for j=1,getn(mang_map) do
	if ngay - time_dau_gia[thang][i] + 3  == mang_map[j][1] then
		return mang_map[j][2]
	end
	end
end
return 0
end

function checktimeCTC()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
for i=1,getn(time_dau_gia[thang]) do
	for j=1,getn(mang_map) do
	if ngay - time_dau_gia[thang][i] +3  == mang_map[j][1] then
		return mang_map[j][3]
	end
	end
end
return 0
end