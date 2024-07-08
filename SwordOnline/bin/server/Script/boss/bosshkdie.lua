Include("\\datascript\\banghoi\\dsbosshk.lua")
Include("\\script\\lib\\thuvien.lua")

function checkbang(tenbang)
if getn(BOSSHK) == 0 then
return 0
end
for i=1,getn(BOSSHK) do
	if tenbang == BOSSHK[i][1] then
		return i
	end
end
return 0
end

function OnDeath(idx)
w,x,y = GetWorldPos()

Msg2SubWorld("<color=yellow>[H� Th�ng] <color=red>Ch�c m�ng ��i hi�p ["..GetName().."] �� ti�u di�t "..GetNpcName(idx).." v� �em l�i cho to�n server r�t nhi�u kinh nghi�m. ")
bang = GetTongName()


		loai = random(2,9)
		LevelItem = random(9,10)
		LevelOption = random(9,10)
		nParam = -1
		nguhanh = random(0,4)
		if loai == 4 or loai == 6 or loai == 8 or loai == 9 then
			nParam = random(0,1)
		elseif loai == 2 then
			nParam = random(0,27)
		elseif loai == 5 then
			nParam = random(0,3)
		elseif loai == 7 then
			nParam = random(0,13)
		elseif loai == 3 then
			nParam = 0
		end	
			
		if nParam ~= -1 then
			idxitem = AddItem(0,loai,nParam,LevelItem,nguhanh,0,LevelOption)
			Msg2SubWorld("<color=green>"..GetName().." nh�n ���c: "..GetNameItemBox(idxitem).." [C�p "..LevelItem.."] - H� "..CheckHe(nguhanh).."")	
		end


if w == 109 then
	manhngua1 = random(5,9)
	manhngua2 = 10 - manhngua1
	manhab = random(1,3)
	manhdq = random(1,3)
	tienvan = random(50, 200)
	if bang ~= "" then
		Msg2SubWorld("<color=green>To�n b� th�nh vi�n bang h�i ["..bang.."] nh�n ���c 3.000.000 kinh nghi�m")
		vt = checkbang(bang)
		if  vt == 0 then
			BOSSHK[getn(BOSSHK)+1] = {bang,manhngua1,manhngua2,manhab,manhdq,tienvan}
			Msg2SubWorld("Bang h�i "..bang.." nh�n ���c: "..manhngua1.." M�nh X�ch Th�, "..manhngua2.." M�nh Chi�u D�, "..manhab.." M�nh An Bang, "..manhdq.." M�nh ��nh Qu�c, "..tienvan.." v�n l��ng")
			inlog("Bang h�i "..bang.." nh�n ���c: "..manhngua1.." M�nh X�ch Th�, "..manhngua2.." M�nh Chi�u D�, "..manhab.." M�nh An Bang, "..manhdq.." M�nh ��nh Qu�c, "..tienvan.." v�n l��ng")
		else
			BOSSHK[vt][2] = BOSSHK[vt][2] + manhngua1
			BOSSHK[vt][3] = BOSSHK[vt][3] + manhngua2
			BOSSHK[vt][4] = BOSSHK[vt][4] + manhab
			BOSSHK[vt][5] = BOSSHK[vt][5] + manhdq
			BOSSHK[vt][6] = BOSSHK[vt][6] + tienvan
			Msg2SubWorld("Bang h�i "..bang.." nh�n ���c: "..manhngua1.." M�nh X�ch Th�, "..manhngua2.." M�nh Chi�u D�, "..manhab.." M�nh An Bang, "..manhdq.." M�nh ��nh Qu�c, "..tienvan.." v�n l��ng")
			inlog("Bang h�i "..bang.." nh�n ���c: "..manhngua1.." M�nh X�ch Th�, "..manhngua2.." M�nh Chi�u D�, "..manhab.." M�nh An Bang, "..manhdq.." M�nh ��nh Qu�c, "..tienvan.." v�n l��ng")
		end
		LuuDanhSach()
	else
		for k=1,manhngua1 do AddEventItem(273) end
		for k=1,manhngua2 do AddEventItem(274) end
		for k=1,manhab do AddEventItem(random(283,286)) end
		for k=1,manhdq do AddEventItem(random(287,291)) end
		Earn(tienvan*10000)

		Msg2SubWorld(""..GetName().." nh�n ���c: "..manhngua1.." M�nh X�ch Th�, "..manhngua2.." M�nh Chi�u D�, "..manhab.." M�nh An Bang, "..manhdq.." M�nh ��nh Qu�c")
		inlog(""..GetName().." nh�n ���c: "..manhngua1.." M�nh X�ch Th�, "..manhngua2.." M�nh Chi�u D�, "..manhab.." M�nh An Bang, "..manhdq.." M�nh ��nh Qu�c")
	end
end
		
		
if  GetTongName() == "" then
		name = GetName()
	
		idx = PlayerIndex
			for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				w1,x1,y1 = GetWorldPos()
				
				if GetName() ~= "" and GetName() ~= nil then
					if GetName() == name then	
						for k=1,10 do AddOwnExp(1000000) end
						Msg2SubWorld(""..GetName().." nh�n ���c 10.000.000 kinh nghi�m do kh�ng c� bang h�i")
					else
						if w == w1 and (x > x1-40 and x < x1+40) and (y > y1-80 and y < y1+80) then
						AddOwnExp(1500000)
						Msg2Player("B�n nh�n ���c 1.500.000 kinh nghi�m")
						else
						AddOwnExp(500000)
						Msg2Player("B�n nh�n ���c 500.000 kinh nghi�m")
						end
					end
				end
			end
		PlayerIndex = idx
		
