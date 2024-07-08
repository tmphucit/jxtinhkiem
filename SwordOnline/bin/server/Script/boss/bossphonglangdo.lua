Include("\\datascript\\banghoi\\dsbosspld.lua")
Include("\\script\\lib\\thuvien.lua")


function checkbang(tenbang)
if getn(DSTTT) == 0 then
return 0
end
for i=1,getn(DSTTT) do
	if tenbang == DSTTT[i][1] then
		return i
	end
end
return 0
end

function main()
tenbang = GetTongName()
if tenbang == "" then
Talk(1,"","Ng��i kh�ng c� bang h�i, t�i t�m ta l�m g�?")
return
end

vt = checkbang(tenbang)
if vt == 0 then
Talk(1,"","Bang h�i c�a ng��i kh�ng k� g�i v�t ph�m ch� ta ")
return
end

if GetTongFigure() == 3 then
SayNew("Ta qu�n l� v�t ph�m s�n Boss c�a Bang H�i: ",4,
"R�t X� L�i Kim ��n /rutmanh",
"R�t Th�y Tinh /rutmanh",
"R�t Ti�n V�n /rutmanh",
"Tho�t./no")
else
SayNew("Ta qu�n l� v�t ph�m s�n Boss c�a Bang H�i: ",4,
"Xem X� L�i Kim ��n /xemmanh",
"Xem Th�y Tinh /xemmanh",
"Xem Ti�n V�n /xemmanh",
"Tho�t./no")
end
end




function xemmanh(nsel)
i = nsel + 1
vt = checkbang(tenbang)
soluong = 0
name = ""
if i == 1 then
soluong = DSTTT[vt][7]
name = "X� L�i Kim ��n "
elseif i == 2 then
soluong = DSTTT[vt][8]
name = "Th�y Tinh "
elseif i == 3 then
soluong = DSTTT[vt][6]
name = "v�n l��ng"
end

if name == "" then
Talk(1,"","L�i, b�o GM g�p")
return
end
Talk(1,"","Hi�n t�i bang h�i �ang c�: <color=yellow>"..soluong.." "..name.."")
end 

function rutmanh(nsel)
i = nsel+1
vt = checkbang(tenbang)


vtnum = 0
name = ""
if i == 1 then
vtnum = 7
name = "X� L�i Kim ��n "
itemmin = 59
itemmax = 59
elseif i == 2 then
vtnum = 8
name = "Th�y Tinh "
itemmin = 28
itemmax = 30
elseif i == 3 then
vtnum = 6
name = "V�n L��ng"
end
if name == "" then
Talk(1,"","L�i, b�o GM g�p")
return
end

if i < 3 then
	if DSTTT[vt][vtnum] == 0 then
		Talk(1,"","Hi�n t�i kh�ng c�n "..name.." g�i � ch� ta")
		return
	end
	num = 0
	for t=1,DSTTT[vt][vtnum] do
		if CheckFreeBoxItem(0,3,3,1) ~= 0 then
			DSTTT[vt][vtnum] = DSTTT[vt][vtnum] - 1
			AddEventItem(RandomNew(itemmin,itemmax))
			num = num + 1
		end
	end
	Msg2Player("B�n nh�n ���c "..num.." "..name.." ")
	Msg2Tong("<color=yellow>Bang ch� "..GetName().." �� r�t "..num.." "..name.." ")
	inlog("Rut "..num.." "..name.."")
elseif i == 3 then
	if DSTTT[vt][6] == 0 then
		Talk(1,"","Hi�n t�i kh�ng c�n ng�n l��ng g�i � ch� ta")
		return
	end
		nganluong = DSTTT[vt][6]
		Earn(nganluong*10000)
		DSTTT[vt][6] = 0
	Msg2Player("B�n nh�n ���c "..nganluong.." v�n l��ng ")
	Msg2Tong("<color=yellow>Bang ch� "..GetName().." �� r�t "..nganluong.." v�n l��ng")
	inlog("Rut "..nganluong.." Van Luong")
else
Talk(1,"","Ch�a l�m")	
end

BANG = TaoBang(DSTTT,"DSTTT")
	LuuBang("datascript/banghoi/dsbosspld.lua",BANG)
end

function no()
end

function OnDrop()
end

