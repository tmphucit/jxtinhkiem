Include("\\script\\tongkim\\headtime.lua")
dstop = {}

function RunTimer()
h = tonumber(date("%H"))
m = tonumber(date("%M"))
s = tonumber(date("%S"))

thoigian = h*100 + m
w,x,y = GetWorldPos()

if h == 18 or h == 19 then
hinhthuc = 1
else
hinhthuc = random(1,2)
end

RestMin = 60 - m
if returnTimeRandomMission() == 1 and GetGlbMissionV(60) == 0 then -- Bao Danh Tong Kim
	KhoiTaoMangTop()
	ShowTopClear()
	KhoiTaoLaiTongKim()
	SetGlbMissionV(61,random(1,30000))
	Msg2WorldById("Thêi gian b¸o danh Tèng Kim §¹i ChiÕn chİnh thøc b¾t ®Çu, c¸c nh©n sü h·y nhanh ch©n ®Õn Mé Binh Quan ®Ó vµo chiÕn tr­êng !",60)
	if hinhthuc == 1 then
		SetGlbMissionV(60,500)
		AddGlobalCountNews("ChiÕn dŞch Tèng Kim h×nh thøc Cõu S¸t ®ang ë giai ®o¹n b¸o danh, vŞ vâ l©m nh©n sü nµo muèn tham gia th× h·y ®Õn T­¬ng D­¬ng hoÆc Chu Tiªn trÊn ®Ó vµo khu vùc b¸o danh. Thêi gian khai chiÕn cßn : <color=cyan>"..RestMin.." <color> phót !",1)
		Msg2SubWorld("ChiÕn dŞch Tèng Kim h×nh thøc Cõu S¸t ®ang ë giai ®o¹n b¸o danh, vŞ vâ l©m nh©n sü nµo muèn tham gia th× h·y ®Õn T­¬ng D­¬ng hoÆc Chu Tiªn trÊn ®Ó vµo khu vùc b¸o danh. Thêi gian khai chiÕn cßn : <color=cyan>"..RestMin.." <color> phót !")

	else
		HideNpc(GetGlbMissionV(85),9999999)
		HideNpc(GetGlbMissionV(86),9999999)
		SetGlbMissionV(60,1500)
		AddGlobalCountNews("ChiÕn dŞch Tèng Kim h×nh thøc B¶o VÖ Nguyªn So¸i ®ang ë giai ®o¹n b¸o danh, vŞ vâ l©m nh©n sü nµo muèn tham gia th× h·y ®Õn T­¬ng D­¬ng hoÆc Chu Tiªn trÊn ®Ó vµo khu vùc b¸o danh. Thêi gian khai chiÕn cßn : <color=cyan>"..RestMin.." <color> phót !",1)
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
		AddGlobalCountNews("ChiÕn dŞch Tèng Kim h×nh thøc Cõu S¸t ®ang ë giai ®o¹n b¸o danh, vŞ vâ l©m nh©n sü nµo muèn tham gia th× h·y ®Õn T­¬ng D­¬ng hoÆc Chu Tiªn trÊn ®Ó vµo khu vùc b¸o danh. Thêi gian khai chiÕn cßn : <color=cyan>"..RestMin.." <color> phót !",1)
	elseif GetGlbMissionV(60) == 1500 then
		AddGlobalCountNews("ChiÕn dŞch Tèng Kim h×nh thøc B¶o VÖ Nguyªn So¸i ®ang ë giai ®o¹n b¸o danh, vŞ vâ l©m nh©n sü nµo muèn tham gia th× h·y ®Õn T­¬ng D­¬ng hoÆc Chu Tiªn trÊn ®Ó vµo khu vùc b¸o danh. Thêi gian khai chiÕn cßn : <color=cyan>"..RestMin.." <color> phót !",1)
	end
end

