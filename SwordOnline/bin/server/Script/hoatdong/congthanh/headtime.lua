time_dau_gia = {
{0,7,14,21,28,35},
{4,11,18,25,32},
{4,11,18,25,32},
{1,8,15,22,29,36},
{6,13,20,27,34},
{3,10,17,24,31,38},
{1,8,15,22,29,36},
{5,12,19,26,33},
{2,9,16,23,30,37},
{0,7,14,21,28,35},
{4,11,18,25,32},
{2,9,16,23,30,37},
} 

time_gia_nhap = {31,28,31,30,31,30,31,31,30,31,30,31}
mang_map = {
{1,"Thanh Do",18},
{2,"Phuong Tuong",17},
{3,"Tuong Duong",15},
{4,"Bien Kinh",9}
}

-- 2017
mang_time_dau_gia = {
{6,13,20,27},
{7,9,16,23},
{2,9,16,23,30},
{7,15,21,28},
{1,8,16,22,29},
{5,12,19,26},
{3,10,17,24,31},
{7,14,21,28},
{4,11,18,25},
{2,9,16,23,30},
{6,13,20,27},
{4,11,18,25},
}
mang_time_ctc = {
{7,14,21,28},
{10,17,24,},
{3,10,17,24,31},
{1,8,16,22,29},
{2,9,16,23,30},
{6,13,20,27},
{4,11,18,25},
{1,8,15,22,29},
{5,12,19,26},
{3,10,17,24,31},
{7,14,21,28},
{5,12,19,26},
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
return 1
end
function vitritt()
return 1
end

function checkNameMAP()
return "T­¬ng D­¬ng, Ph­îng T­êng, Ph­îng T­êng"
end



function checktimeCTC()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
for i =1,getn(mang_time_ctc[thang]) do
	if ngay == mang_time_ctc[thang][i] then
		return 1
	end
end
return 0
end





-- Khong Su Dung

function checkNameMAP2()
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

function vitritt1()
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


function vitrictc1()
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
