Include("\\script\\tongkim\\headtime.lua")
dstop = {}
function RunTimer1()
end
function RunTimer()
h = tonumber(date("%H"))
m = tonumber(date("%M"))
s = tonumber(date("%S"))

thoigian = h*100 + m
w,x,y = GetWorldPos()
hinhthuc = random(1,1)
RestMin = 60 - m
if returnTimeRandomMission() == 1 and GetGlbMissionV(60) == 0 then -- Bao Danh Tong Kim
	KhoiTaoMangTop()
	ShowTopClear()
	KhoiTaoLaiTongKim()
	SetGlbMissionV(61,random(1,30000))
	Msg2WorldById("Th�i gian b�o danh T�ng Kim ��i Chi�n ch�nh th�c b�t ��u, c�c nh�n s� h�y nhanh ch�n ��n M� Binh Quan �� v�o chi�n tr��ng !",60)
	if hinhthuc == 1 then
		SetGlbMissionV(60,500)
		AddGlobalCountNews("Chi�n d�ch T�ng Kim h�nh th�c C�u S�t �ang � giai �o�n b�o danh, v� v� l�m nh�n s� n�o mu�n tham gia th� h�y ��n T��ng D��ng ho�c Chu Ti�n tr�n �� v�o khu v�c b�o danh. Th�i gian khai chi�n c�n:"..RestMin.." ph�t !",1)
		Msg2SubWorld("Chi�n d�ch T�ng Kim h�nh th�c C�u S�t �ang � giai �o�n b�o danh, v� v� l�m nh�n s� n�o mu�n tham gia th� h�y ��n T��ng D��ng ho�c Chu Ti�n tr�n �� v�o khu v�c b�o danh. Th�i gian khai chi�n c�n:"..RestMin.." ph�t !")

	else
		HideNpc(GetGlbMissionV(85),9999999)
		HideNpc(GetGlbMissionV(86),9999999)
		SetGlbMissionV(60,1500)
		AddGlobalCountNews("Chi�n d�ch T�ng Kim h�nh th�c B�o V� Nguy�n So�i �ang � giai �o�n b�o danh, v� v� l�m nh�n s� n�o mu�n tham gia th� h�y ��n T��ng D��ng ho�c Chu Ti�n tr�n �� v�o khu v�c b�o danh. Th�i gian khai chi�n c�n:"..RestMin.." ph�t !",1)
	end
	idx = PlayerIndex
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
			if GetItemCount(24) == 0 then
				AddEventItem(24)
				Msg2Player("T�ng kim ��i chi�n �� b�t ��u, Server t�ng b�n 1 <color=yellow>T�ng Kim Chi�u Th� <color=red>�� c� th� tham gia Chi�n Tr��ng T�ng Kim nhanh nh�t !")
			end
	end
	PlayerIndex = idx
elseif returnTimeTK() == 1 then
	if GetGlbMissionV(60) == 500 then
		AddGlobalCountNews("Chi�n d�ch T�ng Kim h�nh th�c C�u S�t �ang � giai �o�n b�o danh, v� v� l�m nh�n s� n�o mu�n tham gia th� h�y ��n T��ng D��ng ho�c Chu Ti�n tr�n �� v�o khu v�c b�o danh. Th�i gian khai chi�n c�n:"..RestMin.." ph�t !",1)
	elseif GetGlbMissionV(60) == 1500 then
		AddGlobalCountNews("Chi�n d�ch T�ng Kim h�nh th�c B�o V� Nguy�n So�i �ang � giai �o�n b�o danh, v� v� l�m nh�n s� n�o mu�n tham gia th� h�y ��n T��ng D��ng ho�c Chu Ti�n tr�n �� v�o khu v�c b�o danh. Th�i gian khai chi�n c�n:"..RestMin.." ph�t !",1)
	end
end

if returnTimeRandomMission() == 2 and (GetGlbMissionV(60) == 500 or GetGlbMissionV(60) == 1500) then -- TK Bat Dau
	if GetGlbMissionV(60) == 500 then
		SetGlbMissionV(60,1000)
		AddGlobalCountNews("Th�i gian b�o danh T�ng Kim (ph��ng th�c C�u S�t ) �� k�t th�c. Chi�n ��u ch�nh th�c b�t ��u !",1)
		Msg2WorldById("T�ng Kim ��i Chi�n ch�nh th�c b�t ��u ........ !",33)
	elseif GetGlbMissionV(60) == 1500 then
		SetGlbMissionV(60,2000)
		AddGlobalCountNews("Th�i gian b�o danh T�ng Kim (ph��ng th�c b�o v� Nguy�n So�i) �� k�t th�c. Chi�n ��u ch�nh th�c b�t ��u !",1)
		Msg2WorldById("T�ng Kim ��i Chi�n ch�nh th�c b�t ��u ........ !",61)
	end
