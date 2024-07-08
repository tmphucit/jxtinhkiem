
Include("\\script\\hoatdong\\tongkim\\headtime.lua")
dstop = {}


function RunTimer()
-- if SubWorldID2Idx(33) == -1 then
-- return
-- end

h = tonumber(date("%H"))
m = tonumber(date("%M"))
s = tonumber(date("%S"))

thoigian = h*100 + m
w,x,y = GetWorldPos()

if h == 11 then
hinhthuc = 2
elseif h == 14 then
hinhthuc = 2
elseif h == 20 then
hinhthuc = 1
else
hinhthuc = 1
end

RestMin = 60 - m
if returnTimeRandomMission() == 1 and GetGlbMissionV(60) == 0 then -- Bao Danh Tong Kim
	KhoiTaoMangTop()
	ShowTopClear()
	KhoiTaoLaiTongKim()
	SetGlbMissionV(61,RandomNew(1,30000))
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
		Msg2WorldById("T�ng Kim ��i Chi�n ch�nh th�c b�t ��u ........ !",37)
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
			Msg2WorldById("Nguy�n So�i phe Kim �� xu�t hi�n ........ ",37)
			SetGlbMissionV(87,1)
		elseif GetGlbMissionV(81) < GetGlbMissionV(82) then
			HideNpc(GetGlbMissionV(85),0)
			Msg2WorldById("Nguy�n So�i phe T�ng �� xu�t hi�n ........ ",37)
			SetGlbMissionV(88,1)
		else
			HideNpc(GetGlbMissionV(85),0)
			HideNpc(GetGlbMissionV(86),0)
			SetGlbMissionV(87,1)
			SetGlbMissionV(88,1)
			Msg2WorldById("Nguy�n So�i phe T�ng �� xu�t hi�n ........ ",37)
			Msg2WorldById("Nguy�n So�i phe Kim �� xu�t hi�n ........ ",37)
		end
	end
elseif returnCreateBossTK() == 2 then
	if GetGlbMissionV(60) == 2000 then
		if GetGlbMissionV(87) == 0 then
			HideNpc(GetGlbMissionV(86),0)
			SetGlbMissionV(87,1)
			Msg2WorldById("Nguy�n So�i phe Kim �� xu�t hi�n ........ ",37)
		elseif GetGlbMissionV(88) == 0 then
			HideNpc(GetGlbMissionV(85),0)
			SetGlbMissionV(88,1)
			Msg2WorldById("Nguy�n So�i phe T�ng �� xu�t hi�n ........ ",37)
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
			Msg2WorldById("T�ng Kim ��i chi�n k�t th�c, ph�n th�ng thu�c v� qu�n T�ng",37)
			elseif GetGlbMissionV(81) < GetGlbMissionV(82) then
			AddGlobalCountNews("T�ng Kim ��i chi�n k�t th�c, t�ng �i�m t�ch l�y qu�n T�ng <color=red>"..GetGlbMissionV(81).."<color> - qu�n Kim <color=red>"..GetGlbMissionV(82).."<color>. Ph�n th�ng thu�c v� qu�n Kim !",1)
			Msg2WorldById("T�ng Kim ��i chi�n k�t th�c, ph�n th�ng thu�c v� qu�n Kim",37)
			else
			AddGlobalCountNews("T�ng Kim ��i chi�n k�t th�c, t�ng �i�m t�ch l�y qu�n T�ng <color=red>"..GetGlbMissionV(81).."<color> - qu�n Kim <color=red>"..GetGlbMissionV(82).."<color>. K�t qu� hai b�n h�a !",1)
			Msg2WorldById("T�ng Kim ��i chi�n k�t th�c, k�t qu� hai b�n h�a",37)
			end
		elseif GetGlbMissionV(87) == 2 and GetGlbMissionV(88) == 1 then
			AddGlobalCountNews("T�ng Kim ��i chi�n k�t th�c, Nguy�n So�i phe Kim �� b� ti�u di�t . Ph�n th�ng thu�c v� qu�n T�ng  !",1)
			Msg2WorldById("T�ng Kim ��i chi�n k�t th�c, ph�n th�ng thu�c v� qu�n T�ng",37)
		elseif GetGlbMissionV(87) == 1 and GetGlbMissionV(88) == 2 then
			AddGlobalCountNews("T�ng Kim ��i chi�n k�t th�c, Nguy�n So�i phe T�ng �� b� ti�u di�t, Ph�n th�ng thu�c v� qu�n Kim !",1)
			Msg2WorldById("T�ng Kim ��i chi�n k�t th�c, ph�n th�ng thu�c v� qu�n Kim",37)
		end
	end