if returnTimeRandomMission() == 2 and (GetGlbMissionV(60) == 500 or GetGlbMissionV(60) == 1500) then -- TK Bat Dau
	if GetGlbMissionV(60) == 500 then
		SetGlbMissionV(60,1000)
		AddGlobalCountNews("Thêi gian b¸o danh Tèng Kim (ph­¬ng thøc Cõu S¸t ) ®· kÕt thóc. ChiÕn ®Êu chİnh thøc b¾t ®Çu !",1)
		Msg2WorldById("Tèng Kim §¹i ChiÕn chİnh thøc b¾t ®Çu ........ !",33)
	elseif GetGlbMissionV(60) == 1500 then
		SetGlbMissionV(60,2000)
		AddGlobalCountNews("Thêi gian b¸o danh Tèng Kim (ph­¬ng thøc b¶o vÖ Nguyªn So¸i) ®· kÕt thóc. ChiÕn ®Êu chİnh thøc b¾t ®Çu !",1)
		Msg2WorldById("Tèng Kim §¹i ChiÕn chİnh thøc b¾t ®Çu ........ !",61)
	end
elseif returnTimeTK() == 2 then
	if GetGlbMissionV(60) == 1000 then
		AddGlobalCountNews("Tèng Kim §¹i ChiÕn - H×nh thøc Cõu S¸t ®ang diÔn ra rÊt ¸c liÖt, tæng ®iÓm tİch lòy qu©n Tèng <color=red>"..GetGlbMissionV(81).."<color> - qu©n Kim <color=red>"..GetGlbMissionV(82).."<color>. ",1)
	elseif GetGlbMissionV(60) == 2000 then
		AddGlobalCountNews("Tèng Kim §¹i ChiÕn - H×nh thøc B¶o vÖ Nguyªn So¸i ®ang diÔn ra rÊt ¸c liÖt, tæng ®iÓm tİch lòy qu©n Tèng <color=red>"..GetGlbMissionV(81).."<color> - qu©n Kim <color=red>"..GetGlbMissionV(82).."<color>. ",1)
	end

	idx = PlayerIndex
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 33 or w == 61  then
			if GetFightState() == 1 then
				SetTask(118,GetTask(118) + 60)
				Msg2Player("<color=pink>Thêi gian tham chiÕn cña b¹n: "..floor(GetTask(118)/60).." phót !")
			else
				Msg2Player("<color=pink>B¹n kh«ng thuéc khu vùc thi ®Êu, kh«ng ®­îc tİnh thêi gian !")
			end
		end
	end
	PlayerIndex = idx
	
end

if returnCreateBossTK() == 1 then
	if GetGlbMissionV(60) == 2000 then
		if GetGlbMissionV(81) > GetGlbMissionV(82) then
			HideNpc(GetGlbMissionV(86),0)
			Msg2WorldById("Nguyªn So¸i phe Kim ®· xuÊt hiÖn ........ ",61)
			SetGlbMissionV(87,1)
		elseif GetGlbMissionV(81) < GetGlbMissionV(82) then
			HideNpc(GetGlbMissionV(85),0)
			Msg2WorldById("Nguyªn So¸i phe Tèng ®· xuÊt hiÖn ........ ",61)
			SetGlbMissionV(88,1)
		else
			HideNpc(GetGlbMissionV(85),0)
			HideNpc(GetGlbMissionV(86),0)
			SetGlbMissionV(87,1)
			SetGlbMissionV(88,1)
			Msg2WorldById("Nguyªn So¸i phe Tèng ®· xuÊt hiÖn ........ ",61)
			Msg2WorldById("Nguyªn So¸i phe Kim ®· xuÊt hiÖn ........ ",61)
		end
	end
elseif returnCreateBossTK() == 2 then
	if GetGlbMissionV(60) == 2000 then
		if GetGlbMissionV(87) == 0 then
			HideNpc(GetGlbMissionV(86),0)
			SetGlbMissionV(87,1)
			Msg2WorldById("Nguyªn So¸i phe Kim ®· xuÊt hiÖn ........ ",61)
		elseif GetGlbMissionV(88) == 0 then
			HideNpc(GetGlbMissionV(85),0)
			SetGlbMissionV(88,1)
			Msg2WorldById("Nguyªn So¸i phe Tèng ®· xuÊt hiÖn ........ ",61)
		end
	end
end