elseif returnTimeTK() == 2 then
	if GetGlbMissionV(60) == 1000 then
		AddGlobalCountNews("T�ng Kim ��i Chi�n - H�nh th�c C�u S�t �ang di�n ra r�t �c li�t, t�ng �i�m t�ch l�y qu�n T�ng <color=red>"..GetGlbMissionV(81).."<color> - qu�n Kim <color=red>"..GetGlbMissionV(82).."<color>. ",1)
	elseif GetGlbMissionV(60) == 2000 then
		AddGlobalCountNews("T�ng Kim ��i Chi�n - H�nh th�c B�o v� Nguy�n So�i �ang di�n ra r�t �c li�t, t�ng �i�m t�ch l�y qu�n T�ng <color=red>"..GetGlbMissionV(81).."<color> - qu�n Kim <color=red>"..GetGlbMissionV(82).."<color>. ",1)
	end
end

if returnCreateBossTK() == 1 then
	if GetGlbMissionV(60) == 2000 then
		if GetGlbMissionV(81) > GetGlbMissionV(82) then
			HideNpc(GetGlbMissionV(86),0)
			Msg2WorldById("Nguy�n So�i phe Kim �� xu�t hi�n ........ ",61)
			SetGlbMissionV(87,1)
		elseif GetGlbMissionV(81) < GetGlbMissionV(82) then
			HideNpc(GetGlbMissionV(85),0)
			Msg2WorldById("Nguy�n So�i phe T�ng �� xu�t hi�n ........ ",61)
			SetGlbMissionV(88,1)
		else
			HideNpc(GetGlbMissionV(85),0)
			HideNpc(GetGlbMissionV(86),0)
			SetGlbMissionV(87,1)
			SetGlbMissionV(88,1)
			Msg2WorldById("Nguy�n So�i phe T�ng �� xu�t hi�n ........ ",61)
			Msg2WorldById("Nguy�n So�i phe Kim �� xu�t hi�n ........ ",61)
		end
	end
elseif returnCreateBossTK() == 2 then
	if GetGlbMissionV(60) == 2000 then
		if GetGlbMissionV(87) == 0 then
			HideNpc(GetGlbMissionV(86),0)
			SetGlbMissionV(87,1)
			Msg2WorldById("Nguy�n So�i phe Kim �� xu�t hi�n ........ ",61)
		elseif GetGlbMissionV(88) == 0 then
			HideNpc(GetGlbMissionV(85),0)
			SetGlbMissionV(88,1)
			Msg2WorldById("Nguy�n So�i phe T�ng �� xu�t hi�n ........ ",61)
		end
	end
end