--	idxp = PlayerIndex
--	TopTong = ""
--	DiemTong = 0
--	TopKim = ""
--	DiemKim = 0
--	for i=1,GetCountPlayerMax() do
--		PlayerIndex  = i
--		w,x,y = GetWorldPos()
--		if GetTask(40) == 1 then
--			 if (GetGlbMissionV(60) == 1000 and w == 33)  then
--						if GetTask(12) == 1 then
--							if GetTask(31) > DiemTong then
--								TopTong = GetName()
--								DiemTong = GetTask(31)
--							end
--						elseif GetTask(12) == 2 then
--							if GetTask(31) > DiemKim then
--								TopKim = GetName()
--								DiemKim = GetTask(31)
--							end
--						end
--			end
--		end
--	end
--	PlayerIndex = idxp
	
	idxt = PlayerIndex
	for i=1,GetCountPlayerMax() do
		PlayerIndex  = i
		w,x,y = GetWorldPos()
		if GetTask(40) == 1 then
			 if (GetGlbMissionV(60) == 1000 and w == 33)  then
				--if GetName() == TopTong then
				--	sxitem = RandomNew(1,100)
				--	if sxitem < 50 then
				--		idxitem = AddEventItem(116)
				--		Msg2SubWorld("<color=yellow>Top 1 Phe T�ng "..TopTong.." <color=red>nh�n ���c: "..GetNameItemBox(idxitem).."")
				--	else
				--		idxitem = AddEventItem(120)
				--		Msg2SubWorld("<color=yellow>Top 1 Phe T�ng "..TopTong.." <color=red>nh�n ���c: "..GetNameItemBox(idxitem).."")
				--	end
				--	AddOwnExp(1000000)
				--elseif GetName() == TopKim then
				--	sxitem = RandomNew(1,100)
				--	if sxitem < 50 then
				--		idxitem = AddEventItem(116)
				--	Msg2SubWorld("<color=yellow>Top 1 Phe Kim "..TopKim.." <color=red>nh�n ���c: "..GetNameItemBox(idxitem).."")
				--	else
				--		idxitem = AddEventItem(120)
				--	Msg2SubWorld("<color=yellow>Top 1 Phe Kim "..TopKim.." <color=red>nh�n ���c: "..GetNameItemBox(idxitem).."")
				--	end
				--	AddOwnExp(1000000)
				--end
				if GetTask(12) == 1 then
					SetTempRevPos(60,49152,101888)
					NewWorld(60,1536,3184)
					if GetGlbMissionV(81) < GetGlbMissionV(82) then -- THUA
							phanthuongthem(2)
					elseif GetGlbMissionV(81) > GetGlbMissionV(82) then -- THANG
							phanthuongthem(1)
					else -- HOA
							phanthuongthem(0)
					end
				elseif GetTask(12) == 2 then
					SetTempRevPos(60,50432,98816)
					NewWorld(60,1576,3088)
					if GetGlbMissionV(81) > GetGlbMissionV(82) then -- THUA
							phanthuongthem(2)
					elseif GetGlbMissionV(81) < GetGlbMissionV(82) then -- THANG
							phanthuongthem(1)
					else -- HOA
							phanthuongthem(0)
					end
				end
				resetAllTask()
			elseif (GetGlbMissionV(60) == 2000 and w == 37)  then
				if GetTask(12) == 1 then
					SetTempRevPos(60,49152,101888)
					NewWorld(60,1536,3184)
					if (GetGlbMissionV(87) == 2 and GetGlbMissionV(88) == 2) or (GetGlbMissionV(87) == 1 and GetGlbMissionV(88) == 1) then
						if GetGlbMissionV(81) < GetGlbMissionV(82) then -- THUA
							phanthuongthem(2)
						elseif GetGlbMissionV(81) > GetGlbMissionV(82) then -- THANG
							phanthuongthem(1)
						else -- HOA
							phanthuongthem(0)
						end
					elseif GetGlbMissionV(87) == 2 and GetGlbMissionV(88) == 1 then -- THANG
							phanthuongthem(1)
					elseif GetGlbMissionV(87) == 1 and GetGlbMissionV(88) == 2 then
							phanthuongthem(2)
					end
				elseif GetTask(12) == 2 then
					SetTempRevPos(60,50432,98816)
					NewWorld(60,1576,3088)
					if (GetGlbMissionV(87) == 2 and GetGlbMissionV(88) == 2) or (GetGlbMissionV(87) == 1 and GetGlbMissionV(88) == 1) then
						if GetGlbMissionV(81) > GetGlbMissionV(82) then -- THUA
							phanthuongthem(2)
						elseif GetGlbMissionV(81) < GetGlbMissionV(82) then -- THANG
							phanthuongthem(1)
						else -- HOA
							phanthuongthem(0)
						end
					elseif GetGlbMissionV(87) == 2 and GetGlbMissionV(88) == 1 then -- THANG
							phanthuongthem(1)
					elseif GetGlbMissionV(87) == 1 and GetGlbMissionV(88) == 2 then
							phanthuongthem(2)
					end
				end
				resetAllTask()
			end
		end
	end
	PlayerIndex = idxt
	
	
