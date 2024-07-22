Include("\\script\\admin\\monphai.lua")

iddaithanh = 177

function main(iddaithanh)
dofile("script\\item\\questkey\\177.lua")
local hephai =timmonphai()
	if hephai==0 then
	Talk(1,"","Ng­¬i ch­a gia nhËp m«n ph¸i ch­a thÓ nhËn")
	return 
	end
	if GetLevel()< 80 then
	Talk(1,"","CÊp 90 råi h½ng t×m ta nhÐ")
	return 
	end
	if(GetFightState() == 1) then
	-- Talk(1,"","TÝnh n¨ng t¹m khãa ®îi cËp nhËt tÝnh n¨ng míi thay thÕ !")
		Talk(1,"","ChØ cã thÓ sö dông khi ®ang ë c¸c thµnh thÞ or th«n.")
	return 
	end
	if hephai==1 then
		SayNew("<color=green>Hç Trî 1 Skill 9X <color>: Chµo §¹i hiÖp <color=red>"..GetName().."<color>. B¹n chän lo¹i nµo ?",3,
		"§¹t Ma §é Giang/thieulam",
		"V« T­íng Tr¶m/thieulam",
		"Hoµnh T¶o Thiªn Qu©n/thieulam",
		"Tho¸t./no")
		end
	if hephai==2 then
		SayNew("<color=green>Hç Trî 1 Skill 9X <color>: Chµo §¹i hiÖp <color=red>"..GetName().."<color>. B¹n chän lo¹i nµo ?",3,
		"Truy Tinh Tróc NguyÖt/thienvuong",
		"Truy Phong QuyÕt/thienvuong",
		"Ph¸ Thiªn Tr¶m/thienvuong",
		"Tho¸t./no")
		end
	if hephai==3 then
		SayNew("<color=green>Hç Trî 1 Skill 9X <color>: Chµo §¹i hiÖp <color=red>"..GetName().."<color>. B¹n chän lo¹i nµo ?",3,
		"B¶o Vò Lª Hoa/duongmon",
		"NhiÕp Hån NguyÖt ¶nh/duongmon",
		"Cöu Cung Phi Tinh/duongmon",
		-- "Lo¹n Hoµn KÝch/duongmon",
		"Tho¸t./no")
		end
		if hephai==4 then
		SayNew("<color=green>Hç Trî 1 Skill 9X <color>: Chµo §¹i hiÖp <color=red>"..GetName().."<color>. B¹n chän lo¹i nµo ?",2,
		"¢m Phong Thùc Cèt/ngudoc",
		"HuyÒn ¢m Tr¶m/ngudoc",
		-- "§o¹n C©n Hñ Cèt/ngudoc",
		"Tho¸t./no")
		end

	if hephai==5 then
		SayNew("<color=green>Hç Trî 1 Skill 9X <color>: Chµo §¹i hiÖp <color=red>"..GetName().."<color>. B¹n chän lo¹i nµo ?",2,
		"Phong S­¬ng To¸I ¶nh/ngami",
		"Tam Nga Tª TuyÕt/ngami",
		-- "Phæ §é Chóng Sinh/ngami",
		"Tho¸t./no")
		end
	if hephai==6 then
		SayNew("<color=green>Hç Trî 1 Skill 9X <color>: Chµo §¹i hiÖp <color=red>"..GetName().."<color>. B¹n chän lo¹i nµo ?",2,
		"B¨ng Tung V« ¶nh/thuyyen",
		"B¨ng T©m Tiªn Tö/thuyyen",
		"Tho¸t./no")
		end
			if hephai==7 then
		SayNew("<color=green>Hç Trî 1 Skill 9X <color>: Chµo §¹i hiÖp <color=red>"..GetName().."<color>. B¹n chän lo¹i nµo ?",3,
		"Phi Long T¹i Thiªn/caibang",
		"Thiªn H¹ V« Cèu/caibang",
		"Tho¸t./no")
		end
			if hephai==8 then
		SayNew("<color=green>Hç Trî 1 Skill 9X <color>: Chµo §¹i hiÖp <color=red>"..GetName().."<color>. B¹n chän lo¹i nµo ?",2,
		"Thiªn Ngo¹i L­u Tinh/thiennhan",
		"V©n Long KÝch/nhan9xhotro",
	--	"NhiÕp Hån Lo¹n T©m/nhan9xhotro",
		"Tho¸t./no")
		end
			if hephai==9 then
		SayNew("<color=green>Hç Trî 1 Skill 9X <color>: Chµo §¹i hiÖp <color=red>"..GetName().."<color>. B¹n chän lo¹i nµo ?",3,
		"Thiªn §Þa V« Cùc/vodang",
		"Nh©n KiÕm Hîp NhÊt/vodang",
		"Tho¸t./no")
		end
		if hephai==10 then
		SayNew("<color=green>Hç Trî 1 Skill 9X <color>: Chµo §¹i hiÖp <color=red>"..GetName().."<color>. B¹n chän lo¹i nµo ?",2,
		"L«i §éng Cöu Thiªn/conlon",
		"Ng¹o TuyÕt Tiªu Phong/conlon",
		-- "Tuý Tiªn T¸ Cèt/nhan9xhotro",
		"Tho¸t./no")
		end
		DelItemIdx(iddaithanh);