if returnTimeRandomMission() == 3  and (GetGlbMissionV(60) == 1000 or GetGlbMissionV(60) == 2000) then -- Tong Kim Ket Thuc
	if GetGlbMissionV(60) == 1000 then
		if GetGlbMissionV(81) > GetGlbMissionV(82) then
			AddGlobalCountNews("T�ng Kim ��i chi�n k�t th�c, t�ng �i�m t�ch l�y qu�n T�ng <color=red>"..GetGlbMissionV(81).."<color> - qu�n Kim <color=red>"..GetGlbMissionV(82).."<color>. Ph�n th�ng thu�c v� qu�n T�ng  !",1)
			Msg2WorldById("T�ng Kim ��i chi�n k�t th�c, ph�n th�ng thu�c v� qu�n T�ng",33)
		elseif GetGlbMissionV(81) < GetGlbMissionV(82) then
			AddGlobalCountNews("T�ng Kim ��i chi�n k�t th�c, t�ng �i�m t�ch l�y qu�n T�ng <color=red>"..GetGlbMissionV(81).."<color> - qu�n Kim <color=red>"..GetGlbMissionV(82).."<color>. Ph�n th�ng thu�c v� qu�n Kim !",1)
			Msg2WorldById("T�ng Kim ��i chi�n k�t th�c, ph�n th�ng thu�c v� qu�n Kim",33)
		else
			AddGlobalCountNews("T�ng Kim ��i chi�n k�t th�c, t�ng �i�m t�ch l�y qu�n T�ng <color=red>"..GetGlbMissionV(81).."<color> - qu�n Kim <color=red>"..GetGlbMissionV(82).."<color>. K�t qu� hai b�n h�a !",1)
			Msg2WorldById("T�ng Kim ��i chi�n k�t th�c, k�t qu� hai b�n h�a",33)
		end
	elseif GetGlbMissionV(60) == 2000 then
		if (GetGlbMissionV(87) == 2 and GetGlbMissionV(88) == 2) or (GetGlbMissionV(87) == 1 and GetGlbMissionV(88) == 1) then
			if GetGlbMissionV(81) > GetGlbMissionV(82) then
			AddGlobalCountNews("T�ng Kim ��i chi�n k�t th�c, t�ng �i�m t�ch l�y qu�n T�ng <color=red>"..GetGlbMissionV(81).."<color> - qu�n Kim <color=red>"..GetGlbMissionV(82).."<color>. Ph�n th�ng thu�c v� qu�n T�ng  !",1)
			Msg2WorldById("T�ng Kim ��i chi�n k�t th�c, ph�n th�ng thu�c v� qu�n T�ng",61)
			elseif GetGlbMissionV(81) < GetGlbMissionV(82) then
			AddGlobalCountNews("T�ng Kim ��i chi�n k�t th�c, t�ng �i�m t�ch l�y qu�n T�ng <color=red>"..GetGlbMissionV(81).."<color> - qu�n Kim <color=red>"..GetGlbMissionV(82).."<color>. Ph�n th�ng thu�c v� qu�n Kim !",1)
			Msg2WorldById("T�ng Kim ��i chi�n k�t th�c, ph�n th�ng thu�c v� qu�n Kim",61)
			else
			AddGlobalCountNews("T�ng Kim ��i chi�n k�t th�c, t�ng �i�m t�ch l�y qu�n T�ng <color=red>"..GetGlbMissionV(81).."<color> - qu�n Kim <color=red>"..GetGlbMissionV(82).."<color>. K�t qu� hai b�n h�a !",1)
			Msg2WorldById("T�ng Kim ��i chi�n k�t th�c, k�t qu� hai b�n h�a",61)
			end
		elseif GetGlbMissionV(87) == 2 and GetGlbMissionV(88) == 1 then
			AddGlobalCountNews("T�ng Kim ��i chi�n k�t th�c, Nguy�n So�i phe Kim �� b� ti�u di�t . Ph�n th�ng thu�c v� qu�n T�ng  !",1)
			Msg2WorldById("T�ng Kim ��i chi�n k�t th�c, ph�n th�ng thu�c v� qu�n T�ng",61)
		elseif GetGlbMissionV(87) == 1 and GetGlbMissionV(88) == 2 then
			AddGlobalCountNews("T�ng Kim ��i chi�n k�t th�c, Nguy�n So�i phe T�ng �� b� ti�u di�t, Ph�n th�ng thu�c v� qu�n Kim !",1)
			Msg2WorldById("T�ng Kim ��i chi�n k�t th�c, ph�n th�ng thu�c v� qu�n Kim",61)
		end
	end

	for i=1,GetCountPlayerMax() do
		PlayerIndex  = i
		w,x,y = GetWorldPos()
		if GetTask(40) == 1 then
			 if (GetGlbMissionV(60) == 1000 and w == 33)  then
				if GetTask(12) == 1 then
					SetTempRevPos(60,49152,101888)
					NewWorld(60,1536,3184)
					if GetGlbMissionV(81) < GetGlbMissionV(82) then -- THUA
							SetTask(15,GetTask(15) + 500)
							phanthuongthem()
							AddRepute(10)
							Msg2Player("T�ng kim ��i chi�n k�t th�c, b�n nh�n ���c 500 t�ch lu� v� 10 danh v�ng")
					elseif GetGlbMissionV(81) > GetGlbMissionV(82) then -- THANG
							SetTask(15,GetTask(15) + 1000)
							phanthuongthem()
							AddRepute(20) 
							Msg2Player("T�ng kim ��i chi�n k�t th�c, b�n nh�n ���c 1000 t�ch lu� v� 20 danh v�ng")
					else -- HOA
							SetTask(15,GetTask(15) + 750)
							phanthuongthem()
							
							AddRepute(15)
							Msg2Player("T�ng kim ��i chi�n k�t th�c, b�n nh�n ���c 750 t�ch lu� v� 15 danh v�ng")

					end
				elseif GetTask(12) == 2 then
					SetTempRevPos(60,50432,98816)
					NewWorld(60,1576,3088)
					if GetGlbMissionV(81) > GetGlbMissionV(82) then -- THUA
							SetTask(15,GetTask(15) + 500)
							phanthuongthem()
							
							AddRepute(10)
							Msg2Player("T�ng kim ��i chi�n k�t th�c, b�n nh�n ���c 500 t�ch lu� v� 10 danh v�ng")
					elseif GetGlbMissionV(81) < GetGlbMissionV(82) then -- THANG
							SetTask(15,GetTask(15) + 1000)
							phanthuongthem() 
							
							AddRepute(20)
							Msg2Player("T�ng kim ��i chi�n k�t th�c, b�n nh�n ���c 1000 t�ch lu� v� 20 danh v�ng")
					else -- HOA
							SetTask(15,GetTask(15) + 750)
							phanthuongthem()
							
							AddRepute(15)
							Msg2Player("T�ng kim ��i chi�n k�t th�c, b�n nh�n ���c 750 t�ch lu� v� 15 danh v�ng")

					end
				end
				resetAllTask()
			elseif (GetGlbMissionV(60) == 2000 and w == 61)  then
				if GetTask(12) == 1 then
					SetTempRevPos(60,49152,101888)
					NewWorld(60,1536,3184)
					if (GetGlbMissionV(87) == 2 and GetGlbMissionV(88) == 2) or (GetGlbMissionV(87) == 1 and GetGlbMissionV(88) == 1) then
						if GetGlbMissionV(81) < GetGlbMissionV(82) then -- THUA
							SetTask(15,GetTask(15) + 500)
							phanthuongthem()
							
							AddRepute(10)
							Msg2Player("T�ng kim ��i chi�n k�t th�c, b�n nh�n ���c 500 t�ch lu� v� 10 danh v�ng")
						elseif GetGlbMissionV(81) > GetGlbMissionV(82) then -- THANG
							SetTask(15,GetTask(15) + 1000)
							phanthuongthem() 
							
							AddRepute(20)
							Msg2Player("T�ng kim ��i chi�n k�t th�c, b�n nh�n ���c 1000 t�ch lu� v� 20 danh v�ng")
						else -- HOA
							SetTask(15,GetTask(15) + 750)
							phanthuongthem()
							
							AddRepute(15)
							Msg2Player("T�ng kim ��i chi�n k�t th�c, b�n nh�n ���c 750 t�ch lu� v� 15 danh v�ng")
						end
					elseif GetGlbMissionV(87) == 2 and GetGlbMissionV(88) == 1 then -- THANG
							SetTask(15,GetTask(15) + 1000)
							phanthuongthem() 
							
							AddRepute(20)
							Msg2Player("T�ng kim ��i chi�n k�t th�c, b�n nh�n ���c 1000 t�ch lu� v� 20 danh v�ng")
					elseif GetGlbMissionV(87) == 1 and GetGlbMissionV(88) == 2 then
							SetTask(15,GetTask(15) + 500)
							phanthuongthem()
							
							AddRepute(10)
							Msg2Player("T�ng kim ��i chi�n k�t th�c, b�n nh�n ���c 500 t�ch lu� v� 10 danh v�ng")
					end
				elseif GetTask(12) == 2 then
					SetTempRevPos(60,50432,98816)
					NewWorld(60,1576,3088)
					if (GetGlbMissionV(87) == 2 and GetGlbMissionV(88) == 2) or (GetGlbMissionV(87) == 1 and GetGlbMissionV(88) == 1) then
						if GetGlbMissionV(81) > GetGlbMissionV(82) then -- THUA
							phanthuongthem()
							SetTask(15,GetTask(15) + 500)
							AddRepute(10)
							Msg2Player("T�ng kim ��i chi�n k�t th�c, b�n nh�n ���c 500 t�ch lu� v� 10 danh v�ng")
						elseif GetGlbMissionV(81) < GetGlbMissionV(82) then -- THANG
							SetTask(15,GetTask(15) + 1000) 
							phanthuongthem()
							
							AddRepute(20)
							Msg2Player("T�ng kim ��i chi�n k�t th�c, b�n nh�n ���c 1000 t�ch lu� v� 20 danh v�ng")
						else -- HOA
							phanthuongthem()
							SetTask(15,GetTask(15) + 750)
							
							AddRepute(15)
							Msg2Player("T�ng kim ��i chi�n k�t th�c, b�n nh�n ���c 750 t�ch lu� v� 15 danh v�ng")
	
						end
					elseif GetGlbMissionV(87) == 2 and GetGlbMissionV(88) == 1 then -- THANG
							phanthuongthem()
							SetTask(15,GetTask(15) + 1000) 
							
							AddRepute(20)
							Msg2Player("T�ng kim ��i chi�n k�t th�c, b�n nh�n ���c 1000 t�ch lu� v� 20 danh v�ng")
					elseif GetGlbMissionV(87) == 1 and GetGlbMissionV(88) == 2 then
							phanthuongthem()
							SetTask(15,GetTask(15) + 500)
							
							AddRepute(10)
							Msg2Player("T�ng kim ��i chi�n k�t th�c, b�n nh�n ���c 500 t�ch lu� v� 10 danh v�ng")
					end
				end
				resetAllTask()
			end
		end
	end

	