SetGlbMissionV(60,0) -- ket thuc tk
end
end


function CheckTenTop(name)
vt = 0
for p=1,10 do
	 if dstop[p][1] == name then
	 return p
	 end
end 
return 0
end

function phanthuongthem(num)
w,x,y = GetWorldPos()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
	Msg2Player("Th�i gian tham chi�n: <color=yellow>"..GetTask(118).." ph�t <color=red>- �i�m T�ch L�y: <color=yellow>"..GetTask(31).." �i�m")
		xephang = CheckTenTop(GetName())	
	if xephang > 0 and xephang <= 10 then
			Msg2SubWorld("H�ng "..xephang..": "..GetName().."")
	end
	if xephang == 1  then
		-- ngayvp = ngay + 7
		-- thangvp = thang
		-- if ngayvp > mangthang[thang] then
		-- ngayvp = ngayvp - mangthang[thang]
		-- thangvp = thang + 1
		-- end
		-- itemidx = AddItem(0,10,5,10,0,0,0)
		-- SetTimeItem(itemidx,550324)
		-- SetHSD(itemidx, 2022 , thangvp, ngayvp, gio)
		-- Msg2SubWorld("<color=yellow>Ch�c m�ng "..GetName().." nh�n ���c 1 Chi�u D� 7 Ng�y")
		-- Msg2SubWorld("<color=yellow>Ch�c m�ng "..GetName().." nh�n ���c 100 Xu")
		-- Msg2SubWorld("<color=yellow>Ch�c m�ng "..GetName().." nh�n ���c 6KNB")
		Msg2SubWorld("<color=yellow>Ch�c m�ng "..GetName().." nh�n ���c 200 v�n")
		Earn(2000000)
		-- AddEventItem(17)
		-- AddEventItem(17)
		-- AddEventItem(17)
		-- AddEventItem(17)
		-- AddEventItem(17)
		-- AddEventItem(17)
		-- SetTask(101,GetTask(101) + 100)
		-- SetTask(99,GetTask(99) + 100)
	end
	if xephang == 2  then
		-- ngayvp = ngay + 7
		-- thangvp = thang
		-- if ngayvp > mangthang[thang] then
		-- ngayvp = ngayvp - mangthang[thang]
		-- thangvp = thang + 1
		-- end
		-- itemidx = AddItem(0,10,5,7,0,0,0)
		-- SetTimeItem(itemidx,550324)
		-- SetHSD(itemidx, 2022 , thangvp, ngayvp, gio)
		-- Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." nh�n ���c ng�a X�ch Th� 7 Ng�y")
		-- Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." nh�n ���c 70 Xu")
		-- Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." nh�n ���c 4KNB")
		Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." nh�n ���c 140 v�n")
		Earn(1400000)
		-- AddEventItem(17)
		-- AddEventItem(17)
		-- AddEventItem(17)
		-- AddEventItem(17)
		-- SetTask(101,GetTask(101) + 70)
		-- SetTask(99,GetTask(99) + 70)
	end
	if xephang == 3  then
		-- ngayvp = ngay + 7
		-- thangvp = thang
		-- if ngayvp > mangthang[thang] then
		-- ngayvp = ngayvp - mangthang[thang]
		-- thangvp = thang + 1
		-- end
		-- itemidx = AddItem(0,10,5,3,0,0,0)
		-- SetTimeItem(itemidx,550324)
		-- SetHSD(itemidx, 2022 , thangvp, ngayvp, gio)
		-- Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." nh�n ���c Tuy�t �nh 7 Ng�y")
		-- Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." nh�n ���c 50 Xu")
		-- Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." nh�n ���c 2KNB")
		Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." nh�n ���c 100 v�n")
		Earn(1000000)
		-- AddEventItem(17)
		-- AddEventItem(17)
		-- SetTask(101,GetTask(101) + 50)
		-- SetTask(99,GetTask(99) + 50)
	end
	
	if xephang > 3 and xephang <= 10 then
	    -- SetTask(101,GetTask(101) + 20)
		-- SetTask(99,GetTask(99) + 20)
		Earn(400000)
		-- Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." nh�n ���c 20 Xu ")
		Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." nh�n ���c 40 v�n ")
	end

	
	