end
function timmonphai()
	if GetFaction() == "Thieu Lam Phai" then
	return 1
	elseif GetFaction() == "Thien Vuong Bang" then
	return 2
	elseif GetFaction() == "Duong Mon" then
	return 3
	elseif GetFaction() == "Ngu Doc Giao" then
	return 4
	elseif GetFaction() == "Nga My Phai" then
	return 5
	elseif GetFaction() == "Thuy Yen Mon" then
	return 6
	elseif GetFaction() == "Cai Bang" then
	return 7
	elseif GetFaction() == "Thien Nhan Giao" then
	return 8
	elseif GetFaction() == "Vo Dang Phai" then
	return 9
	elseif GetFaction() == "Con Lon Phai" then
	return 10
	else
	return 0
	end
end;

function thieulam(nsel)
i = nsel + 1


	if i == 1 then
		idskil = 350
		
	elseif i == 2 then
		idskil = 353
		
	elseif i == 3 then
		idskil = 351
	end
	AddMagic(idskil,20)  -- dat ma
	AddMagic(350,1)
	AddMagic(351,1)
	AddMagic(353,1)
	
	-- Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
		
	
end
function thienvuong(nsel)
i = nsel + 1

tieuhao = 0
iditem = 0
if i == 1 then
	idskil = 347
	
elseif i == 2 then
	idskil = 345
	
elseif i == 3 then
	idskil = 342
end
AddMagic(idskil,20)  -- dat ma
AddMagic(342,1)
AddMagic(347,1)
AddMagic(345,1)
-- Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
end				
function duongmon(nsel)
i = nsel + 1

tieuhao = 0
iditem = 0
if i == 1 then
	idskil = 302
	
elseif i == 2 then
	idskil = 355
	
elseif i == 3 then
	idskil = 358
end
AddMagic(idskil,20)  -- dat ma
AddMagic(399)
AddMagic(355,1)
AddMagic(358,1)
AddMagic(302,1)

-- Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
end
function ngudoc(nsel)
i = nsel + 1

tieuhao = 0
iditem = 0
if i == 1 then
	idskil = 359
elseif i == 2 then
	idskil = 361
end
AddMagic(idskil,20)  -- dat ma
AddMagic(327)
AddMagic(359,1)
AddMagic(361,1)
-- Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
end
function ngami(nsel)
i = nsel + 1

tieuhao = 0
iditem = 0
if i == 1 then
	idskil = 370
elseif i == 2 then
	idskil = 374
end
AddMagic(idskil,20)  -- dat ma
AddMagic(291)
AddMagic(374,1)
AddMagic(370,1)
-- Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
end
function thuyyen(nsel)
i = nsel + 1

tieuhao = 0
iditem = 0
if i == 1 then
	idskil = 377
elseif i == 2 then
	idskil = 378
end
AddMagic(idskil,20)  -- dat ma
AddMagic(377,1)
AddMagic(378,1)
-- AddMagic(291)
-- Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
end
function caibang(nsel)
i = nsel + 1

tieuhao = 0
iditem = 0
if i == 1 then
	idskil = 362
elseif i == 2 then
	idskil = 389
end
AddMagic(idskil,20)  -- dat ma
AddMagic(362,1)
AddMagic(389,1)
-- AddMagic(291)
-- Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
end

function thiennhan(nsel)
i = nsel + 1

tieuhao = 0
iditem = 0
if i == 1 then
	idskil = 367
elseif i == 2 then
	idskil = 365
end
AddMagic(idskil,20)  -- dat ma
AddMagic(328)
AddMagic(365,1)
AddMagic(367,1)
-- AddMagic(291)
-- Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
end
function vodang(nsel)
i = nsel + 1

tieuhao = 0
iditem = 0
if i == 1 then
	idskil = 382
elseif i == 2 then
	idskil = 380
end
AddMagic(idskil,20)  -- dat ma
AddMagic(380,1)
AddMagic(382,1)
-- Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
end
function conlon(nsel)
i = nsel + 1

tieuhao = 0
iditem = 0
if i == 1 then
	idskil = 384
elseif i == 2 then
	idskil = 385
end
AddMagic(idskil,20)  -- dat ma
AddMagic(329)
AddMagic(385,1)
AddMagic(384,1)
-- Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
end

