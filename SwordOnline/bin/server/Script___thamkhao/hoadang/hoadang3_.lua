soluonghoadang = 20


function main(idx)
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
ngay = tonumber(date("%d"))
if GetLevel() < 80 then
Talk(1,"","��ng c�p d��i 80 kh�ng th� tr� l�i Hoa ��ng")
return
end
if CheckFreeBoxItem(4,17,1,1) == 0 then
	Talk(1,"","H�nh trang kh�ng �� 1 � tr�ng, kh�ng th� tr� l�i c�u h�i !")
	return
end
if GetTask(477) > 0 then
Talk(1,"","B�n �ang trong th�i gian t�m kh�a Hoa ��ng, kh�ng th� tham gia !")
return
end

if GetTask(120) ~= ngay then
SetTask(120,ngay)
SetTask(121,0)
end

if GetTask(121) <= soluonghoadang then
			sl = GetCash()
			tientru = 1000
			if GetCash() > tientru then
				Pay(tientru)
				if GetCash() == (sl-tientru) then
						HideNpc(idx, 24*60*60*18)
												
							i = xacsuatcauhoi()
							SetTaskTemp(2,CAUHOI[i][6])
							SetFightState(0)
							if GetTaskTemp(2) < 1 or GetTaskTemp(2) > 4 then
								return
							end
							a = random(1,4)
							if a == 1 then
							SayNew(""..checkmau(GetTaskTemp(2))..": "..CAUHOI[i][1].."",4,
							"A. "..CAUHOI[i][2].."/dung",
							"B. "..CAUHOI[i][3].."/sai",
							"C. "..CAUHOI[i][4].."/sai",
							"D. "..CAUHOI[i][5].."/sai")
							elseif a == 2 then
							SayNew(""..checkmau(GetTaskTemp(2))..": "..CAUHOI[i][1].."",4,
							"A. "..CAUHOI[i][5].."/sai",
							"B. "..CAUHOI[i][2].."/dung",
							"C. "..CAUHOI[i][3].."/sai",
							"D. "..CAUHOI[i][4].."/sai")
							elseif a == 3 then
							SayNew(""..checkmau(GetTaskTemp(2))..": "..CAUHOI[i][1].."",4,
							"A. "..CAUHOI[i][4].."/sai",
							"B. "..CAUHOI[i][5].."/sai",
							"C. "..CAUHOI[i][2].."/dung",
							"D. "..CAUHOI[i][3].."/sai")
							elseif a == 4 then
							SayNew(""..checkmau(GetTaskTemp(2))..": "..CAUHOI[i][1].."",4,
							"A. "..CAUHOI[i][3].."/sai",
							"B. "..CAUHOI[i][4].."/sai",
							"C. "..CAUHOI[i][5].."/sai",
							"D. "..CAUHOI[i][2].."/dung")
							end 	
				else
				Talk(1,"","Hack ha em")
				end			
			else
			Talk(1,"","<color=green>Hoa ��ng<color> B�n kh�ng mang �� <color=yellow>"..tientru.."<color> l��ng")
			end	
		else
		Talk(1,"","<color=green>Hoa ��ng<color> Gi�i h�n Hoa ��ng <color=yellow>"..soluonghoadang.."<color> c�u")
		end
end

function xacsuatcauhoi()
danhvong  = GetTask(100)
if danhvong < 250 then
	sx2 = random(1,100)
	if sx2 <= 10 then
		return idcauhoi(2)
	elseif sx2 <= 11 then
		return idcauhoi(3)
	else
		return idcauhoi(1)
	end
elseif danhvong >= 250 and danhvong < 500 then
	sx2 = random(1,100)
	if sx2 <= 12 then
		return idcauhoi(2)
	elseif sx2 <= 14 then
		return idcauhoi(3)
	else
		return idcauhoi(1)
	end
elseif danhvong >= 500 and danhvong < 750 then
	sx2 = random(1,100)
	if sx2 <= 14 then
		return idcauhoi(2)
	elseif sx2 <= 17 then
		return idcauhoi(3)
	else
		return idcauhoi(1)
	end
elseif danhvong >= 750 and danhvong < 1000 then
	sx2 = random(1,100)
	if sx2 <= 16 then
		return idcauhoi(2)
	elseif sx2 <= 20 then
		return idcauhoi(3)
	else
		return idcauhoi(1)
	end
elseif danhvong >= 1000 and danhvong < 1250 then
	sx2 = random(1,100)
	if sx2 <= 18 then
		return idcauhoi(2)
	elseif sx2 <= 23 then
		return idcauhoi(3)
	else
		return idcauhoi(1)
	end
elseif danhvong >= 1250 and danhvong < 1500 then
	sx2 = random(1,100)
	if sx2 <= 20 then
		return idcauhoi(2)
	elseif sx2 <= 26 then
		return idcauhoi(3)
	else
		return idcauhoi(1)
	end
elseif danhvong >= 1500 and danhvong < 2000 then
	sx2 = random(1,100)
	if sx2 <= 22 then
		return idcauhoi(2)
	elseif sx2 <= 29 then
		return idcauhoi(3)
	elseif sx2 <= 30 then
		return idcauhoi(4)
	else
		return idcauhoi(1)
	end
elseif danhvong >= 2000 and danhvong < 4000 then
	sx2 = random(1,100)
	if sx2 <= 24 then
		return idcauhoi(2)
	elseif sx2 <= 32 then
		return idcauhoi(3)
	elseif sx2 <= 33 then
		return idcauhoi(4)
	else
		return idcauhoi(1)
	end
elseif danhvong >= 4000 and danhvong < 6000 then
	sx2 = random(1,100)
	if sx2 <= 25 then
		return idcauhoi(2)
	elseif sx2 <= 34 then
		return idcauhoi(3)
	elseif sx2 <= 35 then
		return idcauhoi(4)
	else
		return idcauhoi(1)
	end
elseif danhvong >= 6000 and danhvong < 8000 then
	sx2 = random(1,100)
	if sx2 <= 30 then
		return idcauhoi(2)
	elseif sx2 <= 40 then
		return idcauhoi(3)
	elseif sx2 <= 42 then
		return idcauhoi(4)
	else
		return idcauhoi(1)
	end
elseif danhvong >= 8000 and danhvong < 10000 then
	sx2 = random(1,100)
	if sx2 <= 35 then
		return idcauhoi(2)
	elseif sx2 <= 46 then
		return idcauhoi(3)
	elseif sx2 <= 50 then
		return idcauhoi(4)
	else
		return idcauhoi(1)
	end
elseif danhvong >= 10000 and danhvong < 15000 then
	sx2 = random(1,100)
	if sx2 <= 40 then
		return idcauhoi(2)
	elseif sx2 <= 52 then
		return idcauhoi(3)
	elseif sx2 <= 57 then
		return idcauhoi(4)
	else
		return idcauhoi(1)
	end
elseif danhvong >= 15000 and danhvong < 20000 then
	sx2 = random(1,100)
	if sx2 <= 45 then
		return idcauhoi(2)
	elseif sx2 <= 58 then
		return idcauhoi(3)
	elseif sx2 <= 63 then
		return idcauhoi(4)
	else
		return idcauhoi(1)
	end
elseif danhvong >= 20000 then
	sx2 = random(1,100)
	if sx2 <= 50 then
		return idcauhoi(2)
	elseif sx2 <= 65 then
		return idcauhoi(3)
	elseif sx2 <= 70 then
		return idcauhoi(4)
	else
		return idcauhoi(1)
	end
else
return idcauhoi(1)
end
end


function idcauhoi(num)
if num == 1 then
return random(1,157)
elseif num == 2 then
return random(158,206)
elseif num == 3 then
return random(207,227)
elseif num == 4 then
return random(228,271)
else
return 1
end
end

function main1()
end


function checkmau(i)
if i == 1 then
return "<color=red>[C�u h�i D�]<color>"
elseif i == 2 then
return "<color=green>[C�u h�i B�nh Th��ng]<color>"
elseif i == 3 then
return "<color=yellow>[C�u h�i Kh�]<color>"
elseif i == 4 then
return "<color=pink>[C�u h�i ��c Bi�t]<color>"
end
end

