Include("\\script\\global\\sourcejx49.lua")
NOW_END_SAY = "KÕt thóc ®èi tho¹i./no";
ADMIN_SUPPORT_TEXT = "Chøc n¨ng hç trî qu¶n trŞ viªn";

function hotro()
Say(ADMIN_SUPPORT_TEXT,12,
	"T¨ng kinh nghiÖm (cÊp 160)/kn1",
	"TiÒn xu/tienxu",
	"TiÒn v¹n/tienvan",
	"§iÓm tèng kim/pointtongkim",
	"§iÓm danh väng/danhvong",
	"§iÓm phóc duyªn/phucduyen",
	-- "§iÓm l·nh ®¹o/lanhdao",
	"§iÓm kü n¨ng/pointkynang",
	"§iÓm tiÒm n¨ng/pointtiemnang",
	"§iÓm liªn ®Êu/pointch",
	-- "§iÓm trïng sinh/trungsinh",	
	"LÖnh bµi V­ît ¶i/lenhbai",
	"LÖnh bµi PLD/lenhbaiPLD",
	NOW_END_SAY)
end

function pointtongkim()
	SetTask(15,GetTask(15)+3000)
	Msg2Player("B¹n nhËn ®­îc 3000 ®iÓm tèng kim."); 
end

function pointch()
	SetTask(124,GetTask(124)+1000)
	Msg2Player("B¹n nhËn ®­îc 1000 ®iÓm liªn ®Êu."); 
end

function pointkynang()
	AddMagicPoint(1000)
	Msg2Player("B¹n nhËn ®­îc 1000 ®iÓm kü n¨ng ")
end;

function pointtiemnang()
	AddProp(500)
	Msg2Player("B¹n nhËn ®­îc 50 ®iÓm tiÒm n¨ng "); 
end
	
-- function lanhdao()
	-- for i=1,20 do
	-- AddLeadExp(100000000)
	-- end
-- end

function kn1()
	if GetLevel() < 90 then
		while GetLevel() < 90 do
		AddOwnExp(9E9)
		end
	else
		while GetLevel() < 150 do
		AddOwnExp(9E9)
		end
	end
end

function tienvan()
	Earn(1000000000)
end

function tienxu()
a = 1000
	SetTask(99,a)
	SetTask(101,a)
end

function danhvong()
	n=random(100,300)
	AddRepute(n)
end

function phucduyen()
a = 1000
	SetTask(162,a)
end
function lenhbai()
AddEventItem(156)
end
function lenhbaiPLD()
AddEventItem(135)
end
-- function trungsinh()
	-- AddReBorn(5)
-- end

-- function pk()
	-- SetPK(GetPK() + 1)
-- end

-- function setlevel()
	-- SetLevel(10)
-- end