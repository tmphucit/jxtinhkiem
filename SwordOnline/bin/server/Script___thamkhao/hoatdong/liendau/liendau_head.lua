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

timeld1 = {1800,1815,1830,1845}
timeld2 = {1800,1815,1830,1845, 2100,2115,2130,2145}

ngaybatdau = 6
ngayketthuc = 28
sotranmax = 48

mangtime2 = {
{8,9,14,15,16,21,22,23,28,29,30},
{11,12,13,18,19,20,25,26,27},
{11,12,13,18,19,20,25,26,27},
{1,2,7,8,9,14,15,16,21,22,23,28,29,30},
{3,4,5,10,11,12,17,18,19,24,25,26},
{4,5,6,11,12,13,18,19,20,25,26,27},
{2,3,4,9,10,11,16,17,18,23,24,25,30,31},
{1,6,7,8,13,14,15,20,21,22,27,28,29},
{3,4,5,10,11,12,17,18,19,24,25,26},
{8,9,10,15,16,17,22,23,24},
{12,13,14,19,20,21,26,27,28,},
{10,11,12,17,18,19,24,25,26},
}

danhhieuliendau = {
{"H¹ng 1",1,1,217,459,5000},
{"H¹ng 2",2,2,218,453,4000},
{"H¹ng 3",3,3,219,457,4000},
{"H¹ng 4",4,4,220,458,3000},
{"H¹ng 5",5,5,0,0,3000},
{"H¹ng 6 ®Õn 10",6,10,0,0,2000},
{"H¹ng 11 ®Õn 20",11,20,0,0,1500},
{"H¹ng 21 ®Õn 40",21,40,0,0,1000},
{"H¹ng 41 ®Õn 100",41,100,0,0,500},
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

ngay =  tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))

time = gio*100+phut
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
ngay =  tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))

if ngay == ngayketthuc and gio == 22 and phut == 0 then
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

ngay =  tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
time = gio*100+phut
for i=1,getn(mang) do
	if time >= mang[i] + num1 and time < mang[i] + num2 then
		return 1
	end
end
return 0
end
