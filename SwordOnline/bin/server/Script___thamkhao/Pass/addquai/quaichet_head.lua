function OnDeath(idx)
w,x,y = GetWorldPos()
gio = tonumber(date("%H"))
ngay = tonumber(date("%d"))

nhiemvu = mod(GetTask(911),1000)
if nhiemvu ==1 then
	if w == 68 and GetNpcName(idx) == "S�i ��" and GetTask(912) < 100 then
			SetTask(912, GetTask(912) + 1)
			Msg2Player("Ti�n �� nhi�m v� gi�p �� M� Gi�: "..GetTask(912).." / 100")
			if GetTask(912) == 100 then
				Talk(1,"","Nhi�m v� gi�p �� M� Gi� Ho�n th�nh, quay v� Giang T�n Th�n �� ph�c m�nh !")
			end
	end
end

if GetTask(495) == 2 then
if GetNpcName(idx) == "K�n K�n" and GetTask(494) < 15 then
	SetTask(494, GetTask(494) + 1)
	Msg2Player("Nhi�m v� t�n th� ho�n th�nh: "..GetTask(494).." / 15 con")	
end
end


if w == 9999 and ngay == 1 and GetCamp() ~= 0 and GetPKState() ~= 0 and GetGlbMissionV(12) < 20000 then
	if	GetNpcName(idx) == "Heo Tr�ng" then
		SetGlbMissionV(12, GetGlbMissionV(12) + 1)
			Msg2Player("<color=yellow>S� l��ng Heo Tr�ng b� gi�t: <color=green>"..GetGlbMissionV(12).." con")
		if GetGlbMissionV(12) == 100 or GetGlbMissionV(12) == 5100  or GetGlbMissionV(12) == 10100    or GetGlbMissionV(12) == 15100 then
			AddEventItem(117)
			Msg2SubWorld("<color=yellow>"..GetName().." nh�n ���c ph�n th��ng th� "..GetGlbMissionV(12)..": 1 Ti�n Th�o L� 1 Gi� ")
		elseif GetGlbMissionV(12) == 500 or GetGlbMissionV(12) == 5500 or GetGlbMissionV(12) == 10500 or GetGlbMissionV(12) == 15500 then
			AddEventItem(117)
			AddEventItem(117)
			AddEventItem(117)
			Msg2SubWorld("<color=yellow>"..GetName().." nh�n ���c ph�n th��ng th� "..GetGlbMissionV(12)..": 3 Ti�n Th�o L� 1 Gi� ")
		elseif GetGlbMissionV(12) == 1000 or GetGlbMissionV(12) == 6000 or GetGlbMissionV(12) == 11000 or GetGlbMissionV(12) == 16000 then
			AddEventItem(120)
			Msg2SubWorld("<color=yellow>"..GetName().." nh�n ���c ph�n th��ng th� "..GetGlbMissionV(12)..": 1 Ti�n Th�o L� 6 Gi� ")
		elseif GetGlbMissionV(12) == 1500 or GetGlbMissionV(12) == 6500 or GetGlbMissionV(12) == 11500 or GetGlbMissionV(12) == 16500 then
			Earn(5000000)
			Msg2SubWorld("<color=yellow>"..GetName().." nh�n ���c ph�n th��ng th� "..GetGlbMissionV(12)..": 500 v�n l��ng")
		elseif GetGlbMissionV(12) == 2000 or GetGlbMissionV(12) == 7000 or GetGlbMissionV(12) == 12000 or GetGlbMissionV(12) == 17000 then
			AddEventItem(119)
			AddEventItem(119)
			AddEventItem(119)
			AddEventItem(119)
			AddEventItem(119)
			Msg2SubWorld("<color=yellow>"..GetName().." nh�n ���c ph�n th��ng th� "..GetGlbMissionV(12)..": 5 Ti�n Th�o L� 3 Gi� ")
		elseif GetGlbMissionV(12) == 5000 then
			idxitem = AddEventItem(38)
			Msg2SubWorld("<color=yellow>"..GetName().." nh�n ���c ph�n th��ng th� "..GetGlbMissionV(12)..": "..GetNameItemBox(idxitem).."")
		elseif GetGlbMissionV(12) == 10000 then
			idxitem = AddEventItem(37)
			Msg2SubWorld("<color=yellow>"..GetName().." nh�n ���c ph�n th��ng th� "..GetGlbMissionV(12)..": "..GetNameItemBox(idxitem).."")
		elseif GetGlbMissionV(12) == 15000 then
			idxitem = AddEventItem(36)
			Msg2SubWorld("<color=yellow>"..GetName().." nh�n ���c ph�n th��ng th� "..GetGlbMissionV(12)..": "..GetNameItemBox(idxitem).."")
		elseif GetGlbMissionV(12) == 20000 then
			idxitem = AddEventItem(35)
			Msg2SubWorld("<color=yellow>"..GetName().." nh�n ���c ph�n th��ng th� "..GetGlbMissionV(12)..": "..GetNameItemBox(idxitem).."")		
		end
	end
