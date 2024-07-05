TOADO = {
{235,227},
{218,214},
{235,222},
{175,208},
{163,214},
{158,217},
{191,205},
{191,200},
{191,211},
{191,216},
{191,222},
{191,227},
{191,233},
{196,236},
{197,230},
{197,197},
{197,203},
{197,208},
{197,213},
{197,219},
{197,225},
{202,200},
{202,205},
{202,194},
{202,211},
{202,217},
{202,222},
{202,227},
{202,233},
{202,238},
{208,192},
{208,197},
{208,202},
{208,208},
{207,220},
{208,224},
{208,230},
{207,235},
{207,241},
{218,203},
{218,208},
{218,219},
{218,230},
{218,235},
{225,211},
{224,222},
{223,227},
{229,213},
{229,230},
{235,206},
{235,213},
}

timexh = {
{6,13,20,27},
{3,10,17,24},
{3,10,17,24,31},
{7,14,21,28},
{5,12,19,26},
{2,9,16,23,30},
{7,14,21,28},
{4,11,18,25},
{1,8,15,22,29},
{6,13,20,27},
{3,10,17,24},
{1,8,15,22,29}
}

timeld1 = {1800,1815,1830,1845}
timeld2 = {1800,1815,1830,1845,2100,2115,2130,2145}

ngaybatdau = 8
ngayketthuc = 14
sotranmax = 48

mangtime2 = {
{3,4,5,10,11,12,17,18,19,24,25,26,31},
{1,2,7,8,9,14,15,16,21,22,23,28},
{1,2,3,8,9,10,15,16,17,22,23,24,29,30,31},
{5,6,7,12,13,14,19,20,21,26,27,28},
{3,4,5,10,11,12,17,18,19,24,25,26,31},
{1,6,7,8,13,14,15,20,21,22,27,28,29},
{4,5,6,11,12,13,18,19,20,25,26,27},
{1,2,3,8,9,10,15,16,17,22,23,24,29,30,31},
{5,6,7,12,13,14,19,20,21,26,27,28},
{3,4,5,10,11,12,17,18,19,24,25,26,31},
{1,2,7,8,9,14,15,16,21,22,23,28,29,30},
{5,6,7,12,13,14,19,20,21,26,27,28}
}

danhhieuliendau = {
{"H雉g 1",1,1,217,459,8000},
{"H雉g 2",2,2,218,453,6000},
{"H雉g 3",3,3,219,457,5000},
{"H雉g 4",4,4,220,458,4000},
{"H雉g 5 校n 8",5,8,0,0,3500},
{"H雉g 9 校n 16",9,16,0,0,3000},
{"H雉g 17 校n 32",17,32,0,0,2500},
{"H雉g 33 校n 64",33,64,0,0,2000},
{"H雉g 65 校n 128",65,128,0,0,1500},
{"H雉g 129 校n 256",129,256,0,0,1000},
{"H雉g 257 校n 512",257,512,0,0,500},
}

function check_vitri_danhhieu(num)
for i=1,getn(danhhieuliendau) do
	if num >= danhhieuliendau[i][2] and num <= danhhieuliendau[i][3] then
		return i
	end
end
return 0
end
function checktype()
ngay =  tonumber(date("%d"))
thang = tonumber(date("%m"))
for i=1,getn(mangtime2[thang]) do
	if ngay == mangtime2[thang][i] then
		return 1
	end
end
return 0
end

function check_time_ld(num)
h,m,s = GetTimeNew()
time = h*100+m
mang = {}
if checktype() == 1 then
mang = timeld2
else
mang = timeld1
end
	for i=1,getn(mang) do
		if time == mang[i]+num then
			return 1
		end
	end
return 0
end

function check_time_xh()
ngay = tonumber(date("%d"))
h,m,s = GetTimeNew()
time = h*100+m
time2 = 0
if checktype() == 1 then
	time2 = timeld2[getn(timeld2)] + 13
else
	time2 = timeld1[getn(timeld1)] + 13
end
if ngay == ngayketthuc and time == time2 then
	return 1
else
	return 0
end
end

function check_khoang_time_ld(num1,num2)
mang = {}
if checktype() == 1 then
mang = timeld2
else
mang = timeld1
end

h,m,s = GetTimeNew()
time = h*100+m
for i=1,getn(mang) do
	if time >= mang[i] + num1 and time < mang[i] + num2 then
		return 1
	end
end
return 0
end
