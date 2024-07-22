Include("\\script\\tongkim\\headtime.lua")
Include("\\script\\tongkim\\headtime.lua")
dstop = {}


function RunTimer()
h = tonumber(date("%H"))
m = tonumber(date("%M"))
s = tonumber(date("%S"))
if SubWorldID2Idx(60) == -1 then
return
end

thoigian = h*100 + m
w,x,y = GetWorldPos()


hinhthuc = 1



RestMin = 60 - m
if returnTimeRandomMission() == 1 and GetGlbMissionV(60) == 0 then -- Bao Danh Tong Kim
	KhoiTaoMangTop()
	ShowTopClear()
	KhoiTaoLaiTongKim()
	SetGlbMissionV(61,RandomNew(1,30000))
	Msg2WorldById("Thêi gian b¸o danh Tèng Kim §¹i ChiÕn chÝnh thøc b¾t ®Çu, c¸c nh©n sü h·y nhanh ch©n ®Õn Mé Binh Quan ®Ó vµo chiÕn tr­êng !",60)
	if hinhthuc == 1 then
		SetGlbMissionV(60,500)
		AddGlobalCountNews("ChiÕn dÞch Tèng Kim h×nh thøc Cõu S¸t ®ang ë giai ®o¹n b¸o danh, vÞ vâ l©m nh©n sü nµo muèn tham gia th× h·y ®Õn T­¬ng D­¬ng hoÆc Chu Tiªn trÊn ®Ó vµo khu vùc b¸o danh. Thêi gian khai chiÕn cßn:"..RestMin.." phót !",1)
		Msg2SubWorld("ChiÕn dÞch Tèng Kim h×nh thøc Cõu S¸t ®ang ë giai ®o¹n b¸o danh, vÞ vâ l©m nh©n sü nµo muèn tham gia th× h·y ®Õn T­¬ng D­¬ng hoÆc Chu Tiªn trÊn ®Ó vµo khu vùc b¸o danh. Thêi gian khai chiÕn cßn:"..RestMin.." phót !")

	else
		HideNpc(GetGlbMissionV(85),9999999)
		HideNpc(GetGlbMissionV(86),9999999)
		SetGlbMissionV(60,1500)
		AddGlobalCountNews("ChiÕn dÞch Tèng Kim h×nh thøc B¶o VÖ Nguyªn So¸i ®ang ë giai ®o¹n b¸o danh, vÞ vâ l©m nh©n sü nµo muèn tham gia th× h·y ®Õn T­¬ng D­¬ng hoÆc Chu Tiªn trÊn ®Ó vµo khu vùc b¸o danh. Thêi gian khai chiÕn cßn:"..RestMin.." phót !",1)
	end
	idx = PlayerIndex
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
			if GetItemCount(24) == 0 then
				AddEventItem(24)
				Msg2Player("Tèng kim ®¹i chiÕn ®· b¾t ®Çu, Server tÆng b¹n 1 <color=yellow>Tèng Kim Chiªu Th­ <color=red>®Ó cã thÓ tham gia ChiÕn Tr­êng Tèng Kim nhanh nhÊt !")
			end
	end
	PlayerIndex = idx
elseif returnTimeTK() == 1 then
	if GetGlbMissionV(60) == 500 then
		AddGlobalCountNews("ChiÕn dÞch Tèng Kim h×nh thøc Cõu S¸t ®ang ë giai ®o¹n b¸o danh, vÞ vâ l©m nh©n sü nµo muèn tham gia th× h·y ®Õn T­¬ng D­¬ng hoÆc Chu Tiªn trÊn ®Ó vµo khu vùc b¸o danh. Thêi gian khai chiÕn cßn:"..RestMin.." phót !",1)
	elseif GetGlbMissionV(60) == 1500 then
		AddGlobalCountNews("ChiÕn dÞch Tèng Kim h×nh thøc B¶o VÖ Nguyªn So¸i ®ang ë giai ®o¹n b¸o danh, vÞ vâ l©m nh©n sü nµo muèn tham gia th× h·y ®Õn T­¬ng D­¬ng hoÆc Chu Tiªn trÊn ®Ó vµo khu vùc b¸o danh. Thêi gian khai chiÕn cßn:"..RestMin.." phót !",1)
	end
end