if returnTimeRandomMission() == 3  and (GetGlbMissionV(60) == 1000 or GetGlbMissionV(60) == 2000) then -- Tong Kim Ket Thuc
	if GetGlbMissionV(60) == 1000 then
		if GetGlbMissionV(81) > GetGlbMissionV(82) then
			AddGlobalCountNews("Tèng Kim ®¹i chiÕn kÕt thóc, tæng ®iÓm tİch lòy qu©n Tèng <color=red>"..GetGlbMissionV(81).."<color> - qu©n Kim <color=red>"..GetGlbMissionV(82).."<color>. PhÇn th¾ng thuéc vÒ qu©n Tèng  !",1)
			Msg2WorldById("Tèng Kim ®¹i chiÕn kÕt thóc, phÇn th¾ng thuéc vÒ qu©n Tèng",33)
		elseif GetGlbMissionV(81) < GetGlbMissionV(82) then
			AddGlobalCountNews("Tèng Kim ®¹i chiÕn kÕt thóc, tæng ®iÓm tİch lòy qu©n Tèng <color=red>"..GetGlbMissionV(81).."<color> - qu©n Kim <color=red>"..GetGlbMissionV(82).."<color>. PhÇn th¾ng thuéc vÒ qu©n Kim !",1)
			Msg2WorldById("Tèng Kim ®¹i chiÕn kÕt thóc, phÇn th¾ng thuéc vÒ qu©n Kim",33)
		else
			AddGlobalCountNews("Tèng Kim ®¹i chiÕn kÕt thóc, tæng ®iÓm tİch lòy qu©n Tèng <color=red>"..GetGlbMissionV(81).."<color> - qu©n Kim <color=red>"..GetGlbMissionV(82).."<color>. KÕt qu¶ hai bªn hßa !",1)
			Msg2WorldById("Tèng Kim ®¹i chiÕn kÕt thóc, kÕt qu¶ hai bªn hßa",33)
		end
	elseif GetGlbMissionV(60) == 2000 then
		if (GetGlbMissionV(87) == 2 and GetGlbMissionV(88) == 2) or (GetGlbMissionV(87) == 1 and GetGlbMissionV(88) == 1) then
			if GetGlbMissionV(81) > GetGlbMissionV(82) then
			AddGlobalCountNews("Tèng Kim ®¹i chiÕn kÕt thóc, tæng ®iÓm tİch lòy qu©n Tèng <color=red>"..GetGlbMissionV(81).."<color> - qu©n Kim <color=red>"..GetGlbMissionV(82).."<color>. PhÇn th¾ng thuéc vÒ qu©n Tèng  !",1)
			Msg2WorldById("Tèng Kim ®¹i chiÕn kÕt thóc, phÇn th¾ng thuéc vÒ qu©n Tèng",61)
			elseif GetGlbMissionV(81) < GetGlbMissionV(82) then
			AddGlobalCountNews("Tèng Kim ®¹i chiÕn kÕt thóc, tæng ®iÓm tİch lòy qu©n Tèng <color=red>"..GetGlbMissionV(81).."<color> - qu©n Kim <color=red>"..GetGlbMissionV(82).."<color>. PhÇn th¾ng thuéc vÒ qu©n Kim !",1)
			Msg2WorldById("Tèng Kim ®¹i chiÕn kÕt thóc, phÇn th¾ng thuéc vÒ qu©n Kim",61)
			else
			AddGlobalCountNews("Tèng Kim ®¹i chiÕn kÕt thóc, tæng ®iÓm tİch lòy qu©n Tèng <color=red>"..GetGlbMissionV(81).."<color> - qu©n Kim <color=red>"..GetGlbMissionV(82).."<color>. KÕt qu¶ hai bªn hßa !",1)
			Msg2WorldById("Tèng Kim ®¹i chiÕn kÕt thóc, kÕt qu¶ hai bªn hßa",61)
			end
		elseif GetGlbMissionV(87) == 2 and GetGlbMissionV(88) == 1 then
			AddGlobalCountNews("Tèng Kim ®¹i chiÕn kÕt thóc, Nguyªn So¸i phe Kim ®· bŞ tiªu diÖt . PhÇn th¾ng thuéc vÒ qu©n Tèng  !",1)
			Msg2WorldById("Tèng Kim ®¹i chiÕn kÕt thóc, phÇn th¾ng thuéc vÒ qu©n Tèng",61)
		elseif GetGlbMissionV(87) == 1 and GetGlbMissionV(88) == 2 then
			AddGlobalCountNews("Tèng Kim ®¹i chiÕn kÕt thóc, Nguyªn So¸i phe Tèng ®· bŞ tiªu diÖt, PhÇn th¾ng thuéc vÒ qu©n Kim !",1)
			Msg2WorldById("Tèng Kim ®¹i chiÕn kÕt thóc, phÇn th¾ng thuéc vÒ qu©n Kim",61)
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
							Msg2Player("Tèng kim ®¹i chiÕn kÕt thóc, b¹n nhËn ®­îc 500 tİch luü vµ 10 danh väng")
					elseif GetGlbMissionV(81) > GetGlbMissionV(82) then -- THANG
							SetTask(15,GetTask(15) + 1000)
							phanthuongthem()
							AddRepute(20)
							if GetTask(118) >= 30*60 then
							AddOwnExp(4000000)
							Msg2Player("B¹n nhËn ®­îc <color=green>"..exp.."<color=red> ®iÓm kinh nghiÖm giµnh th¾ng lîi trong Tèng Kim!")	
							--AddEventItem(150)	
							--Msg2Player("B¹n nhËn ®­îc 1 LÔ Bao VLTK do giµnh chiÕn th¾ng vµ tham gia chiÕn tr­êng trªn 30 phót")
							end
							Msg2Player("Tèng kim ®¹i chiÕn kÕt thóc, b¹n nhËn ®­îc 1000 tİch luü vµ 20 danh väng")
					else -- HOA
							SetTask(15,GetTask(15) + 750)
							phanthuongthem()
							
							AddRepute(15)
							Msg2Player("Tèng kim ®¹i chiÕn kÕt thóc, b¹n nhËn ®­îc 750 tİch luü vµ 15 danh väng")

					end
				elseif GetTask(12) == 2 then
					SetTempRevPos(60,50432,98816)
					NewWorld(60,1576,3088)
					if GetGlbMissionV(81) > GetGlbMissionV(82) then -- THUA
							SetTask(15,GetTask(15) + 500)
							phanthuongthem()
							
							AddRepute(10)
							Msg2Player("Tèng kim ®¹i chiÕn kÕt thóc, b¹n nhËn ®­îc 500 tİch luü vµ 10 danh väng")
					elseif GetGlbMissionV(81) < GetGlbMissionV(82) then -- THANG
							SetTask(15,GetTask(15) + 1000)
							phanthuongthem()
							if GetTask(118) >= 30*60 then
							AddOwnExp(4000000)
							Msg2Player("B¹n nhËn ®­îc <color=green>"..exp.."<color=red> ®iÓm kinh nghiÖm giµnh th¾ng lîi trong Tèng Kim!")	
							--AddEventItem(150)	
							--Msg2Player("B¹n nhËn ®­îc 1 LÔ Bao VLTK do giµnh chiÕn th¾ng vµ tham gia chiÕn tr­êng trªn 30 phót")
							end
							
							AddRepute(20)
							Msg2Player("Tèng kim ®¹i chiÕn kÕt thóc, b¹n nhËn ®­îc 1000 tİch luü vµ 20 danh väng")
					else -- HOA
							SetTask(15,GetTask(15) + 750)
							phanthuongthem()
							
							AddRepute(15)
							Msg2Player("Tèng kim ®¹i chiÕn kÕt thóc, b¹n nhËn ®­îc 750 tİch luü vµ 15 danh väng")

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
							Msg2Player("Tèng kim ®¹i chiÕn kÕt thóc, b¹n nhËn ®­îc 500 tİch luü vµ 10 danh väng")
						elseif GetGlbMissionV(81) > GetGlbMissionV(82) then -- THANG
							SetTask(15,GetTask(15) + 1000)
							phanthuongthem()
							if GetTask(118) >= 30*60 then
							AddOwnExp(4000000)
							Msg2Player("B¹n nhËn ®­îc <color=green>"..exp.."<color=red> ®iÓm kinh nghiÖm giµnh th¾ng lîi trong Tèng Kim!")	
							--AddEventItem(150)	
							--Msg2Player("B¹n nhËn ®­îc 1 LÔ Bao VLTK do giµnh chiÕn th¾ng vµ tham gia chiÕn tr­êng trªn 30 phót")
							end
							
							AddRepute(20)
							Msg2Player("Tèng kim ®¹i chiÕn kÕt thóc, b¹n nhËn ®­îc 1000 tİch luü vµ 20 danh väng")
						else -- HOA
							SetTask(15,GetTask(15) + 750)
							phanthuongthem()
							
							AddRepute(15)
							Msg2Player("Tèng kim ®¹i chiÕn kÕt thóc, b¹n nhËn ®­îc 750 tİch luü vµ 15 danh väng")
						end
					elseif GetGlbMissionV(87) == 2 and GetGlbMissionV(88) == 1 then -- THANG
							SetTask(15,GetTask(15) + 1000)
							phanthuongthem()
							if GetTask(13) >= 30*60 then
							AddOwnExp(4000000)
							Msg2Player("B¹n nhËn ®­îc <color=green>"..exp.."<color=red> ®iÓm kinh nghiÖm giµnh th¾ng lîi trong Tèng Kim!")	
							--AddEventItem(150)	
							--Msg2Player("B¹n nhËn ®­îc 1 LÔ Bao VLTK do giµnh chiÕn th¾ng vµ tham gia chiÕn tr­êng trªn 30 phót")
							end
							
							AddRepute(20)
							Msg2Player("Tèng kim ®¹i chiÕn kÕt thóc, b¹n nhËn ®­îc 1000 tİch luü vµ 20 danh väng")
					elseif GetGlbMissionV(87) == 1 and GetGlbMissionV(88) == 2 then
							SetTask(15,GetTask(15) + 500)
							phanthuongthem()
							
							AddRepute(10)
							Msg2Player("Tèng kim ®¹i chiÕn kÕt thóc, b¹n nhËn ®­îc 500 tİch luü vµ 10 danh väng")
					end
				elseif GetTask(12) == 2 then
					SetTempRevPos(60,50432,98816)
					NewWorld(60,1576,3088)
					if (GetGlbMissionV(87) == 2 and GetGlbMissionV(88) == 2) or (GetGlbMissionV(87) == 1 and GetGlbMissionV(88) == 1) then
						if GetGlbMissionV(81) > GetGlbMissionV(82) then -- THUA
							phanthuongthem()
							SetTask(15,GetTask(15) + 500)
							AddRepute(10)
							Msg2Player("Tèng kim ®¹i chiÕn kÕt thóc, b¹n nhËn ®­îc 500 tİch luü vµ 10 danh väng")
						elseif GetGlbMissionV(81) < GetGlbMissionV(82) then -- THANG
							SetTask(15,GetTask(15) + 1000)
							if GetTask(13) >= 20*50 then
								exp = 5000000
								AddOwnExp(exp)
								Msg2Player("B¹n nhËn ®­îc <color=green>"..exp.."<color=red> ®iÓm kinh nghiÖm do ë bªn th¾ng vµ ®¹t ®iÓm tİch lòy trªn 1000 !")	
							--AddEventItem(150)	
							--Msg2Player("B¹n nhËn ®­îc 1 LÔ Bao VLTK do giµnh chiÕn th¾ng vµ tham gia chiÕn tr­êng trªn 30 phót")
							end
							phanthuongthem()
							
							AddRepute(20)
							Msg2Player("Tèng kim ®¹i chiÕn kÕt thóc, b¹n nhËn ®­îc 1000 tİch luü vµ 20 danh väng")
						else -- HOA
							phanthuongthem()
							SetTask(15,GetTask(15) + 750)
							
							AddRepute(15)
							Msg2Player("Tèng kim ®¹i chiÕn kÕt thóc, b¹n nhËn ®­îc 750 tİch luü vµ 15 danh väng")
	
						end
					elseif GetGlbMissionV(87) == 2 and GetGlbMissionV(88) == 1 then -- THANG
							phanthuongthem()
							SetTask(15,GetTask(15) + 1000)
							if GetTask(13) >= 20*50 then
								exp = 5000000
								AddOwnExp(exp)
								Msg2Player("B¹n nhËn ®­îc <color=green>"..exp.."<color=red> ®iÓm kinh nghiÖm do ë bªn th¾ng vµ ®¹t ®iÓm tİch lòy trªn 1000 !")	
							--AddEventItem(150)	
							--Msg2Player("B¹n nhËn ®­îc 1 LÔ Bao VLTK do giµnh chiÕn th¾ng vµ tham gia chiÕn tr­êng trªn 30 phót")
							end

							AddRepute(20)
							Msg2Player("Tèng kim ®¹i chiÕn kÕt thóc, b¹n nhËn ®­îc 1000 tİch luü vµ 20 danh väng")
					elseif GetGlbMissionV(87) == 1 and GetGlbMissionV(88) == 2 then
							phanthuongthem()
							SetTask(15,GetTask(15) + 500)
							
							AddRepute(10)
							Msg2Player("Tèng kim ®¹i chiÕn kÕt thóc, b¹n nhËn ®­îc 500 tİch luü vµ 10 danh väng")
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
chiphi=2
if h== 13 or h==19 then
chiphi = 1
end