function OnDeath()
name = GetName()
bang = GetTongName()
idx = PlayerIndex
h,m,s = GetTimeNew()
ngay = tonumber(date("%d"))

if GetTongName() == "" then
	Msg2SubWorld("Ch�c m�ng "..GetName().." �� ti�u di�t Boss Phong L�ng �� ��o T�c v� mang v� cho m�nh <color=yellow>3 Th�y Tinh !")
	for k=1,3 do AddEventItem(random(28,30)) end
	
	Msg2Player("B�n nh�n ���c <color=pink>3 Th�y Tinh")
	for k=1,20 do AddOwnExp(1000000) end
	Earn(1000000)
	Msg2Player("B�n nh�n ���c <color=yellow>20.000.000<color=red> kinh nghi�m !")
	Msg2Player("B�n nh�n ���c <color=yellow>100<color=red> v�n l��ng !")
else
	manhngua1 = 0
	manhngua2 = 0
	manhab = 0
	manhdq = 0
	tienvan = 100
	xaloikimdon = RandomNew(5,10)
	thuytinh = RandomNew(1,5)
	Msg2SubWorld("Ch�c m�ng "..GetName().." �� ti�u di�t Boss Phong L�ng �� ��o T�c v� mang v� cho <color=yellow>[Bang H�i - "..bang.."]: ")
	
	if manhab > 0 then
	Msg2SubWorld("<color=yellow>- "..manhab.." M�nh An Bang ")
	end
	if manhdq > 0 then
	Msg2SubWorld("<color=yellow>- "..manhdq.." M�nh ��nh Qu�c ")
	end
	if xaloikimdon > 0 then
	Msg2SubWorld("<color=yellow>- "..xaloikimdon.." X� L�i Kim ��n")
	end
	if thuytinh > 0 then
	Msg2SubWorld("<color=yellow>- "..thuytinh.." Th�y Tinh")
	end
	Msg2SubWorld("<color=yellow>- 100 v�n l��ng ")
	
	
	if getn(DSTTT) == 0 then
		DSTTT[getn(DSTTT)+1] = {bang,manhngua1,manhngua2,manhab,manhdq,tienvan,xaloikimdon,thuytinh}
	else
		vt = checktontai(bang)
		if  vt == 0 then
			DSTTT[getn(DSTTT)+1] = {bang,manhngua1,manhngua2,manhab,manhdq,tienvan,xaloikimdon,thuytinh}
			inlog("Bang h�i "..bang.." nh�n ���c: "..manhab.." M�nh An Bang, "..manhdq.." M�nh ��nh Qu�c, "..xaloikimdon.." X� L�i Kim ��n, "..thuytinh.." Th�y Tinh, "..tienvan.." v�n l��ng, ")
		else
			DSTTT[vt][4] = DSTTT[vt][4] + manhab
			DSTTT[vt][5] = DSTTT[vt][5] + manhdq
			DSTTT[vt][6] = DSTTT[vt][6] + tienvan
			DSTTT[vt][7] = DSTTT[vt][7] + xaloikimdon
			DSTTT[vt][8] = DSTTT[vt][8] + thuytinh
			inlog("Bang h�i "..bang.." nh�n ���c: "..manhab.." M�nh An Bang, "..manhdq.." M�nh ��nh Qu�c, "..xaloikimdon.." X� L�i Kim ��n, "..thuytinh.." Th�y Tinh, "..tienvan.." v�n l��ng, ")
		end
	end
	
	BANG = TaoBang(DSTTT,"DSTTT")
	LuuBang("datascript/banghoi/dsbosspld.lua",BANG)

	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		if GetName() ~= "" and GetName() ~= nil then
			if GetTongName() == bang then
					for k=1,20 do AddOwnExp(1000000) end
					Msg2Player("B�n nh�n ���c <color=yellow>20.000.000<color=red> kinh nghi�m !")
			end
		end
	end


end


PlayerIndex = idx
end

function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/LogBossPhongLangDo.txt", "a");
if LoginLog then
write(LoginLog,""..GetAccount().." - "..GetName().." - "..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function checktontai(bang)
for i=1,getn(DSTTT) do 
	if DSTTT[i][1] == bang then
		return i
	end
end
return 0
end