end


if w == 2 then -- Hoa S�n
	if ngay ~= GetTask(355) then
		SetTask(355, ngay)
		for k=357,361 do SetTask(k, 0) end
	end
	nvbang = 1
	if GetTaskTemp(36) == nvbang then
		SetTask(356+nvbang, GetTask(356+nvbang) + 1)
		Msg2Player("<color=yellow>Nhi�m v� bang h�i t�ch l�y: "..GetTask(356+nvbang).." �i�m")
	end

	if GetTask(103) == 1 and GetNpcName(idx) == "Nh�m" then
		SetTask(104,GetTask(104)+1)
		Msg2Player("Nhi�m v� m�n ph�i: S� l��ng nh�m ti�u di�t "..GetTask(104).." / 10 con")
		if GetTask(104) >= 10 then
		Msg2Player("S� l��ng ti�u di�t nh�m �� ��, quay l�i Tr��ng M�n �� ph�c m�nh !")
		end
	end
		
	if GetTask(157) == 7 and GetNpcName(idx) == "Nh�m" then
		if GetTask(156) < 100 then
		SetTask(156,GetTask(156)+1)
		Msg2Player("B�n �� ti�u di�t "..GetTask(156).."/100 con")
		if GetTask(156) == 100 then
		Talk(1,"","�� ��t �� s� l��ng Nh�m . H�y t�m Nh�m Ch�a �i !")
		end
		end
	elseif GetTask(157) == 41 and GetNpcName(idx) == "Nh�m" then
		if GetTask(156) < 5 then
			sx = random(1,20)
			if sx == 10 then
			SetTask(156,GetTask(156)+1)
			Msg2Player("B�n nh�n ���c 1 Th� C�p Nh�m")
			end
		else
		Msg2Player("Nhi�m v� �� ho�n th�nh, h�y tr� v� g�p Long Ng� �� tr� nhi�m v� !")	
		end
	end
		
end

if w == 53 then -- Ba Lang Huyen
		if GetTask(157) == 3 then
			if GetTask(156) < 200 then
			SetTask(156,GetTask(156)+1)
			Msg2Player("B�n �� ti�u di�t "..GetTask(156).."/200 con")
			else
			Msg2Player("Nhi�m v� ho�n th�nh, h�y eventr� v� g�p Long Ng� �� tr� nhi�m v� !")
			end
		elseif GetTask(157) == 40 then
			if GetTask(156) < 5 then
				sx = random(1,20)
				if sx == 10 then
				SetTask(156,GetTask(156)+1)
				Msg2Player("B�n nh�n ���c 1 Th� C�p H��u")
				end
			else
			Msg2Player("Nhi�m v� �� ho�n th�nh, h�y tr� v� g�p Long Ng� �� tr� nhi�m v� !")	
			end
		end
end

