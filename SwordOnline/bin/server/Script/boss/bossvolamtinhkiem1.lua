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

function OnDrop(idx)
w,x,y = GetWorldPos()

--Msg2SubWorld("<color=yellow>[H� Th�ng] <color=red>Ch�c m�ng ��i hi�p ["..GetName().."] �� ti�u di�t "..GetNpcName(idx).." . ")
bang = GetTongName()


--sxthienhoang = RandomNew(1,100)
sxthienhoang = 0
if sxthienhoang > 30 then -- 14%
	sxthienhoang2 = random(1,9)
	if sxthienhoang2 == 1 then
		idxitem = AddEventItem(243)
		Msg2SubWorld("��i hi�p "..GetName().."  may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 2 then
		idxitem = AddEventItem(243)
		Msg2SubWorld("��i hi�p "..GetName().."  may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 3 then
		idxitem = AddEventItem(243)
		Msg2SubWorld("��i hi�p "..GetName().."  may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 4 then
		idxitem = AddEventItem(243)
		Msg2SubWorld("��i hi�p "..GetName().."  may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 5 then
		idxitem = AddEventItem(243)
		Msg2SubWorld("��i hi�p "..GetName().."  may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 6 then
		idxitem = AddItem(0,7,41,1,0,0,0)
		Msg2SubWorld("��i hi�p "..GetName().."  may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 7 then
		idxitem = AddItem(0,9,19,1,0,0,0)
		Msg2SubWorld("��i hi�p "..GetName().."  may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 8 then
		idxitem = AddEventItem(243)
		Msg2SubWorld("��i hi�p "..GetName().."  may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 9 then
		idxitem = AddEventItem(243)
		Msg2SubWorld("��i hi�p "..GetName().."  may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	end
end	

	
--if w == 217 then
	manhngua1 = 0
	manhngua2 = 0
	manhab = random(1,3)
	manhdq = random(1,3)
	tienvan = 0
	manhngua3 = random(1,3)
	knbb = random(1,3)
	if bang ~= "" then
		--Msg2SubWorld("<color=green>To�n b� th�nh vi�n bang h�i ["..bang.."] nh�n ���c 6.000.000 kinh nghi�m")
		vt = checkbang(bang)
		if  vt == 0 then
			BOSSHK[getn(BOSSHK)+1] = {bang,manhngua1,manhngua2,manhab,manhdq,tienvan,manhngua3,knbb}
			Msg2SubWorld("Bang h�i "..bang.." nh�n ���c: "..manhngua3.." M�nh Chi�u D�, "..knbb.." C�c Ph�m Tinh Th�ch, "..manhab.." M�nh An Bang, "..manhdq.." M�nh ��nh Qu�c")
			inlog("Bang h�i "..bang.." nh�n ���c: "..manhngua3.." M�nh Chi�u D�, "..knbb.." C�c Ph�m Tinh Th�ch, "..manhab.." M�nh An Bang, "..manhdq.." M�nh ��nh Qu�c")
		else
			BOSSHK[vt][2] = BOSSHK[vt][2] + manhngua1
			BOSSHK[vt][3] = BOSSHK[vt][3] + manhngua2
			BOSSHK[vt][4] = BOSSHK[vt][4] + manhab
			BOSSHK[vt][5] = BOSSHK[vt][5] + manhdq
			BOSSHK[vt][6] = BOSSHK[vt][6] + tienvan
			BOSSHK[vt][7] = BOSSHK[vt][7] + manhngua3
			BOSSHK[vt][8] = BOSSHK[vt][8] + knbb
			Msg2SubWorld("Bang h�i "..bang.." nh�n ���c: "..manhngua3.." M�nh Chi�u D�, "..knbb.." C�c Ph�m Tinh Th�ch, "..manhab.." M�nh An Bang, "..manhdq.." M�nh ��nh Qu�c")
			inlog("Bang h�i "..bang.." nh�n ���c: "..manhngua3.." M�nh Chi�u D�, "..knbb.." C�c Ph�m Tinh Th�ch, "..manhab.." M�nh An Bang, "..manhdq.." M�nh ��nh Qu�c")
		end
		LuuDanhSach()
	else
		--for k=1,manhngua1 do AddEventItem(273) end
		--for k=1,manhngua2 do AddEventItem(274) end
		for k=1,manhab do AddEventItem(random(284,286)) end
		for k=1,manhdq do AddEventItem(random(287,291)) end
		--Earn(tienvan*10000)
		for k=1,manhngua3 do AddEventItem(273) end
		for k=1,knbb do AddEventItem(568) end
		
		
		Msg2SubWorld(""..GetName().." nh�n ���c: "..manhngua3.." M�nh Chi�u D�, "..knbb.." C�c Ph�m Tinh Th�ch, "..manhab.." M�nh An Bang, "..manhdq.." M�nh ��nh Qu�c")
		inlog(""..GetName().." nh�n ���c: "..manhngua3.." M�nh Chi�u D�, "..knbb.." C�c Ph�m Tinh Th�ch, "..manhab.." M�nh An Bang, "..manhdq.." M�nh ��nh Qu�c")
	end
--end
		

end
function OnDeath()
ngay = tonumber(date("%d"))
idx = PlayerIndex
tong = GetTongName()
numteam = GetTeamSize()
team = GetTeam()
name = GetName()
w1,x1,y1 = GetWorldPos()

Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p ["..GetName().."] �� ti�u di�t Boss M�y Ch� H�i �c v� nh�n ���c:")
	Msg2SubWorld("<color=yellow>- 2 KNB")
	--Msg2SubWorld("<color=yellow>- 1 B� Ki�p 120")
	Msg2SubWorld("<color=yellow>- 2 Lam Th�y Tinh")
	Msg2SubWorld("<color=yellow>- 2 L�c Th�y Tinh")
	Msg2SubWorld("<color=yellow>- 2 T� Th�y Tinh")
	Msg2SubWorld("<color=yellow>- 1 V� L�m M�t T�ch - 1 T�y T�y Kinh")
	-- Msg2SubWorld("<color=yellow>- 3 M�nh Ng�a")
	-- Msg2SubWorld("<color=yellow>- 10 Ho�n M� Tinh Th�ch")
	 Msg2SubWorld("<color=yellow>- 5 B�o R��ng H�i �c")
	 Msg2SubWorld("<color=yellow>- 10 M�nh Gh�p Ng�a X�ch Th�")
	 Msg2SubWorld("<color=yellow>- 10 M�nh Gh�p Ng�a Chi�u D�")
	-- Msg2SubWorld("<color=yellow>- 10 Bao L� X� L�n")
	AddEventItem(17)
	AddEventItem(17)
	--AddEventItem(19)
    AddEventItem(1)
    AddEventItem(0)
	for i=1,2 do AddEventItem(28) end
	for i=1,2 do AddEventItem(29) end
	for i=1,2 do AddEventItem(30) end
	-- for i=1,10 do AddEventItem(567) end
	 for i=1,5 do AddEventItem(269) end
	 for i=1,10 do AddEventItem(655) end
	 for i=1,10 do AddEventItem(656) end
	 --for i=1,10 do AddEventItem(326) end
Msg2SubWorld("<color=green>Ch�c m�ng Bang H�i ["..GetTongName().."] ti�u di�t Boss nh�n ���c:")
-- Msg2SubWorld("<color=pink>- 500 tri�u �i�m kinh nghi�m cho t�t c� th�nh vi�n trong bang h�i ")
--Msg2SubWorld("<color=yellow>- Bang ch� li�n h� Admin �� nh�n ng�a X�ch Th� ")
	
--if GetTeam() == nill then
    --for k=1,20000 do AddOwnExp(5000) end
	AddOwnExp(50000000)
	Msg2Player("B�n �� k�t th�c Boss, nh�n ���c 50.000.000 kinh nghi�m")
	Msg2SubWorld("��i hi�p ["..GetName().."] �� ��n th�n ti�u di�t boss, nh�n ���c 50.000.000 kinh nghi�m ")
	
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetName() ~= "" or GetName() ~= nil then
			if GetTongName() == tong then		
				w,x,y = GetWorldPos()
				if GetName() ~= name then
					if w == w1 and (x > x1-40 and x < x1+40) and (y > y-80 and y < y+80) then
						AddOwnExp(50000000)
						Msg2Player("Bang cu� b�n � trong khu v�c s�n boss, nh�n ���c 50.000.000 kinh nghi�m")
					end
				end
			else
				--w,x,y = GetWorldPos()
				if GetName() ~= name then
					if w == w1 and (x > x1-40 and x < x1+40) and (y > y-80 and y < y+80) then
						AddOwnExp(25000000)
						Msg2Player("B�n � trong khu v�c s�n boss, nh�n ���c 25.000.000 kinh nghi�m")
					end
				end
			end
		end
	end
--else
	--AddOwnExp(50000000)
	--Msg2Player("B�n �� k�t th�c Boss, nh�n ���c 50.000.000 kinh nghi�m")
	--Msg2SubWorld("��i hi�p ["..GetName().."] �� ��n th�n ti�u di�t boss, nh�n ���c 50.000.000 kinh nghi�m ")
	--for i=1,GetCountPlayerMax() do
	--PlayerIndex = i
		--if GetName() ~= "" or GetName() ~= nil then
				--if GetTongName() == tong then	
					--w,x,y = GetWorldPos()
					--AddOwnExp(10000000)
					--if GetName() ~= name then
						--if w == w1 and (x > x1-40 and x < x1+40) and (y > y-80 and y < y+80) then
							--for k=1,20000 do AddOwnExp(5000) end
							--AddOwnExp(50000000)
							--Msg2Player("B�n thu�c Bang ti�u di�t Boss, nh�n ���c 50.000.000 kinh nghi�m")
						--end
					--end
				--else
					--if GetName() ~= name then
						--if w == w1 and (x > x1-40 and x < x1+40) and (y > y-80 and y < y+80) then
							--AddOwnExp(25000000)
							--Msg2Player("B�n � trong khu v�c s�n boss, nh�n ���c 25.000.000 kinh nghi�m")
						--end
					--end
				--end
				--end
		--end
--end
--end
PlayerIndex = idx
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
Say("Ta qu�n l� v�t ph�m s�n Boss c�a Bang H�i: ",8,
"R�t M�nh Chi�u D� /rutmanh",
"R�t C�c Ph�m Tinh Th�ch /rutmanh",
"R�t M�nh An Bang /rutmanh",
"R�t M�nh ��nh Qu�c /rutmanh",
"R�t Ti�n V�n /rutmanh",

"Tho�t./no")
else
Say("Ta qu�n l� v�t ph�m s�n Boss c�a Bang H�i: ",6,
"Xem M�nh Chi�u D� /xemmanh",
"Xem C�c Ph�m Tinh Th�ch /xemmanh",
"Xem M�nh An Bang /xemmanh",
"Xem M�nh ��nh Qu�c /xemmanh",
"Xem Ti�n V�n /xemmanh",
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
soluong = BOSSHK[vt][7]
name = "M�nh Chi�u D�"
elseif i == 2 then
soluong = BOSSHK[vt][8]
name = "C�c Ph�m Tinh Th�ch"
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
vtnum = 7
name = "M�nh Ng�a Chi�u D� "
itemmin = 273
itemmax = 273
elseif i == 2 then
vtnum = 8
name = "C�c Ph�m Tinh Th�ch"
itemmin = 568
itemmax = 568
elseif i == 3 then
vtnum = 4
name = "M�nh An Bang"
itemmin = 284
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
function OnDeath__()
end


function KinhNghiemBackup()
		
if  GetTongName() == "" then
		name = GetName()
	
		idx = PlayerIndex
			for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				w1,x1,y1 = GetWorldPos()
				
				if GetName() ~= "" and GetName() ~= nil then
					if GetName() == name then	
						for k=1,10 do AddOwnExp(2000000) end
						Msg2SubWorld(""..GetName().." nh�n ���c  20.000.000 kinh nghi�m do kh�ng c� bang h�i")
					else
						if 217 == w1 and (1733+40 > x1 and 1733-40 < x1) and (3455+80 > y1 and 3455-80 < y1) then
						AddOwnExp(3000000)
						Msg2Player("B�n nh�n ���c 3.000.000 kinh nghi�m")
						else
						AddOwnExp(1000000)
						Msg2Player("B�n nh�n ���c 1.000.000 kinh nghi�m")
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
						AddOwnExp(6000000)
						Msg2Player("B�n nh�n ���c 6.000.000 kinh nghi�m")
					else
						if w == w1 and (x > x1-40 and x < x1+40) and (y > y1-80 and y < y1+80) then
						AddOwnExp(3000000)
						Msg2Player("B�n nh�n ���c 3.000.000 kinh nghi�m")
						else
						AddOwnExp(1000000)
						Msg2Player("B�n nh�n ���c 1.000.000 kinh nghi�m")
						end
					end
				end
			end
		PlayerIndex = idx
		
end		
end