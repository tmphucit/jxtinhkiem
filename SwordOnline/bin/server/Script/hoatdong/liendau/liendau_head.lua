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

timeld1 = {1100,1115,1130,1145,1900,1915,1930,1945}
timeld2 = {1100,1115,1130,1145,1900,1915,1930,1945}

ngaybatdau = 8
ngayketthuc = 28
sotranmax = 48

mangtime2 = {
{1,6,7,8,13,14,15,20,21,22,27,28,29},
{3,4,5,10,11,12,17,18,19,24,25,26},
{3,4,5,10,11,12,17,18,19,24,25,26},
{1,2,7,8,9,14,15,16,21,22,23,28,29,30},
{15,16,17,22,23,24,29,30,31},
{2,3,4,9,10,11,16,17,18,23,24,25,30},
{3,4,5,10,11,12,17,18,19,24,25,26,31},
{1,2,7,8,9,14,15,16,21,22,23,28,29,30},
{4,5,6,11,12,13,18,19,20,25,26,27},
{1,6,7,8,13,14,15,20,21,22,27,28,29},
{3,4,5,10,11,12,17,18,19,24,25,26},
{1,2,3,8,9,10,15,16,17,22,23,24,29,30,31},
}

danhhieuliendau = {
{"H¹ng 1",1,1,217,459,8000},
{"H¹ng 2",2,2,218,453,6000},
{"H¹ng 3",3,3,219,457,5000},
{"H¹ng 4",4,4,220,458,4000},
{"H¹ng 5 §Õn 8",5,8,0,0,3500},
{"H¹ng 9 §Õn 16",9,16,0,0,3000},
{"H¹ng 17 §Õn 32",17,32,0,0,2500},
{"H¹ng 33 §Õn 64",33,64,0,0,2000},
--{"H¹ng 65 §Õn 128",65,128,0,0,1500},
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