if w == 76 then
	if gio == 20 or gio == 21 then
		if ngay ~= GetTask(355) then
			SetTask(355, ngay)
			for k=357,361 do SetTask(k, 0) end
		end
		nvbang = 3
		if GetTaskTemp(36) == nvbang then
			SetTask(356+nvbang, GetTask(356+nvbang) + 1)
			Msg2Player("<color=yellow>Nhi�m v� bang h�i t�ch l�y: "..GetTask(356+nvbang).." �i�m")
		end
	else
		Msg2Player("S� Ki�n H�i Thu�c b�t ��u v�o l�c 20h00 - 22h00, c�c b�n quay l�i sau nh� ")	
	end
	--	if GetGlbMissionV(43) > 0 then
	--		if GetPKState() == 1 then
	--			if GetLevel() >= 90 then
	--				sx = random(1,20)
	--				if sx == 10 then
	--						tien = random(10,100)
	--						Earn(tien*10000)
	--						SetGlbMissionV(43, GetGlbMissionV(43) - tien)
	--						if tien > 80 then
	--							Msg2SubWorld("Ch�c m�ng "..GetName().." thu th�p C�y D��c Ph�m may m�n nh�n ���c <color=pink>"..tien.." v�n l��ng <color=red>C�n l�i: <color=blue>"..GetGlbMissionV(43).." v�n")
	--						elseif tien > 50 then
	--							Msg2World("Ch�c m�ng "..GetName().." thu th�p C�y D��c Ph�m may m�n nh�n ���c <color=green>"..tien.." v�n l��ng <color=red>C�n l�i: <color=blue>"..GetGlbMissionV(43).." v�n")
	--						else
	--							Msg2World("Ch�c m�ng "..GetName().." thu th�p C�y D��c Ph�m may m�n nh�n ���c <color=yellow>"..tien.." v�n l��ng <color=red>C�n l�i: <color=blue>"..GetGlbMissionV(43).." v�n")
	--						end
	--				else
	--					Msg2Player("B�n �� �i�u ki�n tham gia s� ki�n nh�ng thi�u may m�n, h�y th� l�i !")
	--				end
	--			else
	--				Msg2Player("C�p �� y�u c�u tham gia s� ki�n: 90")
	--			end
		--	else
		--		Msg2Player("Tr�ng th�i chi�n ��u m�i c� th� tham gia s� ki�n !")
		--	end
		--else
			--Msg2Player("Gi�i h�n s� ki�n 5000 v�n l��ng �� h�t, kh�ng th� tham gia ti�p. Vui l�ng quay l�i v�o ng�y mai.")
		--end
	--else
		soluong = random(5,10)
		for i=1,soluong do 
			idxitem = AddItem(1,2,0,3,0,0,0)
			SetItemLock(idxitem)
		end
		Msg2Player("B�n nh�n ���c "..soluong.." b�nh <color=yellow>Th�a Ti�n M�t")
	--end
		
end




end

function OnDrop()
ngay = tonumber(date("%d"))
w,x,y = GetWorldPos()


	-- sx = RandomNew(1,50)
	-- if sx == 25 then
		-- if (checkmapevent(w) == 0) then
			-- return
		-- end
		
		-- xsitem = RandomNew(1,200)
		-- if (xsitem < 180) then
				-- xsitem2 = RandomNew(1,100)
				-- if xsitem2 < 20 then
				-- idxitem = AddEventItem(313)
				-- Msg2Player("B�n nh�n ���c <color=blue>M�ng C�u")
				-- elseif xsitem2 < 40 then
				-- idxitem = AddEventItem(314)
				-- Msg2Player("B�n nh�n ���c <color=blue>D�a")
				-- elseif xsitem2 < 60 then
				-- idxitem = AddEventItem(315)
				-- Msg2Player("B�n nh�n ���c <color=blue>�u �� ")
				-- elseif xsitem2 < 80 then
				-- idxitem = AddEventItem(316)
				-- Msg2Player("B�n nh�n ���c <color=blue>Xo�i")
				-- else
				-- idxitem = AddEventItem(317)
				-- Msg2Player("B�n nh�n ���c <color=blue>Sung")
				-- end
		-- else
				-- idxitem = AddEventItem(321)
				-- Msg2Player("B�n nh�n ���c <color=yellow>M�m B�c")	
		-- end
	-- end
end

function checkmapevent(idmap)
check = 0
for i=1,getn(MangMap) do
	if idmap == MangMap[i] then
		check = 1
		break
	end
end
return check
end

MangMap = {111,110,94,93,177,21,178,64,107,104,180,175,176,63,102,173,174}