SetGlbMissionV(60,0) -- ket thuc tk
end
end

function phanthuongthem()

h = tonumber(date("%H"))
m = tonumber(date("%M"))
s = tonumber(date("%S"))
timehientai = m*60 + s
tinhtime = timehientai - GetTaskTemp(18)
SetTask(118,GetTask(118) + tinhtime)
SetTaskTemp(18,0) -- Reset Task Time

if GetTask(13) >= 20*50 then
	AddEventItem(150)	
	Msg2Player("B�n nh�n ���c 1 L� Bao VLTK do tham gia chi�n tr��ng tr�n 1000 t�ch l�y")
end
if GetTask(13) >= 10*50 then
	AddEventItem(180)	
	AddEventItem(181)	
	AddEventItem(182)	
	AddEventItem(180)	
	AddEventItem(181)	
	AddEventItem(182)
	AddEventItem(180)	
	AddEventItem(181)	
	AddEventItem(179)	
	Msg2Player("B�n nh�n ���c Nguy�n li�u �p thuy�n r�ng do �i�m t�ch l�y tr�n 500")
end

chiphi = 2
if (h == 13 or h == 16 and GetLevel() >= 120) then
chiphi = 4
end

if GetTask(118) >= 10*60 and GetTask(118) < 20*60 then
	exp = 8000000/chiphi
	AddOwnExp(exp)
	Msg2Player("B�n nh�n ���c <color=green>"..exp.."<color=red> �i�m kinh nghi�m do ��t ���c tr�n 10 ph�t tham gia thi ��u !")	