if returnTimeRandomMission() == 2 and (GetGlbMissionV(60) == 500 or GetGlbMissionV(60) == 1500) then -- TK Bat Dau
	if GetGlbMissionV(60) == 500 then
		SetGlbMissionV(60,1000)
		AddGlobalCountNews("Thêi gian b¸o danh Tèng Kim (ph­¬ng thøc Cõu S¸t ) ®· kÕt thóc. ChiÕn ®Êu chÝnh thøc b¾t ®Çu !",1)
		Msg2WorldById("Tèng Kim §¹i ChiÕn chÝnh thøc b¾t ®Çu ........ !",33)
		Msg2WorldById("Tèng Kim §¹i ChiÕn chÝnh thøc b¾t ®Çu ........ !",37)
	elseif GetGlbMissionV(60) == 1500 then
		SetGlbMissionV(60,2000)
		AddGlobalCountNews("Thêi gian b¸o danh Tèng Kim (ph­¬ng thøc b¶o vÖ Nguyªn So¸i) ®· kÕt thóc. ChiÕn ®Êu chÝnh thøc b¾t ®Çu !",1)
		Msg2WorldById("Tèng Kim §¹i ChiÕn chÝnh thøc b¾t ®Çu ........ !",61)
		Msg2WorldById("Tèng Kim §¹i ChiÕn chÝnh thøc b¾t ®Çu ........ !",96)
	end
elseif returnTimeTK() == 2 then
	if GetGlbMissionV(60) == 1000 then
		AddGlobalCountNews("Tèng Kim §¹i ChiÕn - H×nh thøc Cõu S¸t ®ang diÔn ra rÊt ¸c liÖt, tæng ®iÓm tÝch lòy qu©n Tèng <color=red>"..GetGlbMissionV(81).."<color> - qu©n Kim <color=red>"..GetGlbMissionV(82).."<color>. ",1)
		Msg2WorldById("TÝch lòy qu©n Tèng <color=yellow>"..GetGlbMissionV(81).."",33)
		Msg2WorldById("TÝch lòy qu©n Kim <color=green>"..GetGlbMissionV(82).."",33)
		Msg2WorldById("TÝch lòy qu©n Tèng <color=yellow>"..GetGlbMissionV(81).."",37)
		Msg2WorldById("TÝch lòy qu©n Kim <color=green>"..GetGlbMissionV(82).."",37)
	elseif GetGlbMissionV(60) == 2000 then
		AddGlobalCountNews("Tèng Kim §¹i ChiÕn - H×nh thøc B¶o vÖ Nguyªn So¸i ®ang diÔn ra rÊt ¸c liÖt, tæng ®iÓm tÝch lòy qu©n Tèng <color=red>"..GetGlbMissionV(81).."<color> - qu©n Kim <color=red>"..GetGlbMissionV(82).."<color>. ",1)
			Msg2WorldById("TÝch lòy qu©n Tèng <color=yellow>"..GetGlbMissionV(81).."",61)
			Msg2WorldById("TÝch lòy qu©n Kim <color=green>"..GetGlbMissionV(82).."",61)
			Msg2WorldById("TÝch lòy qu©n Tèng <color=yellow>"..GetGlbMissionV(81).."",96)
			Msg2WorldById("TÝch lòy qu©n Kim <color=green>"..GetGlbMissionV(82).."",96)
	end
end

if returnCreateBossTK() == 1 then
	if GetGlbMissionV(60) == 2000 then
		if GetGlbMissionV(81) > GetGlbMissionV(82) then
			HideNpc(GetGlbMissionV(86),0)
			Msg2WorldById("<color=yellow>Nguyªn So¸i phe Kim ®· xuÊt hiÖn ........ ",61)
			Msg2WorldById("<color=yellow>Nguyªn So¸i phe Kim ®· xuÊt hiÖn ........ ",96)
			SetGlbMissionV(87,1)
		elseif GetGlbMissionV(81) < GetGlbMissionV(82) then
			HideNpc(GetGlbMissionV(85),0)
			Msg2WorldById("<color=yellow>Nguyªn So¸i phe Tèng ®· xuÊt hiÖn ........ ",61)
			Msg2WorldById("<color=yellow>Nguyªn So¸i phe Tèng ®· xuÊt hiÖn ........ ",96)
			SetGlbMissionV(88,1)
		else
			HideNpc(GetGlbMissionV(85),0)
			HideNpc(GetGlbMissionV(86),0)
			SetGlbMissionV(87,1)
			SetGlbMissionV(88,1)
			Msg2WorldById("<color=yellow>Nguyªn So¸i phe Tèng ®· xuÊt hiÖn ........ ",61)
			Msg2WorldById("<color=yellow>Nguyªn So¸i phe Kim ®· xuÊt hiÖn ........ ",61)
			Msg2WorldById("<color=yellow>Nguyªn So¸i phe Tèng ®· xuÊt hiÖn ........ ",96)
			Msg2WorldById("<color=yellow>Nguyªn So¸i phe Kim ®· xuÊt hiÖn ........ ",96)
		end
	end