function dung()
check = GetTask(121)
SetTask(121,GetTask(121)+1)
--HideNpc(GetTaskTemp(1),24*60*60*18)
SetFightState(1)
if GetTask(121) == check + 1 then
	AddOwnExp(100000)
	Msg2Player("B�n nh�n ���c 100.000 kinh nghi�m")
	if GetTaskTemp(2) == 1 then
		m = random(1000,5000)
		Earn(m)
		Msg2Player("B�n tr� l�i 1 C�u H�i D� nh�n ���c: <color=yellow>"..m.." l��ng !")
	elseif GetTaskTemp(2) == 2 then
		if GetTask(100) < 250 then
			sx2 = random(1,100)
			if sx2 < 70 then
						AddEventItem(173)
						Msg2Player("<color=green>C�u h�i th� "..GetTask(121)..": Ch�c m�ng, n�n �� tr� l�i ch�nh x�c !!")
						Msg2World("Ch�c m�ng "..GetName().." tr� l�i C�u H�i B�nh Th��ng nh�n ���c:  <color=yellow>Ph�c Duy�n [Ti�u] ")
			else
						AddEventItem(174)
						Msg2Player("<color=green>C�u h�i th� "..GetTask(121)..": Ch�c m�ng, n�n �� tr� l�i ch�nh x�c !!")
						Msg2World("Ch�c m�ng "..GetName().." tr� l�i C�u H�i B�nh Th��ng nh�n ���c:  <color=yellow>Ph�c Duy�n [Trung] ")
			end
		else
			sx2 = random(1,100)
			if sx2 < 70 then
						AddEventItem(173)
						Msg2Player("<color=green>C�u h�i th� "..GetTask(121)..": Ch�c m�ng, n�n �� tr� l�i ch�nh x�c !!")
						Msg2World("Ch�c m�ng "..GetName().." tr� l�i C�u H�i B�nh Th��ng nh�n ���c:  <color=yellow>Ph�c Duy�n [Ti�u] ")
			elseif sx2 < 90 then
						AddEventItem(174)
						Msg2Player("<color=green>C�u h�i th� "..GetTask(121)..": Ch�c m�ng, n�n �� tr� l�i ch�nh x�c !!")
						Msg2World("Ch�c m�ng "..GetName().." tr� l�i C�u H�i B�nh Th��ng nh�n ���c:  <color=yellow>Ph�c Duy�n [Trung] ")
			elseif sx2 < 95 then
						AddEventItem(113)
						Msg2Player("<color=green>C�u h�i th� "..GetTask(121)..": Ch�c m�ng, n�n �� tr� l�i ch�nh x�c !!")
						Msg2World("Ch�c m�ng "..GetName().." tr� l�i C�u H�i B�nh Th��ng nh�n ���c:  <color=yellow>Ti�n Th�o L� 30 ph�t")
			else
						AddEventItem(114)
						Msg2Player("<color=green>C�u h�i th� "..GetTask(121)..": Ch�c m�ng, n�n �� tr� l�i ch�nh x�c !!")
						Msg2Player("B�n tr� l�i 1 C�u H�i B�nh Th��ng nh�n ���c:  <color=yellow>N� Nhi H�ng 30 ph�t")
						Msg2World("Ch�c m�ng "..GetName().." tr� l�i C�u H�i B�nh Th��ng nh�n ���c:  <color=yellow>N� Nhi H�ng 30 ph�t")
			end
		end
	elseif GetTaskTemp(2) == 3 then
		sx2 = random(1,100)
		if sx2 < 70 then
					AddEventItem(175)
					Msg2Player("<color=green>C�u h�i th� "..GetTask(121)..": Ch�c m�ng, n�n �� tr� l�i ch�nh x�c !!")
					Msg2Player("B�n tr� l�i 1 C�u H�i Kh� nh�n ���c:  <color=green>Ph�c Duy�n [��i] ")
					Msg2SubWorld("Ch�c m�ng "..GetName().." tr� l�i C�u H�i Kh� nh�n ���c:  <color=green>Ph�c Duy�n [��i] ")
		elseif sx2 < 90 then
					idx = AddEventItem(random(117,118))
					Msg2Player("<color=green>C�u h�i th� "..GetTask(121)..": Ch�c m�ng, n�n �� tr� l�i ch�nh x�c !!")
					Msg2Player("B�n tr� l�i 1 C�u H�i Kh� nh�n ���c:  <color=green>"..GetNameItemBox(idx).." ")
					Msg2SubWorld("Ch�c m�ng "..GetName().." tr� l�i C�u H�i Kh� nh�n ���c:  <color=green>"..GetNameItemBox(idx).." ")
		elseif sx2 < 95 then
					AddEventItem(119)
					Msg2Player("<color=green>C�u h�i th� "..GetTask(121)..": Ch�c m�ng, n�n �� tr� l�i ch�nh x�c !!")
					Msg2Player("B�n tr� l�i 1 C�u H�i Kh� nh�n ���c:  <color=green>Ti�n Th�o L� 3 gi� ")
					Msg2SubWorld("Ch�c m�ng "..GetName().." tr� l�i C�u H�i Kh� nh�n ���c:  <color=green>Ti�n Th�o L� 3 gi� ")
		else
					AddEventItem(115)
					Msg2Player("<color=green>C�u h�i th� "..GetTask(121)..": Ch�c m�ng, n�n �� tr� l�i ch�nh x�c !!")
					Msg2Player("B�n tr� l�i 1 C�u H�i Kh� nh�n ���c:  <color=green>N� Nhi H�ng 3 gi� ")
					Msg2SubWorld("Ch�c m�ng "..GetName().." tr� l�i C�u H�i Kh� nh�n ���c:  <color=green>N� Nhi H�ng 3 gi� ")
		end
	elseif GetTaskTemp(2) == 4 then
		sx2 = random(1,100)
		if sx2 < 70 then
					AddEventItem(31)
					Msg2Player("<color=green>C�u h�i th� "..GetTask(121)..": Ch�c m�ng, n�n �� tr� l�i ch�nh x�c !!")
					Msg2Player("B�n tr� l�i 1 C�u H�i ��c Bi�t nh�n ���c:  <color=pink>Tinh H�ng B�o Th�ch ")
					Msg2SubWorld("Ch�c m�ng "..GetName().." tr� l�i C�u H�i ��c Bi�t nh�n ���c:  <color=pink>Tinh H�ng B�o Th�ch ")
		elseif sx2 < 90 then
					idx = AddEventItem(random(28,30))
					Msg2Player("<color=green>C�u h�i th� "..GetTask(121)..": Ch�c m�ng, n�n �� tr� l�i ch�nh x�c !!")
					Msg2Player("B�n tr� l�i 1 C�u H�i ��c Bi�t nh�n ���c:  <color=pink>Th�y Tinh")
					Msg2SubWorld("Ch�c m�ng "..GetName().." tr� l�i C�u H�i ��c Bi�t nh�n ���c: <color=pink>Th�y Tinh")
		elseif sx2 < 95 then
					AddEventItem(0)
					Msg2Player("<color=green>C�u h�i th� "..GetTask(121)..": Ch�c m�ng, n�n �� tr� l�i ch�nh x�c !!")
					Msg2Player("B�n tr� l�i 1 C�u H�i ��c Bi�t nh�n ���c:  <color=pink>V� L�m M�t T�ch ")
					Msg2SubWorld("Ch�c m�ng "..GetName().." tr� l�i C�u H�i ��c Bi�t nh�n ���c: <color=pink>V� L�m M�t T�ch ")
		else
					AddEventItem(1)
					Msg2Player("<color=green>C�u h�i th� "..GetTask(121)..": Ch�c m�ng, n�n �� tr� l�i ch�nh x�c !!")
					Msg2Player("B�n tr� l�i 1 C�u H�i ��c Bi�t nh�n ���c:  <color=pink>T�y T�y Kinh")
					Msg2SubWorld("Ch�c m�ng "..GetName().." tr� l�i C�u H�i ��c Bi�t nh�n ���c: <color=pink>T�y T�y Kinh")
		end
	end	
else
	Talk(1,"","Hack ha em")
end
end

function sai()
SetFightState(1)
if GetTaskTemp(2) == 4 then
Msg2World("<color=pink>Xin chia bu�n c�ng "..GetName().." v�a tr� l�i sai 1 c�u h�i ��c Bi�t !")
elseif GetTaskTemp(2) == 3 then
Msg2World("<color=green>Xin chia bu�n c�ng "..GetName().." v�a tr� l�i sai 1 c�u h�i Kh� !")
end
Msg2Player("C�u h�i th� "..GetTask(121)..": Tr� l�i kh�ng ch�nh x�c. Kh�ng th� tr� l�i Hoa ��ng trong 10 gi�y !")
--HideNpc(GetTaskTemp(1),0)
SetTask(477, 10*18)
end