elseif GetTask(118) >= 20*60 and GetTask(118) < 30*60 then
	exp = 10000000/chiphi
	AddOwnExp(exp)
	Msg2Player("B�n nh�n ���c <color=green>"..exp.."<color=red> �i�m kinh nghi�m do ��t ���c tr�n 20 ph�t tham gia thi ��u !")		
elseif GetTask(118) >= 30*60 and GetTask(118) < 40*60 then
	exp = 12000000/chiphi
	AddOwnExp(exp)
	Msg2Player("B�n nh�n ���c <color=green>"..exp.."<color=red> �i�m kinh nghi�m do ��t ���c tr�n 30 ph�t tham gia thi ��u !")		
elseif GetTask(118) >= 40*60 then
	exp = 14000000/chiphi
	AddOwnExp(exp)
	Msg2Player("B�n nh�n ���c <color=green>"..exp.."<color=red> �i�m kinh nghi�m do ��t ���c tr�n 40 ph�t tham gia thi ��u !")	
else
	Msg2Player("B�n kh�ng nh�n ���c ph�n th��ng kinh nghi�m do kh�ng tham gia chi�n tr��ng �� 10 ph�t !")
end
end

function KhoiTaoLaiTongKim()
SetGlbMissionV(81,0)
SetGlbMissionV(82,0)
SetGlbMissionV(83,0)
SetGlbMissionV(84,0)
SetGlbMissionV(87,0)
SetGlbMissionV(88,0)
end