elseif returnCreateBossTK() == 2 then
	if GetGlbMissionV(60) == 2000 then
		if GetGlbMissionV(87) == 0 then
			HideNpc(GetGlbMissionV(86),0)
			SetGlbMissionV(87,1)
			Msg2WorldById("<color=yellow>Nguyªn So¸i phe Kim ®· xuÊt hiÖn ........ ",61)
			Msg2WorldById("<color=yellow>Nguyªn So¸i phe Kim ®· xuÊt hiÖn ........ ",96)
		elseif GetGlbMissionV(88) == 0 then
			HideNpc(GetGlbMissionV(85),0)
			SetGlbMissionV(88,1)
			Msg2WorldById("<color=yellow>Nguyªn So¸i phe Tèng ®· xuÊt hiÖn ........ ",61)
			Msg2WorldById("<color=yellow>Nguyªn So¸i phe Tèng ®· xuÊt hiÖn ........ ",96)
		end
	end
end

if returnTimeRandomMission() == 3  and (GetGlbMissionV(60) == 1000 or GetGlbMissionV(60) == 2000) then -- Tong Kim Ket Thuc
	if GetGlbMissionV(60) == 1000 then
		if GetGlbMissionV(81) > GetGlbMissionV(82) then
			AddGlobalCountNews("Tèng Kim ®¹i chiÕn kÕt thóc, tæng ®iÓm tÝch lòy qu©n Tèng <color=red>"..GetGlbMissionV(81).."<color> - qu©n Kim <color=red>"..GetGlbMissionV(82).."<color>. PhÇn th¾ng thuéc vÒ qu©n Tèng  !",1)
			Msg2WorldById("Tèng Kim ®¹i chiÕn kÕt thóc, phÇn th¾ng thuéc vÒ qu©n Tèng",33)
			Msg2WorldById("Tèng Kim ®¹i chiÕn kÕt thóc, phÇn th¾ng thuéc vÒ qu©n Tèng",37)
		elseif GetGlbMissionV(81) < GetGlbMissionV(82) then
			AddGlobalCountNews("Tèng Kim ®¹i chiÕn kÕt thóc, tæng ®iÓm tÝch lòy qu©n Tèng <color=red>"..GetGlbMissionV(81).."<color> - qu©n Kim <color=red>"..GetGlbMissionV(82).."<color>. PhÇn th¾ng thuéc vÒ qu©n Kim !",1)
			Msg2WorldById("Tèng Kim ®¹i chiÕn kÕt thóc, phÇn th¾ng thuéc vÒ qu©n Kim",33)
			Msg2WorldById("Tèng Kim ®¹i chiÕn kÕt thóc, phÇn th¾ng thuéc vÒ qu©n Kim",37)
		else
			AddGlobalCountNews("Tèng Kim ®¹i chiÕn kÕt thóc, tæng ®iÓm tÝch lòy qu©n Tèng <color=red>"..GetGlbMissionV(81).."<color> - qu©n Kim <color=red>"..GetGlbMissionV(82).."<color>. KÕt qu¶ hai bªn hßa !",1)
			Msg2WorldById("Tèng Kim ®¹i chiÕn kÕt thóc, kÕt qu¶ hai bªn hßa",33)
			Msg2WorldById("Tèng Kim ®¹i chiÕn kÕt thóc, kÕt qu¶ hai bªn hßa",37)
		end
	elseif GetGlbMissionV(60) == 2000 then
		if (GetGlbMissionV(87) == 2 and GetGlbMissionV(88) == 2) or (GetGlbMissionV(87) == 1 and GetGlbMissionV(88) == 1) then
			if GetGlbMissionV(81) > GetGlbMissionV(82) then
			AddGlobalCountNews("Tèng Kim ®¹i chiÕn kÕt thóc, tæng ®iÓm tÝch lòy qu©n Tèng <color=red>"..GetGlbMissionV(81).."<color> - qu©n Kim <color=red>"..GetGlbMissionV(82).."<color>. PhÇn th¾ng thuéc vÒ qu©n Tèng  !",1)
			Msg2WorldById("Tèng Kim ®¹i chiÕn kÕt thóc, phÇn th¾ng thuéc vÒ qu©n Tèng",61)
			Msg2WorldById("Tèng Kim ®¹i chiÕn kÕt thóc, phÇn th¾ng thuéc vÒ qu©n Tèng",96)
			elseif GetGlbMissionV(81) < GetGlbMissionV(82) then
			AddGlobalCountNews("Tèng Kim ®¹i chiÕn kÕt thóc, tæng ®iÓm tÝch lòy qu©n Tèng <color=red>"..GetGlbMissionV(81).."<color> - qu©n Kim <color=red>"..GetGlbMissionV(82).."<color>. PhÇn th¾ng thuéc vÒ qu©n Kim !",1)
			Msg2WorldById("Tèng Kim ®¹i chiÕn kÕt thóc, phÇn th¾ng thuéc vÒ qu©n Kim",61)
			Msg2WorldById("Tèng Kim ®¹i chiÕn kÕt thóc, phÇn th¾ng thuéc vÒ qu©n Kim",96)
			else
			AddGlobalCountNews("Tèng Kim ®¹i chiÕn kÕt thóc, tæng ®iÓm tÝch lòy qu©n Tèng <color=red>"..GetGlbMissionV(81).."<color> - qu©n Kim <color=red>"..GetGlbMissionV(82).."<color>. KÕt qu¶ hai bªn hßa !",1)
			Msg2WorldById("Tèng Kim ®¹i chiÕn kÕt thóc, kÕt qu¶ hai bªn hßa",61)
			Msg2WorldById("Tèng Kim ®¹i chiÕn kÕt thóc, kÕt qu¶ hai bªn hßa",96)
			end
		elseif GetGlbMissionV(87) == 2 and GetGlbMissionV(88) == 1 then
			AddGlobalCountNews("Tèng Kim ®¹i chiÕn kÕt thóc, Nguyªn So¸i phe Kim ®· bÞ tiªu diÖt . PhÇn th¾ng thuéc vÒ qu©n Tèng  !",1)
			Msg2WorldById("Tèng Kim ®¹i chiÕn kÕt thóc, phÇn th¾ng thuéc vÒ qu©n Tèng",61)
			Msg2WorldById("Tèng Kim ®¹i chiÕn kÕt thóc, phÇn th¾ng thuéc vÒ qu©n Tèng",96)
		elseif GetGlbMissionV(87) == 1 and GetGlbMissionV(88) == 2 then
			AddGlobalCountNews("Tèng Kim ®¹i chiÕn kÕt thóc, Nguyªn So¸i phe Tèng ®· bÞ tiªu diÖt, PhÇn th¾ng thuéc vÒ qu©n Kim !",1)
			Msg2WorldById("Tèng Kim ®¹i chiÕn kÕt thóc, phÇn th¾ng thuéc vÒ qu©n Kim",61)
			Msg2WorldById("Tèng Kim ®¹i chiÕn kÕt thóc, phÇn th¾ng thuéc vÒ qu©n Kim",96)
		end
	end
	
	for i=1,GetCountPlayerMax() do
		PlayerIndex  = i
		w,x,y = GetWorldPos()
		if GetTask(40) == 1 then
			 if (GetGlbMissionV(60) == 1000 and (w == 33 or w == 37))  then
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
			elseif (GetGlbMissionV(60) == 2000 and (w == 61 or w == 96))  then
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
					elseif GetGlbMissionV(87) == 1 and GetGlbMissionV(88) == 2 then -- THANG
							phanthuongthem(1)
					elseif GetGlbMissionV(87) == 2 and GetGlbMissionV(88) == 1 then
							phanthuongthem(2)
					end
				end
				resetAllTask()
			end
		end
	end
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
mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}