else
	
		idx = PlayerIndex
			for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				w1,x1,y1 = GetWorldPos()
				
				if GetName() ~= "" and GetName() ~= nil then
					if GetTongName() == bang and GetTongName() ~= "" then	
						AddOwnExp(3000000)
						Msg2Player("B�n nh�n ���c 3.000.000 kinh nghi�m")
					else
						if w == w1 and (x > x1-40 and x < x1+40) and (y > y1-80 and y < y1+80) then
						AddOwnExp(1500000)
						Msg2Player("B�n nh�n ���c 1.500.000 kinh nghi�m")
						else
						AddOwnExp(500000)
						Msg2Player("B�n nh�n ���c 500.000 kinh nghi�m")
						end
					end
				end
			end
		PlayerIndex = idx
		
end		
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
SayNew("Ta qu�n l� v�t ph�m s�n Boss c�a Bang H�i: ",6,
"R�t M�nh Ng�a X�ch Th� /rutmanh",
"R�t M�nh Ng�a Chi�u D� /rutmanh",
"R�t M�nh An Bang /rutmanh",
"R�t M�nh ��nh Qu�c /rutmanh",
"R�t M�nh Ti�n V�n /rutmanh",
"Tho�t./no")
else
SayNew("Ta qu�n l� v�t ph�m s�n Boss c�a Bang H�i: ",6,
"Xem M�nh Ng�a X�ch Th� /xemmanh",
"Xem M�nh Ng�a Chi�u D� /xemmanh",
"Xem M�nh An Bang /xemmanh",
"Xem M�nh ��nh Qu�c /xemmanh",
"Xem M�nh Ti�n V�n /xemmanh",
"Tho�t./no")
end
end

function no()
end

function xemmanh(nsel)
i = nsel + 1
vt = checkbang(tenbang)
soluong = 0
name = ""
if i == 1 then
soluong = BOSSHK[vt][2]
name = "M�nh Ng�a X�ch Th� "
elseif i == 2 then
soluong = BOSSHK[vt][3]
name = "M�nh Ng�a Chi�u D� "
elseif i == 3 then
soluong = BOSSHK[vt][4]
name = "M�nh An Bang"
elseif i == 4 then
soluong = BOSSHK[vt][5]
name = "M�nh ��nh Qu�c"
elseif i == 5 then
soluong = BOSSHK[vt][6]
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
vtnum = 2
name = "M�nh Ng�a X�ch Th� "
itemmin = 273
itemmax = 273
elseif i == 2 then
vtnum = 3
name = "M�nh Ng�a Chi�u D� "
itemmin = 274
itemmax = 274
elseif i == 3 then
vtnum = 4
name = "M�nh An Bang"
itemmin = 283
itemmax = 286
elseif i == 4 then
vtnum = 5
name = "M�nh ��nh Qu�c"
itemmin = 287
itemmax = 291
elseif i == 5 then
vtnum = 6
name = "V�n L��ng"
end
if name == "" then
Talk(1,"","L�i, b�o GM g�p")
return
end

if i < 5 then
	if BOSSHK[vt][vtnum] == 0 then
		Talk(1,"","Hi�n t�i kh�ng c�n "..name.." g�i � ch� ta")
		return
	end
	num = 0
	for t=1,BOSSHK[vt][vtnum] do
		if CheckFreeBoxItem(0,3,3,1) ~= 0 then
			BOSSHK[vt][vtnum] = BOSSHK[vt][vtnum] - 1
			AddEventItem(RandomNew(itemmin,itemmax))
			num = num + 1
		end
	end
	Msg2Player("B�n nh�n ���c "..num.." "..name.." ")
	Msg2Tong("<color=yellow>Bang ch� "..GetName().." �� r�t "..num.." "..name.." ")
	inlog("Rut "..num.." "..name.."")
elseif i == 5 then
	if BOSSHK[vt][6] == 0 then
		Talk(1,"","Hi�n t�i kh�ng c�n ng�n l��ng g�i � ch� ta")
		return
	end
		nganluong = BOSSHK[vt][6]
		Earn(nganluong*10000)
		BOSSHK[vt][6] = 0
	Msg2Player("B�n nh�n ���c "..nganluong.." v�n l��ng ")
	Msg2Tong("<color=yellow>Bang ch� "..GetName().." �� r�t "..nganluong.." v�n l��ng")
	inlog("Rut "..nganluong.." Van Luong")
else
Talk(1,"","Ch�a l�m")	
end

LuuDanhSach()
end

function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/LogQuanLyBoss.txt", "a");
if LoginLog then
write(LoginLog,""..GetAccount().." - "..GetName().." - "..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function LuuDanhSach()
BANGI = TaoBang(BOSSHK,"BOSSHK")
LuuBang("datascript/banghoi/dsbosshk.lua",BANGI)
end
function CheckHe(num)
if num == 0 then
return "Kim"
elseif num == 1 then
return "M�c"
elseif num == 2 then
return "Th�y"
elseif num == 3 then
return "H�a"
else
return "Th� "
end
end
function OnDrop()
end