CAUHOI = {
{"Skill 9x n�i c�ng C�i Bang t�n g� ","Phi Long T�i Thi�n ","�� C�u Tr�n ","Thi�n H� V� C�u ","Ti�u Di�u C�ng ",1},
{"Skill 9x ngo�i c�ng C�i Bang t�n g�  ? ","Thi�n H� V� C�u ","Phi Long T�i Thi�n ","Ho�t B�t L�u Th� ","Kh�ng Long H�u H�i ",1},
{"Skill tr�n ph�i C�i Bang t�n g� ? ","T�y �i�p Cu�ng V� ","Phi Long Tai Thien ","Hoa Diem Vi Di ","Hoat Bat Luu Thu ",1},
{"Skill 9x n�i c�ng Nga My t�n g� ? ","Phong S��ng To�i �nh ","M�ng �i�p ","B�t Tuy�t B�t Di�t ","Ph�t T�m T� H�u ",1},
{"Skill 9x ngo�i c�ng Nga My t�n g� ? ","Tam Nga T� Tuy�t ","Th�i Song V�ng Nguy�t ","B�t Tuy�t B�t Di�t ","L�u Th�y ",1},
{"Skill tr�n ph�i Nga My t�n g� ? ","Ph�t Ph�p V� Bi�n ","L�u Th�y ","Ph� �� Ch�ng Sinh ","Th�i Song V�ng Nguy�n ",1},
{"Skill 9x ngo�i c�ng Th�y Y�n t�n g� ? ","B�ng Tung V� �nh ","Tuy�t �nh ","B�ng C�t Tuy�t T�m ","B�ng T�m Tr�i �nh ",1},
{"Skill tr�n ph�i Th�y Y�n t�n g� ? ","B�ng C�t Tuy�t T�m ","Tuy�t �nh ","Bang Tung V� �nh ","Bang T�m Tr�i �nh ",1},
{"Skill b�a 9x C�n L�n t�n g� ? ","T�y Ti�n T� C�t ","Thi�n Thanh ��a Tr�c ","Thi�n T� T�n L�i ","K� B�n Ph� ",1},
{"Skill t�ng kh�ng c�aThi�n V��ng t�n g� ? ","Kim Chung Tr�o ","Thi�n V��ng Chi�n Y ","Huy�t Chi�n B�t Ph��ng ","Th�a Long Quy�t ",1}, -- 10
{"Skill 9x Th��ng c�a Thi�n v��ng t�n g� ? ","Truy Tinh Tr�c Nguy�t ","Huy�t Chi�n B�t Ph��ng ","Kim Chung Tr�o ","Th�a Long Quy�t ",1},
{"Skill buff 100% tr�ng ��c Ng� ��c t�n g� ? ","Xuy�n T�m ��c Th�ch ","Ng� ��c K� Kinh ","B�ng Lam Huy�n Tinh ","Xuy�n Y Ph� Gi�p ",1},
{"Skill n�o h� tr� skill 9x V� �ang Kh� ? ","V� Ng� V� Ki�m ","Tam Ho�n Th�o Nguy�t ","Ki�m Phi kinh Thi�n ","Nh�n Ki�m H�p Nh�t ",1},
{"Skill 6x �ao c�a Thi�u L�m t�n g� ? ","Ma Ha V� L��ng ","Long Tr�o H� Tr�o ","Ho�nh T�o L�c H�p ","S� T� H�ng ",1},
{"Skill kh�ng t�t c� c�a Thi�u l�m t�n g� ? ","D�ch C�n Kinh ","Nh� Lai Thi�n �i�p ","La H�n Tr�n ","B�t ��ng Minh V��ng ",1},
{"Skill tr�n ph�i Thi�n Nh�n t�n g� ? ","Thi�n Ma Gi�i Th� ","Phi H�ng V� T�ch ","B� T� Thanh Phong ","Ma Di�m Th�t S�t ",1},
{"Ph�m t�t n�o b�t nhanh Giao D�ch ? ","Ph�m O ","Ph�m P ","Ph�m K ","Ph�m L ",1},
{"Phim t�t n�o b�t nhanh T� ��i ? ","Ph�m P ","Ph�m T ","Ph�m K ","Ph�m L ",1},
{"Ph�m t�t n�o b�t H� Tr� Game ? ","Ph�m F1 ","Ph�m F2 ","Ph�m F3 ","Ph�m F4 ",1},
{"Ph�m t�t n�o b�t H�nh Trang ? ","Ph�m F4 ","Ph�m F3 ","Ph�m F5 ","Ph�m F2 ",1}, -- 20
{"Phim t�t n�o b�t H�o H�u ? ","Ph�m F6 ","Ph�m F3 ","Ph�m F4 ","Ph�m F5 ",1},
{"Phim t�t n�o b�t B�ng Skill ? ","Ph�m F5 ","Ph�m F3 ","Ph�m F4 ","Ph�m F6 ",1},
{"NPC nh�n nhi�m v� s�t th� t�n g� ? ","Nhi�p Th� Tr�n ","H� Tr� T�n Th� ","���ngng B�t Nhi�m ","Xa phu ",1},
{"V��t �i m�t ng�y nh�n v�t �i ���c m�y l�n ? ","1 l�n ","2 l�n ","3 l�n ","4 l�n ",1},
{"Ng�a n�o sinh l�c nhi�u nh�t trong c�c lo�i sau ?","X�ch Th�","Tuy�t �nh","� V�n ��p Tuy�t","��ch L�",1},
{"L�u Th�y l� skill c�a ph�i n�o","Nga My","V� �ang","Th�y Y�n","Thi�n V��ng",1},
{"Skill Ngo�i C�ng 9x c�a V� �ang l� g� ?","Nh�n Ki�m H�p Nh�t","Thi�n ��a V� C�c","Tam Ho�ng Thao Nguy�t","V� �ang Ki�m Ph�p",1},
{"Huy�n Gi�c l� boss Ho�ng Kim m�n ph�i g� ?","Thi�u L�m","Ng� ��c","C�n L�n","Thi�n Nh�n",1},
{"M�t set Kim Phong g�m bao nhi�u m�n ?","9 m�n","10 m�n","6 m�n","4 m�n",1},
{"Gi� tr� Ph�ng Th� V�t L� t�i �a c�a m�i trang b� Xanh l� bao nhi�u ?","25","22","15","19",1}, -- 30
{"M�t ng�y 1 nh�n v�t �c nh�n t�i �a l� bao nhi�u Boss S�t Th� ?","8","12","5","1",1},
{"M�t ng�y c� th� tr� l�i bao nhi�u c�u h�i Hoa ��ng ?","20","50","100","30",1},
{"Skill n�i c�ng 9x c�a Th�y Y�n l� g� ?","B�ng T�m Ti�n T�","B�ng Tung V� �nh","B�ng C�t Tuy�t T�m","Tuy�t �nh",1},
{"Th��ng c�p 10 c� t�n g�i l� g� ?","Ph� Thi�n K�ch","Ho�n T� Th��ng","Thi�t Th��ng","C�u Li�m Th��ng",1},
{"Ba L�ng Huy�n �i  Xe Phu t� ��u qua ?","T��ng D��ng","Ph��ng T��ng","Bi�n Kinh","Giang T�n Th�n",1},
{"T�c �� ��nh t�i �a c�a V� Kh� l� bao nhi�u?","30%","10%","20%","36%",1},
{"H� Kim t� k�ch thu�c t�nh �n 1 c�a Trang b� h� g� ?","Th�y","H�a","Th�","M�c",1},
{"Skill t�ng t�c �� ch�y c�a Nga My t�n l� g�?","L�u Th�y","M�ng �i�p","Ph�t T�m T� H�u","Thanh �m Ph�n X��ng",1},
{"Kh�ng T�t C� t�i �a c�a D�y chuy�n xanh l� bao nhi�u?","20","18","15","16",1},
{"Skill b�a 9x c�a Ng� ��c t�n l� g�?","�o�n H�n H� C�t","V�n ��c Th�c T�m","Xuy�n Y Ph� Gi�p","C�u Thi�n Cu�ng L�i",1}, -- 40
{"Skill t�ng Kh�ng ��c c�a Ng� ��c t�n g� ?","T�p Nan D��c Kinh","Ng� ��c K� Kinh","X�ch Di�m Th�c Thi�n","B�ch ��c Xuy�n T�m",1},
{"Ng�a B�n Ti�u c� m�u g�?","�en","Tr�ng","N�u","X�m",1},
{"T�ng Kim b�o danh tr��c m�y ph�t ?","15 ph�t","10 ph�t","5 ph�t","30 ph�t",1},
{"Thuy�n Phong L�ng �� kh�i h�nh v�o ph�t th� m�y?","10","20","15","25",1},
{"Ch��ng M�n ph�i Th�y Y�n l� ai ?","Do�n H�m Y�n","Y�n Hi�u Tr�i","Chung Linh T�","Do�n Thanh V�n",1},
{"��ng k� tham gia  Li�n ��u � ��u ?","S� Gi� Li�n ��u Ba L�ng Huy�n","S� Gi� Li�n ��u Chu Ti�n Tr�n","S� Gi� Li�n ��u  T��ng D��ng","S� Gi� Li�n ��u Ph��ng T��ng",1},
{"Li�n ��u 1 ng�y c� m�y tr�n?","4","5","6","7",1},
{"3 ng�y cu�i tu�n di�n ra m�y tr�n Li�n ��u ?","8","4","6","5",1},
{"V� L�m Li�n ��u Qu�n Qu�n l� danh hi�u c�a Li�n ��u h�ng m�y ?","1","4","3","2",1},
{"H�n ch� v� kh� c�a chi�u th�c B�o V� L� Hoa l� g�?","T� Ti�n","Ki�m","�ao","B�ng",1}, -- 50
{"Option Ph�c H�i N�i L�c ch� c� tr�n trang b� n�o ?","Ng�c B�i","Nh�n","�o","�ai l�ng",1},
{"Option Ph�c H�i Th� L�c ch� c� tr�n trang b� n�o ?","D�y chuy�n, nh�n","�o, n�n","�ai l�ng, bao tay","Gi�y",1},
{"Option Ph�c H�i Sinh L�c ch� c� tr�n trang b�?","�o, n�n, �ai l�ng, gi�y, bao tay","D�y chuy�n, nh�n, ng�c b�i","V� kh� ","Ng�a",1}, -- Thieu 1
{"���ng Ngh� Gi�p l� trang b� y�u c�u S�c M�nh bao nhi�u?","260","210","165","110",1},
{"�� Ch�nh X�c t�i �a c�a V� Kh� l� bao nhi�u?","300","255","200","100",1},
{"H�t N�i L�c ch� c� t�c d�ng v�i ?","Ngo�i C�ng","N�i C�ng","N�i C�ng v� Ngo�i C�ng","Kh�ng c� t�c d�ng trong server",1}, -- sai
{"M�n ph�i n�o s� d�ng Sinh L�c �� thi tri�n v� c�ng?","Thi�n V��ng Bang","Thi�n Nh�n Gi�o","C�i Bang","Nga My",1},
{"Ph� �� Ch�ng Sinh kh�ng t�t c� t�i �a l� bao nhi�u?","40","30","25","35",1},
{"B�n �ang tham gia ho�t ��ng g�?","Hoa ��ng","T�ng Kim","D� T�u","V�n Ti�u",1},
{"Ti�n Th�o L� c� t�c d�ng g� ?","x2 Kinh Nghi�m ","x2 luy�n k� n�ng","x2 D� t�u","x2 T�ng Kim",1}, -- 60
{"N�ng c�p trang b� c�n Th�y Tinh g�?","T� Th�y Tinh","L�c Th�y Tinh","Lam Th�y Tinh","T�t c� ph��ng an ��u ���c",1},
{"H� c�p trang b� c�n Th�y Tinh g�?","L�c Th�y Tinh","T� Th�y Tinh","Lam Th�y Tinh","T�t c� ph��ng an ��u ���c",1},
{"Thay ��i trang b� c�n Th�y Tinh g�?","Lam Th�y Tinh","L�c Th�y Tinh","T� Th�y Tinh","T�t c� ph��ng an ��u ���c",1},
{"M�t ng�y s�n t�i �a bao nhi�u con boss S�t Th�?","8","4","1","6",1},
{"Skill t�ng t�c �� ch�y c�a V� �ang l� g�?","Th� V�n Tung","Th�t Tinh Tr�n","T�a Vong V� Ng�","Tam Ho�n Thao Nguy�t",1},
{"Skill t�ng �� ch�nh x�c c�a Thi�n V��ng l� g�?","T�nh T�m Quy�t","Kim Chung Tr�o","�o�t H�n Th�ch","Thi�n V��ng Chi�n � ",1},
{"Nh�ng m�n ph�i thu�c m�u phe Ch�nh Ph�i ?","Kh�ng c� ph��ng �n ��ng","Thi�u L�m, Nga My, V� �ang, C�n L�n","Thi�n V��ng, Th�y Y�n, ���ng M�n","Thi�n Nh�n, Ng� ��c, C�i Bang",1},
{"Skill t�ng t�c �� ch�y c�a C�i Bang l� g�?","Ho�t B�t L�u Th�","T�y �i�p Cu�ng V� ","Ti�u Di�u C�ng","H�a Di�m Vi Di",1},
{"Skill gi�m hi�u �ng l�m ch�m, l�m cho�ng c�a C�n L�n l� g�?","M� Tung �o �nh","Kh� H�n Ng�o Tuy�t","B�c Minh ��o H�i","Th�c Ph��c Ch�",1},
{"Skill 1x h� tr� t�ng S�t Th��ng V�t L� cho c� 3 ���ng ngo�i c�ng c�a ���ng M�n t�n l� g� ?","���ng M�n �m Kh� ","T�ch L�ch ��n","��a Di�m H�a","��c Th�ch C�t",1}, -- 70
{"G�p ai �� h�y trang b� kh�a v�nh vi�n ?","Th� R�n","Hi�u Thu�c","T�p H�a","B�n Ng�a",1},
{"Set Hi�p C�t c� m�y m�n?","4","5","3","6",1},
{"Nh�n Hi�p C�t t�ng S�c M�nh t�i �a l� bao nhi�u?","24","22","23","20",1},
{"V�t ph�m n�o t�ng 5 �i�m ti�m n�ng khi s� d�ng?","T�y T�y Kinh","V� L�m M�t T�ch","Thi�t La H�n","B�n Nh��c T�m Kinh",1},
{"V�t ph�m n�o t�y h�t �i�m kinh nghi�m �m?","B�n Nh��c T�m Kinh","Thi�t La H�n","V� L�m M�t T�ch","T�y T�y Kinh",1},
{"V�t ph�m n�o t�ng 1 �i�m k� n�ng khi s� d�ng?","V� L�m M�t T�ch","T�y T�y Kinh","B�n Nh��c T�m Kinh","Thi�t La H�n",1},
{"���c s� d�ng t�i �a l� bao nhi�u cu�n V� L�m M�t T�ch?","10","5","15","20",1},
{"���c s� d�ng t�i �a l� bao nhi�u cu�n T�y T�y Kinh?","5","15","10","20",1},
{"Bao nhi�u Nh�c V��ng H�n Th�ch ��i ���c Nh�c V��ng Ki�m ? ","10 vien ","30 vien ","20 vien ","50 vien ",1},
{"Bao nhi�u �i�m t�ch l�y m�i l�n ���c Hi�u �y ? ","1500 ","1000 ","200 ","500 ",1}, -- 80
{"Bao nhi�u �i�m t�ch l�y m�i l�n ���c Th�ng L�nh ? ","3000 ","1000 ","1500 ","2500 ",1},
{"T�n NPC gia nh�p m�n ph�i Thi�u L�m ? ","Thi�u L�m La H�n ","Thi�u L�m ��t Ma ","Thi�u L�m Chi�u Sinh ","Thi�u L�m Tu Tr� ",1},
{"T�n NPC gia nh�p m�n ph�i Thi�n V��ng ? ","Thi�n V��ng T��ng L�nh ","Thi�n V��ng Chi�u Sinh ","Thi�n V��ng T��ng Qu�n ","���ng Thi�t T�m ",1},
{"T�n NPC gia nh�p m�n ph�i V� �ang ? ","V� �ang ��o Nh�n ","Tr��ng Tam Phong ","Tr��ng Thi�t Tam ","V� �ang Chi�u Sinh ",1},
{"T�n NPC gia nh�p m�n ph�i Nga My ? ","Nga My C�m Y Ni ","Nga My Chi�u Sinh ","Nga My Y Ni ","Nga My Ni C� ",1},
{"T�n NPC gia nh�p m�n ph�i Th�y Y�n ? ","Th�y Y�n Hoa S� ","Th�y Y�n Hoa N� ","Th�y Y�n Hoa Lan ","Th�y Y�n Chi�u Sinh ",1},
{"T�n NPC gia nh�p m�n ph�i C�n L�n ? ","C�n L�n H� Ph�p ","C�n L�n La H�n ","C�n L�n Chi�u Sinh ","C�n L�n ��o S� ",1},
{"T�n NPC gia nh�p m�n ph�i C�i Bang ? ","�� T� C�i Bang ","C�i Bang Chi�u Sinh ","K� �n M�y  ","C�i Bang Tr��ng L�o ",1},
{"Ng� h�nh c� bao nhi�u h�? ","5 ","6 ","4 ","7 ",1},
{"�� ��i m�u c�n ch�n NPC n�o? ","H� tr� T�n Th� ","Nhi�p Th� Tr�n ","K� Tr�n C�c ","Xa Phu ",1}, -- 90
{"B�n �ang tham gia event g�? ","Hoa ��ng ","T�ng Kim ","V��t �i ","Tr�ng C�y ",1},
{"M�u luy�n c�ng l� m�u g� ","Tr�ng ","Cam ","Xanh ","�� ",1},
{"M�u ch�nh ph�i l� m�u g� ","Cam ","Xanh","��","Tr�ng",1},
{"M�u t� ph�i l� m�u g� ","T�m","Xanh","��","Tr�ng",1},
{"M�u trung l�p l� m�u g� ","Xanh","T�m","��","Tr�ng",1},
{"Nga My h�? ","Th�y ","Th� ","Kim ","M�c ",1},
{"Skill tr�n ph�i c�a Ng� ��c t�n l� g�  ","Ng� ��c k� kinh  ","Xuy�n t�m ��c th�ch  ","V� h�nh ��c  ","�o�n c�n h� c�t ",1},
{"Skill n�o sau d�y kh�ng ph�i l� b�a ch� c�a Thi�n nh�n  ","Ma di�m th�t s�t  ","�o �nh phi h�  ","Phi h�ng v� t�ch  ","Nhi�p h�n lo�n t�m ",1},
{"V� L�m c� bao nhi�u m�n ph�i ? ","10 ph�i ","11 ph�i ","12 ph�i ","8 ph�i ",1},
{"�i�m ti�m n�ng s�c m�nh kh�ng t�ng g� ? ","N�i l�c ","Sinh kh� ","L�c tay ","S�t Th��ng",1}, -- 100
{"Ng�a n�o ch�y nhanh nh�t trong c�c l�ai sau: ","Chi�u D� ","� V�n ��p Tuy�t ","��ch L� ","Tuy�t �nh ",1},
{"Skill t�ng t�c �� ch�y c�a Nga Mi c� t�n l� g�  ","L�u th�y  ","M�ng di�p  ","Ph�t t�m t� h�  ","Ph�t quang ph� chi�u ",1},
{"Skill t�ng t�c �� ch�y c�a V� �ang c� t�n l� g�  ","Th� v�n tung  ","Th�t tinh tr�n  ","T�a v�ng v� ng�  ","Th�i c�c th�n c�ng ",1},
{"Khi V��t �i Nh�m ���c Pt �t nh�t bao nhi�u ng��i? ","6 ng��i ","7 ng��i ","8 ng��i ","5 ng��i ",1},
{"V��t �i c� bao nhi�u �i ","18 ","15 ","16 ","17 ",1},
{"�� t�y �i�m ti�m n�ng c�n c� g�? ","6 vi�n Tinh H�ng Bao Th�ch ","6 vi�n huy�n tinh 1 ","3 th�y tinh kh�c m�u ","3 cu�n t�y t�y kinh ",1},
{"B� An Bang g�m bao nhi�u m�n? ","4 ","5 ","6 ","7 ",1},
{"Item g� �� x2 luy�n skill? ","N� nhi h�ng ","Ti�n th�o l� ","Lam th�y tinh ","Th� ��a ph� ",1},
{"Item nh�n ��i kinh nghi�m t�n g�? ","Ti�n th�o l� ","Huy�n tinh c�p 10 ","N� nhi h�ng ","Th�y tinh ",1}, -- 110
{"Lo�i ng�a c� kh�ng t�t c� 10 t�n g�? ","Phi�n V� ","Chi�u D� ","B�n Ti�u ","Phi V�n ",1},
{"M�t ng�y c� th� s�n ���c bao nhi�u con boss s�t th�? ","8 ","9 ","18 ","16 ",1},
{"Skill tr�n ph�i c�a C�n L�n l�   ","S��ng Ng�o C�n L�n  ","Cu�ng Phong S�u �i�n  ","T�y Ti�n T� C�t  ","B�c minh ��o h�i ",1},
{"Skill tr�n ph�i c�a thi�u l�m t�n l� g�  ","Nh� lai thi�n di�p  ","D�ch C�n Kinh  ","Ph� thi�n tr�m  ","Truy tinh tr�c nguy�t ",1},
{"Skill h� tr� c�a thi�u l�m quy�n  ","H�ng long b�t v�  ","D�ch C�n Kinh","Ma ha v� l��ng  ","��t ma �� giang ",1},
{"Skill n�o sau ��y kh�ng h� tr� cho ���ng m�n b�y  ","�m kh� ���ng m�n  ","��a di�m h�a  ","Xuy�n t�m th�ch  ","H�n b�ng th�ch ",1},
{"Skill tr�n ph�i c�a thi�u l�m t�n l� g�  ","Nh� lai thi�n �i�p  ","d�ch ch�n kinh�o  ","Ph� thi�n tr�m  ","Truy tinh tr�c huy�t ",1},
{"Skill 9x c�a ���ng m�n phi �ao  ","Nhi�p h�n nguy�t �nh  ","T�n hoa ti�u  ","B�o v� l� hoa  ","Truy t�m ti�n ",1},
{"Tham gia T�ng Kim t�i NPC n�o ? ","T�ng Kim M� Binh ","T�ng Kim Chi�u Binh ","T�ng Kim Tuy�n Binh ","T�ng Kim Ch�n Binh ",1},
{"Skill 9x �ao c�a C�n L�n t�n g�   ","Ng�o tuy�t ti�u phong  ","L�i ��ng c�u thi�n  ","S��ng ng�o c�n l�n  ","Cu�ng phong s�u �i�n ",1}, -- 120
{"Skill 9x c�a n�i c�ng c�a c�n l�n   ","L�i ��ng c�u thi�n  ","L��ng nghi ch�n kh�  ","S��ng ng�o c�n l�n  ","Nh�t kh� tam thanh ",1},
{"Skill t�ng t�c �� ch�y c�a C�n L�n c� t�n l� g�  ","Thanh phong ph�  ","K� b�n ph�  ","B�c Minh ��o H�i  ","Kh� h�n ng�o tuy�t ",1},
{"Skill tr�n ph�i c�a thi�n v��ng t�n l� g�  ","Thi�n v��ng chi�n �  ","Kim chung tr�o  ","Truy phong quy�t  ","Truy tinh tr�c huy�t ",1},
{"Skill 9x thi�u l�m �ao ph�p  ","V� t��ng tr�m  ","Ph� thi�n tr�m  ","��t Ma h� giang  ","Ho�nh t�o thi�n qu�n ",1},
{"Skill tr�n ph�i c�a ���ng m�n t�n l� g�  ","T�m nh�n  ","�m kh� ���ng m�n  ","Thi�n la ��a v�ng  ","Truy t�m ti�n ",1},
{"Skill 9x c�a ng� ��c ch��ng  ","�m phong th�c c�t  ","�o�n c�n h� c�t  ","Ng� ��c ch��ng ph�p  ","B�ch ��c xuy�n t�m ",1},
{"Skill 6x h� tr� ng� ��c �ao  ","Chu c�p thanh minh  ","Ng� ��c �ao ph�p  ","Huy�t �ao ��c s�t  ","B�ch ��c xuy�n t�m ",1},
{"Skill 6x h� tr� Nga mi ch��ng  ","Ph�t quang ph� chi�u  ","B�t di�t b�t tuy�t  ","Th�i song v�ng nguy�t  ","Nga mi ch��ng ph�p ",1},
{"Skill t�ng kh�ng t�t c� c�a Nga Mi  ","Ph� �� ch�ng sinh  ","L�u th�y  ","M�ng �i�p  ","T� h�ng ph� �� ",1},
{"T�ng 2 c�a skill 9x Nga mi ki�m t�n l� g�  ","Ng�c tuy�t t�y tr�n  ","Tam nga t� tuy�t  ","Phong s��ng t�i �nh  ","Ph� �� ch�ng sinh ",1}, -- 130
{"Skill 6x n�o h� tr� v� ki�m  ","Tam ho�nh thao nguy�t  ","V� ng� v� ki�m  ","N� l�i ch�  ","V� �ang quy�n ph�p ",1},
{"Ph�ng th� v�y l� ch� c� tr�n trang b� h� g�  ","H�a  ","th�y  ","Th�  ","M�c ",1},
{"Th�i gian l�m ch�m l� hi�u �ng c� tr�n trang b� h�  ","H�a  ","M�c  ","Th�y  ","Th� ",1},
{"Th�i gian cho�ng c� tr�n trang b� h�  ","Th�y  ","H�a  ","Th�  ","M�c ",1},
{"Th�i gian tr�ng ��c l� hi�u �ng c� tr�n trang b� h�  ","Th�  ","M�c  ","H�a  ","Th�y ",1},
{"May m�n ch� c� tr�n trang b� n�o  ","D�y chuy�n  ","�o  ","Th�t l�ng  ","Gi�y ",1},
{"May m�n l� thu�c t�nh ch� c� tr�n trang b� h�  ","M�c  ","Th�y  ","H�a  ","Th� ",1},
{"B� ��nh Qu�c g�m bao nhi�u m�n  ","5  ","6  ","4  ","3 ",1},
{"Hi�u �ng th�i gian ph�c h�i t�i �a trang b� ��nh Qu�c l�  ","50  ","49  ","47  ","40 ",1},
{"C� t�t c� bao nhi�u trang b� c� hi�u �ng may m�n  ","4  ","5  ","3  ","2 ",1}, -- 140
{"Gi� tr� may m�n t�i �a c�a 1 trang b� l�  ","10%  ","40%  ","9%  ","30% ",1},
{"M�t ng�y c� th� l�m ���c t�i �a bao nhi�u nhi�m v� d� t�u  ","20  ","50  ","30  ","40 ",1},
{"H� n�o ch� c� nh�n v�t l� n�  ","Th�y  ","H�a  ","Th�  ","M�c ",1},
{"H� n�o ch� c� nh�n v�t nam  ","Kim  ","Th�y  ","H�a  ","Th� ",1},
{"M�t trang b� h� th�y kh�ng th� c�  ","kh�ng l�i ","kh�ng h�a  ","th�i gian cho�ng  ","cho�ng h�a s�t th��ng th�nh n�i l�c ",1},
{"M�i tr�n t�ng kim k�o d�i bao nhi�u ph�t  ","60  ","45  ","30  ","15 ",1},
{"Tr� nhi�m v� boss s�t th� s� d��c bao nhi�u �i�m danh v�ng  ","2  ","1  ","3  ","4 ",1},
{"Th�i gian xu�t hi�n boss ��i ho�ng kim  ","21h00  ","9h00  ","20h30  ","20h00 ",1},
{"V� kh� B�ng S�t N�i C�ng thu�c h�"," Th�y"," M�c","Th�","H�a",1},
{"Ch� s� t�i �a c�a thu�c t�nh H�a S�t N�i C�ng l� ","200","100","150","50",1}, -- 150
{"Ch� s� t�i �a c�a thu�c t�nh B�ng S�t N�i C�ng l� ","200","100","150","50",1},
{"Ch� s� t�i �a c�a thu�c t�nh L�i S�t N�i C�ng l� ","200","100","150","50",1},
{"Ch� s� t�i �a c�a thu�c t�nh S�t Th��ng V�t L� S�t N�i C�ng l� ","200","100","150","50",1},
{"Ch� s� t�i �a c�a thu�c t�nh ��c S�t N�i C�ng l� ","50","100","150","200",1},
{"V� kh� H�a S�t N�i C�ng thu�c h� "," H�a"," M�c","Th� ","Th�y",1},
{"V� kh� L�i S�t N�i C�ng thu�c h� "," Th� "," M�c","H�a","Kim",1},
{"V� kh� ��c S�t N�i C�ng thu�c h� "," M�c"," Th� ","H�a","Th�y",1},
{"H� Kim g�m c� ","Thi�u L�m v� Thi�n V��ng Bang","Nga My v� Th�y Y�n","���ng M�n v� Ng� ��c","V� �ang v� C�n L�n",1}, 
{"H� Th�y g�m c� ","Nga My v� Th�y Y�n","���ng M�n v� Ng� ��c","V� �ang v� C�n L�n","Thi�u L�m v� Thi�n V��ng Bang",1},
{"H� M�c g�m c� ","���ng M�n v� Ng� ��c","C�i Bang v� Thi�n Nh�n Gi�o","Thi�u L�m v� Thi�n V��ng Bang","Nga My v� Th�y Y�n",1},-- 140
{"H� H�a g�m c� ","C�i Bang v� Thi�n Nh�n Gi�o","���ng M�n v� Ng� ��c","V� �ang v� C�n L�n","Thi�u L�m v� Thi�n V��ng Bang",1},
{"H� Th� g�m c� ","V� �ang v� C�n L�n","���ng M�n v� Ng� ��c","Nga My v� Th�y Y�n","Thi�u L�m v� Thi�n V��ng Bang",1},
{"Skill 9x b�a c�a thi�n nh�n  ","Nhi�p h�n lo�n t�m  ","V�n long k�ch  ","Thi�n ma gi�i th�  ","Ma �m ph� ph�ch ",1},
{"Skill n�o t�ng �� ch�nh x�c c�a v� �ang  ","Th�t tinh tr�n  ","Th� v�n tung  ","T�a v�ng v� ng�  ","Th�i c�c th�n c�ng ",1},
{"Skill b�a t�ng kh�ng c�a c�n l�n  ","Thi�n Thanh ��a Tr�c  ","S��ng ng�o c�n l�n  ","T�y ti�n t� c�tt  ","Thanh phong ph� ",1},
{"Skill kh�ng ph�n ��n c�a c�n l�n c� t�n l�  ","Huy�n thi�n v� c�c  ","Thi�n thanh ��a tr�c  ","Thanh phong ph�  ","M� tung �o �nh ",1},
{"Skill b�a n�o c�a c�n l�n l�m gi�m t�c �� di chuy�n  ","K� b�n ph�  ","Thanh phong ph�  ","S��ng ng�o c�n l�n  ","M� tung �o �nh ",1},
{"Skill 6x h� tr� Nga mi ch��ng  ","Ph�t quang ph� chi�u  ","B�t di�t b�t tuy�t  ","Th�i song v�ng nguy�t  ","Nga mi ch��ng ph�p ",1},
{"Skill g�y cho�ng cho ��i ph��ng c�a c�n l�n l�  ","Kh� tam ph�  ","S��ng ng�o c�n l�n  ","K� b�n ph�  ","Thanh phong ph� ",1},
{"B� Th�y Tinh c� m�y m�u","3","4","5","2",1}, -- 150
{"B� Tinh H�ng B�o Th�ch g�m m�y vi�n","6","4","5","3",1},
{"T�n NPC qu�n l� Kim Nguy�n B�o l� ","Ch� Ti�n Trang","Ti�m Kim Ho�n","Ch� Ti�m V�ng","Kim B�o ��i Nh�n",1},
{"Ch�y c�p 10 t�n l� ","Ph� Thi�n Ch�y","Kim Qua Ch�y","Nghi�t Long Ch�y","H�m Thi�n Ch�y",1},
{"�ao c�p 10 t�n l� ","��i Phong �ao","C�n Ch�u B�o �ao","Thanh Long �ao","Ph� Phong �ao",1},
{"C� t�t c� m�y lo�i b�nh Ph�c Duy�n","3","4","2","5",1},
{"Gi� tr� t�i �a c�a option H�t Sinh L�c l� ","10","5","15","20",1},
{"Gi� tr� t�i �a c�a option H�t N�i L�c l� ","10","5","15","20",1},
{"M�n ph�i m� D��ng Qu� gia nh�p ��u ti�n l� ","To�n Ch�n","C� M� ","Thi�u L�m","V� �ang",2},
{"Nguy�t Nha �ao l� �ao c�p m�y?","5","7","4","1",2},
{"NPC b�n thu�c trong T�ng Kim t�n g� ? ","Kim Qu�n Nhu ","Kim Qu�n Qu�n ","Kim Qu�n ","Kim Nhu ",2}, -- 160
{"V� Kh� k�ch ���c thu�c t�nh �n cho trang b� n�o ? ","Gi�y ","N�n ","�o ","Th�t L�ng ",2},
{"D�y chuy�n k�ch ���c thu�c t�nh �n cho trang bi n�o ? ","V� kh� ","�o ","Th�t L�ng ","Gi�y ",2},
{"Ng�a n�o trong ��y c� m�u n�u: ","��ch L� ","Chi�u D� ","� V�n ��p Tuy�t ","Tuy�t �nh ",2},
{"�� nh�n nhi�m v� s�t th� b�n c�n c� bao nhi�u ti�n? ","5000 l��ng ","50000 l��ng ","1000 l��ng  ","100 l��ng ",2},
{"B� k�p 12x c�a ���ng M�n t�n g�? ","M� �nh Tung ","Xu�t � B�t Nhi�m ","B� Nguy�t Ph�t Tr�n ","��o H� Thi�n ",2},
{"B� k�p 12x c�a Nga My t�n g�? ","B� Nguy�t Ph�t Tr�n ","M� �nh Tung ","Xu�t � B�t Nhi�m ","��o H� Thi�n ",2},
{"B� k�p 12x c�a V� �ang t�n g�? ","Xu�t � B�t Nhi�m ","M� �nh Tung ","B� Nguy�t Ph�t Tr�n ","��o H�  Thi�n ",2},
{"B� k�p 12x c�a Thi�n V��ng t�n g� ","��o H� Thi�n ","Xu�t � B�t Nhi�m ","M� �nh Tung ","B� Nguy�t Ph�t Tr�n ",2},
{"B� k�p 12x c�a Thi�u L�m t�n g�? ","��i Th�a Nh� Lai Ch� ","��o H� Thi�n ","Xu�t � B�t Nhi�m ","M� �nh Tung ",2},
{"B� k�p 12x c�a Ng� ��c t�n g�? ","H�p Tinh Y�m ","Xu�t � B�t Nhi�m ","Ng� Tuy�t �n ","M� H�n �nh ",2}, -- 170
{"B� k�p 12x c�a Th�y Y�n t�n g�? ","Ng� Tuy�t �n ","��i Th�a Nh� Lai Ch� ","��o H� Thi�n ","Xu�t � B�t Nhi�m ",2},
{"B� k�p 12x c�a C�i Bang t�n g�? ","H�n Thi�n kh� C�ng ","��i Th�a Nh� Lai Ch� ","��o H� Thi�n ","H�p Tinh Y�m ",2},
{"B� k�p 12x c�a Thi�n Nh�n  t�n g�? ","Ma �m Ph� Ph�ch ","H�n Thi�n kh� C�ng ","��i Th�a Nh� Lai Ch� ","��o H� Thi�n ",2},
{"B� k�p 12x c�a C�n L�n  t�n g�? ","L��ng Nghi Ch�n Kh�  ","H�n Thi�n kh� C�ng ","��i Th�a Nh� Lai Ch�  ","��o H� Thi�n ",2},
{"�i�m �� l�n ���c ��i T��ng trong T�ng Kim l� bao nhi�u?  ","10000 �i�m ","5000 �i�m ","3000 �i�m ","8000 �i�m ",2},
{"T�ng th� 2 c�a skill Nga Mi ch��ng t�n l�  ","Kim ��nh ph�t quang  ","Phong s��ng t�i �nh  ","Tam nga t� tuy�t  ","Ng�c tuy�t t�y tr�n ",2},
{"H� th�y m�c trang b� h� g� s� t� k�ch ���c �n 1 c�a trang b�  ","M�c  ","H�a  ","Th�  ","Th�y ",2},
{"Ai l� ng��i c��p �i s� trong tr�ng c�a Ti�u Long N�","Do�n Ch� B�nh","D��ng Qu�","C�ng T�n Ch�","C�u Thi�n Nh�n",2},
{"Ng��i ta th��ng so s�nh B�c Ki�u Phong v�i","Nam M� Dung","Nam S�i G�n","Nam �o�n D�","Nam Th�n Long",2},
{"C�i g� c�ng r�a c�ng d�","N��c","��t","C�t","��",2}, -- 180
{"Con g� c� l��i nh�ng kh�ng c� m�m","Con Dao","Con C�","Con M�o","Con C� Cu�ng",2},
{"Trang b� th��ng n�o kh�ng ph�n bi�t nam v� n�  ","Th�t l�ng  ","�o  ","N�n  ","Bao tay ",2},
{"Gi�y c� th� k�ch ���c thu�c t�nh �n c�a  ","Ng�c b�i  ","Nh�n tr�n  ","Th�t l�ng  ","�o ",2},
{"Th�t l�ng k�ch ���c thu�c t�nh c�a   ","�o  ","V� kh�  ","Gi�y  ","Ng�c b�i ",2},
{"Option n�o ch� c� � Ng�c b�i v� H��ng Nang","Ph�c h�i n�i l�c","Sinh l�c","N�i l�c","Ph�c h�i sinh l�c",2},
{"Kh�ng t�t c� t�i �a c�a Ng�c B�i Hi�p C�t","5","3","15","10",2},
{"Thanh ki�m g�n li�n v�i t�n tu�i c�a D��ng Qu� ","Huy�n Thi�t Tr�ng Ki�m", "� Thi�n Ki�m","Tuy�t Th� H�o Ki�m","Anh H�ng Ki�m",2},
{"Bi�t hi�u c�a T� T�n l� ","Kim Mao S� V��ng","Thanh D�c B�c V��ng","T� Sam Long V��ng","B�ch Mi �ng V��ng",2},
{"Tr��ng V� K� l� con trai c�a Tr��ng Th�y S�n v� ","�n T� T�","Kim Hoa B� B�","Ti�u Long N�","Ki�n Ninh C�ng Ch�a",2},
{"L�ng Ba Vi B� l� tuy�t k� c�a ph�i ","Ti�u Dao","Kh�ng ��ng","Tinh T�c","Minh Gi�o",2}, -- 190
{"�m Nhi�n Ti�u H�n Ch��ng l� b� v� c�ng do ai s�ng t�o ","D��ng Qu� ","L�nh H� Xung","Vi Ti�u B�o","Ki�u Phong",2},
{"Qu�ch T�nh v� Ho�ng Dung d�nh c� ��i �� tr�n th� th�nh","T��ng D��ng","Bi�n Kinh","L�m An","Ph��ng T��ng",2},
{"Bi�t hi�u c�a Tr��ng Th�y S�n, cha c�a Tr��ng V� K� l� ","Thi�t Ho�ch Ng�n C�u","V� �ang ��i Hi�p","Tr��ng ��i Hi�p","Phong L�m H�a S�n",2},
{"Bi�t hi�u c�a Nhi�p Phong l� ","Phong Trung Chi Th�n","L�ng T� Phong Tr�n","Cu�ng �ao","Phong Th�n",2},
{"C�p M� C�ng l� do ai s�ng t�o","�u D��ng Phong","D��ng Tr�ng V��ng","�o�n Tr� H�ng","Ho�ng D��c S� ",2},
{"Bi�t hi�u c�a B� Kinh V�n l� ","B�t Kh�c T� Th�n","Huy�t C�ng T�","Phi V�n ��i Hi�p","Ng�c Th� L�m Phong",2},
{"Boss Ho�ng Kim C�i Bang l�: ","H� Nh�n Ng�","�oan M�c Du�","Y�n Hi�u Tr�i","��o Thanh Ch�n Nh�n",2},
{"Boss Ho�ng Kim Thi�n Nh�n l�:","�oan M�c Du�","V��ng T�","Y�n Hi�u Tr�i","��o Thanh Ch�n Nh�n",2},
{"Boss Ho�ng Kim V� �ang l� ","��o Thanh Ch�n Nh�n","V��ng T�","Y�n Hi�u Tr�i","Li�u Thanh Thanh",2},
{"Boss Ho�ng Kim Th�y Y�n l� ","Y�n Hi�u Tr�i","��o Thanh Ch�n Nh�n","V��ng T�","Li�u Thanh Thanh",2}, -- 200
{"Boss Ho�ng Kim Nga My l� ","Thanh Tuy�t S� Th�i","��o Thanh Ch�n Nh�n","V��ng T�","Li�u Thanh Thanh",2},
{"Boss Ho�ng Kim Thi�n V��ng l� ","V��ng T�","��o Thanh Ch�n Nh�n","Huy�n Gi�c ��i S�","Li�u Thanh Thanh",2},
{"Boss Ho�ng Kim Thi�u L�m l� ","Huy�n Gi�c ��i S�","��o Thanh Ch�n Nh�n","C� B�ch","Li�u Thanh Thanh",2},
{"Boss Ho�ng Kim C�n L�n l� ","Tuy�n C� T�","��o Thanh Ch�n Nh�n","C� B�ch","Li�u Thanh Thanh",2},
{"Boss Ho�ng Kim ���ng M�n l� ","���ng B�t Nhi�m","��o Thanh Ch�n Nh�n","C� B�ch","V��ng T�",2},
{"Boss Ho�ng Kim ���ng M�n l� ","B�ch Doanh Doanh","��o Thanh Ch�n Nh�n","C� B�ch","V��ng T�",2}, 
{"Nh� v�n Kim Dung c� t�t c� bao nhi�u t�c ph�m","15","14","16","13",3},
{"C�p trang b� n�o h� tr� nhau �� k�ch thu�c t�nh ? ","Th�t l�ng - Nh�n d��i ","Th�t L�ng - Nh�n tr�n ","Th�t l�ng - D�y Chuy�n ","Th�t L�ng - Ng�c B�i ",3},
{"C�p trang b� n�o h� tr� nhau �� k�ch thu�c t�nh ? ","Trang ph�c - D�y chuy�n ","Trang ph�c - Ng�c b�i ","Trang ph�c - Nh�n tr�n ","Trang ph�c - Nh�n d��ii ",3},
{"C�p trang b� n�o h� tr� nhau �� k�ch thu�c t�nh ? ","Gi�y - Nh�n tr�n ","Gi�y - Nh�n d��i ","Gi�y - Ng�c b�i ","Gi�y - D�y chuy�n ",3}, -- 210
{"C�p trang b� n�o h� tr� nhau �� k�ch thu�c t�nh ? ","Bao tay - Ng�c b�i ","Bao tay - Nh�n tr�n ","Bao tay - Nh�n d��i ","Bao tay - D�y Chuy�n ",3},
{"C�p trang b� n�o h� tr� nhau �� k�ch thu�c t�nh ? "," N�n- V� Kh� ","N�n - Bao tay ","N�n - �o ","N�n - Th�t l�ng ",3},
{"B� K�p 9x c�c ph�i c� t�t c� bao nhi�u cu�n? ","28 cu�n ","30 cu�n ","20 cu�n ","25 cu�n ",3},
{"T�n th�i ni�n thi�u c�a Tr��ng Tam Phong l� ","Tr��ng Qu�n B�o","Tr��ng Th� Vinh","Tr��ng Th�y S�n","Tr��ng Qu�nh Anh",3},
{"Vi Ti�u B�o c� t�t c� m�y v� ?","7","8","9","10",3},
{"Tuy�t k� s� d�ng 2 tay l�m 2 vi�c kh�c nhau c�a Ch�u B� Th�ng l� ","Song Th� H� B�c","Song Th� Li�n Ho�n","Song Long H�p Th� ","Song Th� V� ��ch",3},
{"T�i Hoa S�n Lu�n Ki�m l�n 3, D��ng Qu� nh�n danh hi�u","T�y Cu�ng","T�y Thi�n","T�y T�ng","T�y ��c",3},
{"C�u th� ghi b�n trong tr�n chung k�t World Cup 2014 l� ","Mario Goetze","Lionel Messi","Cristiano Ronaldo","Thomas Muller",3},
{"C�u th� ghi b�n trong tr�n chung k�t Euro 2016 l� ","Eder","Quaresma","Cristiano Ronaldo","Dimitri Payet",3},
{"C�u th� ghi b�n trong tr�n chung k�t Euro 2008 l� ","Fernando Torres","David Villa","Andreas Iniesta","Xabi Alonso",3}, -- 220
{"C�u th� ghi b�n trong tr�n chung k�t World Cup 2010 l� ","Andreas Iniesta","Xavi","Arjen Robben","Robin Van Persie",3},
{"�i�m y�u c�a Achilles l� �: ","G�t ch�n","Tim","C� tay","X��ng ch�n",3},
{"Th� m�n huy�n tho�i c�a ��i tuy�n T�y Ban Nha l� ","Iker Casillas","David De Gea","Pepe Reina","Victor Valdes",3},
{"M�n v� thu�t g�n li�n v�i t�n tu�i Di�p V�n","V�nh Xu�n Quy�n","Di�p Gia Quy�n","Thi�u L�m Quy�n","Th�i C�c Quy�n",3},
{"B� k�p n�i c�ng gia truy�n m� Nhi�p Phong ���c h�c l� ","B�ng T�m Quy�t","C�u D��ng Th�n C�ng","Ng�c N� T�m Kinh","B�c Minh Th�n C�ng",3},
{"V� kh� c�a Nhi�p Phong t�n l� ","Tuy�t �m Cu�ng �ao","Th�nh H�a L�nh","Thi�n Long Th�n Ki�m","Nhi�p H�n �ao",3},
{"V� kh� c�a B� Kinh V�n t�n l� ","Tuy�t Th� H�o Ki�m","Anh H�ng Ki�m","M� Danh Chi Ki�m","T�m Ma Li�n Ho�n Th� ",3},
{"Tuy�t K� c�a Kim Lu�n Ph�p V��ng t�n l� ","Long T��ng B�t Nh� C�ng","Kim Lu�n Th�n C�ng","Ph�p V��ng Ch��ng","��t Ma C�ng",4},
{"V� kh� duy nh�t m� �� Long �ao v� � Thi�n Ki�m kh�ng th� ch�t g�y","Th�nh H�a L�nh","Tuy�t �m Cu�n �ao","Tuy�t Th� H�o Ki�m","H�a L�n Ki�m",4},
{"V� ��i hi�p c� bi�t hi�u T� Mi Mao l� ","L�c Ti�u Ph�ng","L� T�m Hoan","S� L�u H��ng","A Phi",4}, -- 230
{"L� B�t H� Ph�t l� c�u n�i �� ca ng�i ai ?","L� T�m Hoan","S� L�u H��ng","Nhi�p Phong","B� Kinh V�n",4},
{"Danh hi�u B�c Hi�p l� c�a","Qu�ch T�nh","H�ng Th�t C�ng","Ki�u Phong","Ho�ng Dung",4},
{"Cha nu�i c�a D��ng Qu� l� ","�u D��ng Phong","H�ng Th�t C�ng","Ho�ng D��c S�","Ch�u B� Th�ng",4},
{"B�t Hoang L�c H�p Duy Ng� ��c T�n C�ng l� tuy�t k� c�a","Thi�n S�n ��ng L�o","L� Thu Th�y","H� Tr�c","�inh Xu�n Thu",4},
{"Ai ���c cho l� ng��i s�ng t�c ra b� k�p C�u �m Ch�n Kinh","Ho�ng Th��ng","Chu Ch� Nh��c","��c C� C�u B�i","��ng Ph��ng B�t B�i", 4},
{"Tr��ng V� K� l� gi�o ch� ��i th� m�y c�a Minh Gi�o ?","34","33","35","36",4},
{"Tr��ng V� K� ���c sinh ra � ��u","B�ng H�a ��o","Linh X� ��o","N�i V� �ang","Minh Gi�o",4},
{"M�m b� m� kh�ng ph�i m�m b�. �� l� con g� ?","�c S�n","B� Con","H� M�","B� S�t",4},
{"V�a b�ng h�t ��, �n gi� c� l�ng. l� con g� ?","Con Ru�i","Con Mu�i","Con �om ��m","Con Ve",4},
{"Lebron James l� tuy�n th� NBA �ang ��u qu�n cho ��i","LA Lakers","Miami Heat","Golden State Warriors","Cleveland Cavaliers",4}, -- 240
{"Odell Beckham Jr l� v�n ��ng vi�n th� thao m�n","B�ng B�u D�c","B�ng ��","B�ng Ch�y","B�ng R�",4},
{"Stephen Curry mang s� �o m�y","30","9","10","27",4},
{"�� V�t WWE n�o c� bi�t danh The Rainbow Hair Warrior","Jeff Hardy","Randy Orton","John Cena","Rey Mysterio",4},
{"Chi�c L� Cu�i C�ng l� t�c ph�m v�n h�c c�a nh� v�n n�o ?","OHenry","Arthur Cronquist","Dana Gould","Dennies Hopper",4},
{"M�n �n tr� danh c�a ��u b�p n�i ti�ng Gordon RamSayNew l� ","Beef Wellington","Kobe Steak","Fruit Parfait","Beignets",4},
{"Foie Gras l� t� ch� m�n �n n�o","Gan Ng�ng","S��n C�u","C� Tuy�t H�p","C� Tr�ng",4},
{"Ai l� qu�n qu�n Master Chef Vi�t Nam m�a ��u ti�n","Thanh H�a","Th�i H�a","Qu�c Tr� ","Anh Th� ",4},
{"Ai l� qu�n qu�n Master Chef M� m�a ��u ti�n","Whitney Miller","Luca Manfe","Jennifer Behm","Claudia Sandoval",4},
{"Ai l� qu�n qu�n Master Chef Junior M� m�a ��u ti�n","Alexander Weiss","Logan Guleff","Nathan Odom","Jasmine Stewart",4},
{"Trong Harry Potter, ch�a t� Voldermort c� t�t c� bao nhi�u Tr��ng Sinh Linh Gi� ","7","4","10","5",4}, -- 250
{"T� ti�n c�a c�c v� th�n trong truy�n thuy�t Nh�t B�n l� ","Izanagi","Izanami","Amaterasu","Tsukuyomi",4},
{"Qu�i v�t Yamata no Orochi trong truy�n thuy�t Nh�t B�n l� con r�n c� m�t ��u","8","7","9","10",4},
{"Chi�n c�ng cu�i c�ng trong 12 chi�n c�ng c�a Hercules t�n l� ","B�t con ch� Cerberus","Con S� T� Nemea","Con r�n Hydra","Con nai � Cerynaea",4},
{"Phim �i�n �nh Ng��i Nh�n ��u ti�n do ai th� vai ch�nh ?","Tobey Maguire","Andrew Garfield","Tom Holland","Chris Evans",4},
{"Tam Qu�c t�n quy�","T� M� � ","Gia C�t L��ng","Tri�u T� Long","Quan V�n Tr��ng",4},
{"�a t�nh t� c� nan di h�n,�","D� h�n mi�n mi�n v� tuy�t k� ","D� h�n lao �ao v� tuy�t k� ","D� h�n luy�n thuy�n v� t�n k� ","D� h�n �au �au ��n t�n c�ng",4},
{"Con g�i c�a C�ng T�n Ch� v� C�u Thi�n X�ch l� ","C�ng T�n L�c Ng�c","C�ng T�n �a T�nh","C�ng T�n Hoa N�","C�ng T�n V� Song",4},
{"Con trai c�a Qu�ch T�nh v� Ho�ng Dung l� ","Qu�ch Ph� L�","Qu�ch Phi Long","Qu�ch Ch�nh H�ng","Qu�ch Ph� Thi�n",4},
{"Phu qu�n c�a Qu�ch Ph� l� ","Gia Lu�t T� ","Thi�u Nguy�n Qu�n","H�ng Thi�u Long","Tri�u Ch� K�nh",4},
{"Chi�u th�c h�p c�ng gi�a Nhi�p Phong v� B� Kinh V�n l� ","Ma Kha V� L��ng","Phong V�n H�p Th�","Phong V�n Xu�t Th� ","Phong Quy�n T�n V�n",4}, -- 260
{"T� Kh�t Nhi l� 1 trong nh�m 10 ng��i c� t�n g�i l� ","Th�p H� Qu�ng ��ng","Th�p H�ng Trung Hoa","Th�p ��i H�o Ki�t","Th�p ��i Tinh Hoa",4},
{"T�c gi� c�a b� truy�n tranh Naruto l� ","Kishimoto Masashi","Gosho Aoyama","Eiichiro Oda","Hatake Kakashi",4},
{"Nh�n v�t Star Lord trong v� tr� Marvel c� t�n th�t l� ","Peter Quill","Peter Paker","Chris Pratt","Stephen Strange",4},
{"Nh�n v�t ��i l�p v�i Deadpool c�a Marvel � v� tr� DC l� ","Deathstroke","Deadking","Deadman","Death",4},
{"Trong Th�n Tho�i B�c �u, Jormungand c�n ���c g�i l� ","World Serpent","Jor","Jormu","King of World",4},
{"B� phim Ng��i Trong Giang H� c� t�n g�c l� ","C� Ho�c T�","T�nh Huynh ��","T� H�i Giai Huynh ��","Tr�n H�o Nam truy�n k� ",4},
{"Con trai c�a Quan V� t�n l� ","Quan B�nh","Quan T�i","Quan Thi�n","Quan H�i",4},
{"Bi�t hi�u c�a M� Si�u trong Tam Qu�c Di�n Ngh�a l� ","C�m M� Si�u","��i M� Si�u","Th�n T��ng M� Si�u","Chi�n M� Si�u",4},
{"T�i ch��ng tr�nh �� V�t M� WWE, ai l� ng��i ph� v� chu�i b�t b�i c�a The Undertaker t�i WrestleMania","Brock Lesnar","John Cena","Roman Reigns","Triple H",4},
{"Trong b� truy�n tranh Naruto, t�n th�t c�a C�u V� H� Ly l� ","Kurama","Nine Tails","Shikamaru","Akamaru",4}, -- 270
{"Thanh ki�m g�n li�n v�i t�n tu�i c�a V� Danh trong t�c ph�m Phong V�n l� ","Anh H�ng Ki�m","V� Danh Ki�m","Phong V�n Ki�m","Thi�n H� Ki�m",4},

}