-- soluong2 = floor(GetTask(31) / 1000)
-- soluong = soluong2
-- if soluong > 0 then
	-- for i=1,soluong do 
		-- AddEventItem(659) 
	-- end
	-- Msg2Player("�i�m t�ch l�y c�a b�n "..GetTask(31)..", nh�n ���c <color=yellow>"..soluong.." T�ng Kim B�o R��ng")
-- else
	-- Msg2Player("�i�m t�ch l�y c�a b�n "..GetTask(31)..", kh�ng �� �i�u ki�n nh�n b�o r��ng")
-- end

if num == 1 then
		if GetTask(118) < 20 then
			for i=1,5 do AddOwnExp(1000000) end
			SetTask(612,GetTask(612)+1)
			for i=1,2 do 
		    AddEventItem(659) 
	        end
			Msg2Player("B�n nh�n ���c 1 �i�m s� ki�n")
			Msg2Player("B�n nh�n ���c 5.000.000 kinh nghi�m v� tham chi�n 10 - 19 ph�t !")
		elseif GetTask(118) < 30 then
			for i=1,5 do AddOwnExp(1000000) end
			for i=1,2 do 
		    AddEventItem(659) 
	        end
			SetTask(612,GetTask(612)+1)
			Msg2Player("B�n nh�n ���c 1 �i�m s� ki�n")
			Msg2Player("B�n nh�n ���c 5.000.000 kinh nghi�m v� tham chi�n 20 - 29 ph�t !")
		elseif GetTask(118) < 40 then
			for i=1,10 do AddOwnExp(1000000) end
			for i=1,2 do 
		    AddEventItem(659) 
	        end
			SetTask(612,GetTask(612)+1)
			Msg2Player("B�n nh�n ���c 1 �i�m s� ki�n")
			Msg2Player("B�n nh�n ���c 10.000.000 kinh nghi�m v� tham chi�n 30 - 39 ph�t !")
		elseif GetTask(118) < 70 then
			AddEventItem(128)
			for i=1,5 do 
		    AddEventItem(659) 
	        end
			for i=1,15 do AddOwnExp(1000000) end
			SetTask(612,GetTask(612)+5)
			Msg2Player("B�n nh�n ���c 5 �i�m s� ki�n")
			Msg2Player("B�n nh�n ���c 1 Ho�ng Kim S�t")
			Msg2Player("B�n nh�n ���c 15.000.000 kinh nghi�m v� tham chi�n tr�n 40 ph�t !")
		end	