function resetAllTask()
SetTask(40,0)
SetRank(GetTask(18))
SetCurCamp(GetTask(16))
SetCamp(GetTask(16)) 
SetPK(GetTask(17))
SetTask(128,0) 
SetTask(16,0)
SetTask(18,0)
SetTask(17,0)
SetPunish(0)
SetFightState(0)
SetCreateTeam(1);
SetLogoutRV(0);
SetPKState(0)
BlockPKState(0)
SetDeathScript("");
DelMagic(413)


SetGlbMissionV(83,0)
SetGlbMissionV(84,0)
end


function UpdateTop(playeridx)
PlayerIndex = playeridx
vitri = check_dstop()
if vitri ~= 0 then
	dstop[vitri][2] = GetTask(12)
	dstop[vitri][3] = GetTask(31)
	dstop[vitri][4] = GetTask(11)
	dstop[vitri][5] = GetTask(14)
	dstop[vitri][6] = GetTask(28)
	dstop[vitri][7] = GetTask(29)
	dstop[vitri][8] = GetTask(25)
elseif getn(dstop) > 0 then
	vtmin = check_dsmin()
	if GetTask(31) > dstop[vtmin][3] then
		dstop[vtmin][1] = GetName()
		dstop[vtmin][2] = GetTask(12)
		dstop[vtmin][3] = GetTask(31)
		dstop[vtmin][4] = GetTask(11)
		dstop[vtmin][5] = GetTask(14)
		dstop[vtmin][6] = GetTask(28)
		dstop[vtmin][7] = GetTask(29)
		dstop[vtmin][8] = GetTask(25)
	end
end
SapXepLaiDSTOP()
end

tam = {"",0,0,0,0,0,0,0}
function SapXepLaiDSTOP()
for i=1,getn(dstop) do
	for j=1,getn(dstop) do
		if dstop[i][3] > dstop[j][3] then
			tam = dstop[i]
			dstop[i] = dstop[j]
			dstop[j] = tam
		end
	end
end
end

function check_dstop()
	for i=1,getn(dstop) do
		if GetName() == dstop[i][1] then
			return i
		end 
	end
return 0
end
function check_dsmin()
min = dstop[1][3]
vt_min = 1
	for i=2,getn(dstop) do
		if min > dstop[i][3] then
			min = dstop[i][3]
			vt_min = i
		end
	end
return vt_min
end


function DeleteTop(playeridx)
--PlayerIndex = playeridx
--print("OUT: "..GetName().."") 
--vitri = check_dstop()
--if vitri ~= 0 then
--	print("OUT: "..GetName().." - "..vitri.."")	
--	dstop[vitri][1] = ""
--	dstop[vitri][2] = 0
--	dstop[vitri][3] = 0
--	dstop[vitri][4] = 0
--	dstop[vitri][5] = 0
--	dstop[vitri][6] = 0
--	dstop[vitri][7] = 0
--	dstop[vitri][8] = 0
--end
--SapXepLaiDSTOP()
end


function OpenTop(playeridx)
PlayerIndex = playeridx
w,x,y = GetWorldPos()
if getn(dstop) == 10 then
	if w == 33 or w == 61 or w == 60 and GetTask(123) == GetGlbMissionV(61) and (GetTask(12) == 1 or GetTask(12) == 2) then
		CapNhatTop()
	else
		ShowTopClear()
	end
else
	KhoiTaoMangTop()	
end


--SendTopTKNew(2,15,1,2,3,4,5,6,9,8,11,14,22,"abvc",2,2,3,4,5,6,7,"a",1,2,3,4,5,6,7,"a",1,2,3,4,5,6,7,"a",1,2,3,4,5,6,7,"a",1,2,3,4,5,6,7,"a",1,2,3,4,5,6,7,"a",1,2,3,4,5,6,7,"a",1,2,3,4,5,6,7,"a",1,2,3,4,5,6,7,"a",1,2,3,4,5,6,7,100)
-- Ben, Time, So Luong, .....
end


function CapNhatTop()
h = tonumber(date("%H"))
m = tonumber(date("%M"))
s = tonumber(date("%S"))
timeconlai = 0
if returnTimeTK() == 1 then
	timeconlai = 60-m+60
elseif returnTimeTK() == 2 then
	timeconlai = 60-m
end