function phanthuongthem(num)
thang = tonumber(date("%m"))
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
	xephang = CheckTenTop(GetName())	
	if xephang > 0 and xephang <= 20 then
			Msg2SubWorld("H¹ng "..xephang..": "..GetName().."")
	end

	if xephang == 1 then	
		effect_ngay = ngay + 1
		effect_thang = thang
		if effect_ngay > mangthang[thang] then
			effect_ngay = effect_ngay - mangthang[thang]
			effect_thang = thang + 1
		end
		ketqua = effect_thang * 30 * 24 + effect_ngay * 24 + gio
		SetTask(901, ketqua)
	end
		
mdanhvong = 0
	if num == 0 then
		mdanhvong = 9
		Msg2Player("Tèng kim ®¹i chiÕn kÕt thóc. KÕt qu¶: <color=pink>Hßa ")		
	elseif num == 1 then
		mdanhvong = 12
		Msg2Player("Tèng kim ®¹i chiÕn kÕt thóc. KÕt qu¶: <color=pink>Th¾ng ")		
	elseif num == 2 then
		mdanhvong = 6
		Msg2Player("Tèng kim ®¹i chiÕn kÕt thóc. KÕt qu¶: <color=pink>Thua ")		
	end	
	
		AddRepute(mdanhvong)
			mhongbao = 0	
			mruong = 0
			if GetTask(31) >= 1000 and GetTask(118) >= 20 then
					AddEventItem(16)
					mhongbao = mhongbao + 1
					AddEventItem(412)	
					mruong = mruong + 1
			elseif GetTask(31) >= 1000 or GetTask(118) >= 20 then
					AddEventItem(412)
					mruong = mruong + 1
			end
			
			if GetTask(31) >= 3000 then
				AddEventItem(412)
					mruong = mruong + 1
			end
			if GetTask(31) >= 6000 then
				AddEventItem(16)
					mhongbao = mhongbao + 1
			end
			if GetTask(31) >= 10000 then
				AddEventItem(412)
					mruong = mruong + 1
			end
			
			Msg2Player("<color=green>Thµnh tÝch cña b¹n trong trËn: ")
			Msg2Player("TÝch lòy: <color=yellow>: "..GetTask(31).." <color=red>- Thêi gian tham chiÕn: <color=yellow>: "..GetTask(118).." phót")
			Msg2Player("<color=green>PhÇn th­ëng nhËn ®­îc: ")
			Msg2Player("Hång Bao: <color=yellow>"..mhongbao.." <color=red>- R­¬ng Ng©n L­îng: <color=yellow>"..mruong.."")		
	inlog("Time: "..GetTask(118).." - Diem: "..GetTask(31).." - HB: "..GetItemCount(16).." - Ruong: "..GetItemCount(412).." - ["..GetAccount().."] ["..GetName().."]")