elseif num == 2 then
		if GetTask(118) < 20 then
			for i=1,15 do AddOwnExp(1000000) end
			for i=1,2 do 
		    AddEventItem(659) 
	        end
			SetTask(612,GetTask(612)+1)
			Msg2Player("B�n nh�n ���c 1 �i�m s� ki�n")
			Msg2Player("B�n nh�n ���c 15.000.000 kinh nghi�m v� tham chi�n 10 - 19 ph�t !")
		elseif GetTask(118) < 30 then
			SetTask(612,GetTask(612)+1)
			Msg2Player("B�n nh�n ���c 1 �i�m s� ki�n")
			for i=1,15 do AddOwnExp(1000000) end
			for i=1,2 do 
		    AddEventItem(659) 
	        end
			Msg2Player("B�n nh�n ���c 15.000.000 kinh nghi�m v� tham chi�n 20 - 29 ph�t !")
		elseif GetTask(118) < 40 then
			SetTask(612,GetTask(612)+1)
			Msg2Player("B�n nh�n ���c 1 �i�m s� ki�n")
			for i=1,15 do AddOwnExp(1000000) end
			for i=1,2 do 
		    AddEventItem(659) 
	        end
			Msg2Player("B�n nh�n ���c 15.000.000 kinh nghi�m v� tham chi�n 30 - 39 ph�t !")
		elseif GetTask(118) < 70 then
			SetTask(612,GetTask(612)+5)
			for i=1,2 do AddEventItem(128) end 
			for i=1,5 do 
		    AddEventItem(659) 
	        end
			Msg2Player("B�n nh�n ���c 5 �i�m s� ki�n")
			Msg2Player("B�n nh�n ���c 2 Ho�ng Kim S�t")
			for i=1,25 do AddOwnExp(1000000) end
			Msg2Player("B�n nh�n ���c 25.000.000 kinh nghi�m v� tham chi�n tr�n 40 ph�t !")
		end	
end			
			
			
	mexp = 0
	mdanhvong = 0
	mtichluy = 0

			if num == 0 then
					mdanhvong = 15
					mtichluy = 750
					Msg2Player("T�ng kim ��i chi�n k�t th�c. K�t qu�: <color=pink>H�a ")		
			elseif num == 1 then
					mdanhvong = 20
					mtichluy = 1000
					Msg2Player("T�ng kim ��i chi�n k�t th�c. K�t qu�: <color=pink>Th�ng ")		
			elseif num == 2 then
					mdanhvong = 10
					mtichluy = 500
					Msg2Player("T�ng kim ��i chi�n k�t th�c. K�t qu�: <color=pink>Thua ")		
			end
			SetTask(15,GetTask(15) + mtichluy)
			AddRepute(mdanhvong)
			Msg2Player("B�n nh�n ���c: <color=yellow>"..mdanhvong.." danh v�ng, "..mtichluy.." t�ch l�y ")			
		
end

		
	



function DanhHieuVIP()	
ngay = tonumber(date("%d"))
if floor(GetTask(471) / 1000) == ngay then
	if mod(GetTask(471),1000) == 1 then
		if (GetTask(485) == 3 or GetTask(485) == 4)  then
			SetTask(478, GetTask(478) + 1)
			SetTask(471, GetTask(471) + 1)
			Msg2Player("<color=yellow>B�n nh�n ���c 1 V�ng Quay May M�n")
		elseif GetTask(485) == 5 then
			SetTask(478, GetTask(478) + 2)
			SetTask(471, GetTask(471) + 2)
			Msg2Player("<color=yellow>B�n nh�n ���c 2 V�ng Quay May M�n")			
		end
	end
else
	if GetTask(485) > 0 then
		SetTask(478, GetTask(478) + 1)
		SetTask(471, ngay * 1000  + 1)
		Msg2Player("<color=yellow>B�n nh�n ���c 1 V�ng Quay May M�n")
	end
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
	if w == 33 or w == 37 or w == 60 and GetTask(123) == GetGlbMissionV(61) and (GetTask(12) == 1 or GetTask(12) == 2) then
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
	timeconlai = 59-m
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