if GetTask(118) >= 10*60 and GetTask(118) < 20*60 then
	exp = 4000000/chiphi
	AddOwnExp(exp)
	Msg2Player("B¹n nhËn ®­îc <color=green>"..exp.."<color=red> ®iÓm kinh nghiÖm do ®¹t ®­îc trªn 10 phót tham gia thi ®Êu !")	
elseif GetTask(118) >= 20*60 and GetTask(118) < 30*60 then
	exp = 8000000/chiphi
	AddOwnExp(exp)
	Msg2Player("B¹n nhËn ®­îc <color=green>"..exp.."<color=red> ®iÓm kinh nghiÖm do ®¹t ®­îc trªn 20 phót tham gia thi ®Êu !")		
elseif GetTask(118) >= 30*60 and GetTask(118) < 40*60 then	
	exp = 12000000/chiphi
	AddOwnExp(exp)
	Msg2Player("B¹n nhËn ®­îc <color=green>"..exp.."<color=red> ®iÓm kinh nghiÖm do ®¹t ®­îc trªn 30 phót tham gia thi ®Êu !")		
elseif GetTask(118) >= 40*60 then

	exp = 20000000/chiphi
	AddOwnExp(exp)
	Msg2Player("B¹n nhËn ®­îc <color=green>"..exp.."<color=red> ®iÓm kinh nghiÖm do ®¹t ®­îc trªn 40 phót tham gia thi ®Êu !")
		sx2 = random(1,7)
		sx3 = random(1,30)
		if sx2 == 2 then
			AddEventItem(random(113,114))
			Msg2Player("B¹n nhËn ®­îc 1 vËt phÈm quı ")
		elseif sx2 == 3 then
			AddEventItem(random(75,102))
			Msg2Player("B¹n nhËn ®­îc 1 viªn Thñy tinh")
		elseif sx2 == 4 then 
		AddEventItem(random(28,31))
		end	
		if sx3 == 5 then 
			AddEventItem(255)
			Msg2SubWorld("§¹i hiÖp "..GetName().." Võa nhËn ®­îc 1 M·nh Vò Khİ Hoµng Kim")
			elseif sx3 > 1 and sx3 < 5 then
			AddEventItem(254)
			Msg2SubWorld("§¹i hiÖp "..GetName().." Võa nhËn ®­îc 1 M·nh Trang BŞ Hoµng Kim")
			else 
		end
else
	Msg2Player("B¹n kh«ng nhËn ®­îc phËn th­ëng kinh nghiÖm do kh«ng tham gia chiÕn tr­êng ®ñ 10 phót !")
end
end

function phanthuongthem1()
 
if GetTask(13) >= 20*50 then
	exp = 5000000
	AddOwnExp(exp)
	Msg2Player("B¹n nhËn ®­îc <color=green>"..exp.."<color=red> ®iÓm kinh nghiÖm do ë bªn th¾ng vµ ®¹t ®iÓm tİch lòy trªn 1000 !")	
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