end

mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}
function AddLaThu1Ngay()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))

		ngay = ngay + 1
		if ngay > mangthang[thang] then
			ngay = ngay - mangthang[thang]
			thang = thang + 1
		end
		itemidx = AddEventItem(657)
		SetHSD(itemidx, 2021 , thang, ngay, gio )
		itemidx = AddEventItem(657)
		SetHSD(itemidx, 2021 , thang, ngay, gio )
		Msg2Player("B¹n nhËn ®­îc 2 L¸ Th­ Göi MÑ ")
end


function inlog(string)
thoigianfile = tonumber(date("%d%m"))
thoigian = tonumber(date("%H%M%d%m"))
local LoginLog = openfile("Data/LogTongKim/"..thoigianfile..".txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end


function DanhHieuVIP()	
ngay = tonumber(date("%d"))
if floor(GetTask(471) / 1000) == ngay then
	if mod(GetTask(471),1000) == 1 then
		if (GetTask(485) == 3 or GetTask(485) == 4)  then
			SetTask(478, GetTask(478) + 1)
			SetTask(471, GetTask(471) + 1)
			Msg2Player("<color=yellow>B¹n nhËn ®­îc 1 Vßng Quay May M¾n")
		elseif GetTask(485) == 5 then
			SetTask(478, GetTask(478) + 2)
			SetTask(471, GetTask(471) + 2)
			Msg2Player("<color=yellow>B¹n nhËn ®­îc 2 Vßng Quay May M¾n")			
		end
	end
else
	if GetTask(485) > 0 then
		SetTask(478, GetTask(478) + 1)
		SetTask(471, ngay * 1000  + 1)
		Msg2Player("<color=yellow>B¹n nhËn ®­îc 1 Vßng Quay May M¾n")
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
	if w == 33 or w == 37 or w == 60 or w == 61 or w == 96 and GetTask(123) == GetGlbMissionV(61) and (GetTask(12) == 1 or GetTask(12) == 2) then
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
	timeconlai = 60-m+59
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