soluong = 0
if GetTask(12) == 1 then
soluong = GetGlbMissionV(83)
elseif GetTask(12) == 2 then
soluong = GetGlbMissionV(84)
end

		SendTopTKNew(GetTask(12),timeconlai,GetTask(11),GetTask(13),GetTask(14),GetTask(20),GetTask(21),GetTask(24),GetTask(25),GetTask(26),GetTask(31),GetTask(28),GetTask(29),
		dstop[1][1],dstop[1][2],dstop[1][3],dstop[1][4],dstop[1][5],dstop[1][6],dstop[1][7],dstop[1][8],
		dstop[2][1],dstop[2][2],dstop[2][3],dstop[2][4],dstop[2][5],dstop[2][6],dstop[2][7],dstop[2][8],
		dstop[3][1],dstop[3][2],dstop[3][3],dstop[3][4],dstop[3][5],dstop[3][6],dstop[3][7],dstop[3][8],
		dstop[4][1],dstop[4][2],dstop[4][3],dstop[4][4],dstop[4][5],dstop[4][6],dstop[4][7],dstop[4][8],
		dstop[5][1],dstop[5][2],dstop[5][3],dstop[5][4],dstop[5][5],dstop[5][6],dstop[5][7],dstop[5][8],
		dstop[6][1],dstop[6][2],dstop[6][3],dstop[6][4],dstop[6][5],dstop[6][6],dstop[6][7],dstop[6][8],
		dstop[7][1],dstop[7][2],dstop[7][3],dstop[7][4],dstop[7][5],dstop[7][6],dstop[7][7],dstop[7][8],
		dstop[8][1],dstop[8][2],dstop[8][3],dstop[8][4],dstop[8][5],dstop[8][6],dstop[8][7],dstop[8][8],
		dstop[9][1],dstop[9][2],dstop[9][3],dstop[9][4],dstop[9][5],dstop[9][6],dstop[9][7],dstop[9][8],
		dstop[10][1],dstop[10][2],dstop[10][3],dstop[10][4],dstop[10][5],dstop[10][6],dstop[10][7],dstop[10][8],soluong)
end

function ShowTopClear()
SendTopTKNew(0,0,0,0,0,0,0,"",0,0,0,0,0,"",0,2,3,4,5,6,7,"",0,2,3,4,5,6,7,"",0,2,3,4,5,6,7,"",0,2,3,4,5,6,7,"",0,2,3,4,5,6,7,"",0,2,3,4,5,6,7,"",0,2,3,4,5,6,7,"",0,2,3,4,5,6,7,"",0,2,3,4,5,6,7,"",0,2,3,4,5,6,7,0)	
end

function KhoiTaoMangTop()
dstop = {}
for i=1,10 do
	dstop[getn(dstop)+1] = {"",0,0,0,0,0,0,0}
end
end

function returnTimeTK()
h = tonumber(date("%H"))
m = tonumber(date("%M"))
s = tonumber(date("%S"))
time = h*100+m
for i=1,getn(timetongkim) do
	if time >= timetongkim[i][1] and time < timetongkim[i][2] then
		return 1
	elseif time >= timetongkim[i][2] and time < timetongkim[i][3] then
		return 2
	end
end
return 0
end


function returnTimeRandomMission()
h = tonumber(date("%H"))
m = tonumber(date("%M"))
s = tonumber(date("%S"))
time = h*100+m
for i=1,getn(timetongkim) do
	if time >= timetongkim[i][1] and time < timetongkim[i][2] then
		return 1
	elseif time >= timetongkim[i][2] and time < timetongkim[i][3] then
		return 2
	elseif time >= timetongkim[i][3] and time < timetongkim[i][3] + 5 then
		return 3
	end
end
return 0
end

function returnCreateBossTK()
h = tonumber(date("%H"))
m = tonumber(date("%M"))
s = tonumber(date("%S"))
time = h*100+m
for i=1,getn(timetongkim) do
	if time == timetongkim[i][2]+30 then
		return 1
	elseif time == timetongkim[i][2]+40 then
		return 2
	end
end
return 0
end


-- 11  nguoichoi, 
-- 13 tichluynguoichoi, 
-- 14 npc, 
-- 20 tich luy npc, 
-- 21 lientram, 
-- 24 tichluylientram, 
-- 25 bauvat, 
-- 26 tich luy bao vat, 
-- 28 tu vong, 
-- 29 lien tram cao nhat, 
-- 31 diem tich luy
