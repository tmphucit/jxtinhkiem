--Author: thaihoa91
Include("\\script\\Global\\passwords.lua");
Include("\\script\\ket_hon\\nguyet_lao.lua");
function main()
SetFightState(0)
w,X,Y = GetWorldPos()
if GetTask(157) == 2 then

	if w == 18 then
		Say("<color=green>D­îc §iÕm<color>: Ta chØ biÕt chöa bÖnh vµ cøu gióp ng­êi v« téi.",3,
		"Mua ngò hoa t¸n /muanguhoa",
		"Giao dÞch/giaodich",
		"KÕt thóc ®èi tho¹i/kogiaodich")	
	else
	Talk(1,"","<color=green>D­îc §iÕm <color>: B¹n ®ang lµm nhiÖm vô Hoµng Kim. H·y ®Õn Thµnh §« ®i !!!")
	end
elseif GetTask(103) == 4 then
	Say("<color=green>D­îc §iÕm<color>: Ta chØ biÕt chöa bÖnh vµ cøu gióp ng­êi v« téi.",3,
	"Giao dÞch/giaodich",
	"Giao tÝn th­ ch­ëng m«n/giaotinthu",
	"KÕt thóc ®èi tho¹i/kogiaodich")
else
	if w == 20 then
	Say("<color=green>D­îc §iÕm<color>: Ta chØ biÕt chöa bÖnh vµ cøu gióp ng­êi v« téi.",5,
	"Giao dÞch/giaodich",
	"Mua Ng­ng ThÇn §an LÔ Bao/lagmau",
	"Mua Thñ ¤ Hoµn ThÇn LÔ Bao/lagmau2",
	"Mua N÷ Nhi Hång /muannh",
	"KÕt thóc ®èi tho¹i/kogiaodich")
	else
	Say("<color=green>D­îc §iÕm<color>: Ta chØ biÕt chöa bÖnh vµ cøu gióp ng­êi v« téi.",3,
	"Giao dÞch/giaodich",
	"Mua LÔ Bao nhanh/muanhanh",
	--"NhËn Tói Thuèc MiÔn PhÝ /nhanmaumienphi",
	"KÕt thóc ®èi tho¹i/kogiaodich")
	end
end
end;

function nhanmaumienphi()
if GetLevel() < 130 then
for i=1,10 do AddEventItem(109) end
Msg2Player("B¹n nhËn ®­îc 10 Tói Thuèc MiÔn PhÝ !")
else
Talk(1,"","Tói Thuèc chØ hç trî cho t©n thñ ®¼ng cÊp d­íi 130 !")
end
end

function muanhanh()
Say("B¹n muèn mua thuèc nµo: ?",4,
"Kim S¸ng D­îc LÔ Bao/kimsang",
"Ng­ng ThÇn §an LÔ Bao/lagmau",
"Thõa Tiªn MËt LÔ Bao/thuatien",
"Tho¸t./no")
end

function muannh()
if CheckFreeBoxItem(4,114,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng !")
return
end


sl = GetItemCount(114) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 1 and GetTask(101) >= 1 then
	SetTask(99,GetTask(99) - 1)
	SetTask(101,GetTask(101) - 1)
	if GetTask(99) == vang-1 and GetTask(101) == vang2 - 1 and GetTask(99) == GetTask(101) then
		AddEventItem(118)
		Msg2Player("B¹n ®· mua 1 b×nh N÷ Nhi Hång gi¸ 1 vµng ")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ <color=yellow>1<color> vµng !")
end
end

function lagmau()
sl = GetCash()
if GetCash() >= 5000 then
Pay(5000)
if GetCash() == sl - 5000 then
AddEventItem(111)
Talk(0,"")
else
Talk(1,"","hack ha em")

end
else
Talk(1,"","B¹n kh«ng ®ñ 5000 l­îng !")
end
end


function lagmau2()
sl = GetCash()
if GetCash() >= 40000 then
Pay(40000)
if GetCash() == sl - 40000 then
AddEventItem(105)
Talk(0,"")
else
Talk(1,"","hack ha em")

end
else
Talk(1,"","B¹n kh«ng ®ñ 40000 l­îng !")
end
end
function thuatien()
sl = GetCash()
if GetCash() >= 7500 then
Pay(7500)
if GetCash() == sl - 7500 then
AddEventItem(109)
Talk(0,"")
else
Talk(1,"","hack ha em")

end
else
Talk(1,"","B¹n kh«ng ®ñ 5000 l­îng !")
end
end

function kimsang()
sl = GetCash()
if GetCash() >= 5000 then
Pay(5000)
if GetCash() == sl - 5000 then
AddEventItem(110)
Talk(0,"")
else
Talk(1,"","hack ha em")

end
else
Talk(1,"","B¹n kh«ng ®ñ 5000 l­îng !")
end
end

function giaotinthu()
	if GetTask(103) == 4 then
		SetTask(103,5)
		Talk(1,"","<color=green>D­îc §iÕm <color>: Ta ®· nhËn ®­îc tÝn th­, h·y nãi víi Ch­ëng M«n ng­¬i lµ ta sÏ cè g¾ng hÕt søc ®Ó gióp ®Ö tö cña ng­êi !")
	end
end

function muanguhoa()
tv = GetCash()
		if GetCash() >= 5000 then
		Pay(5000)
			if GetCash() == (tv-5000) then
			AddEventItem(18)
			Msg2Player("B¹n nhËn ®­îc 1 Ngò Hoa T¸n.")
			Talk(0,"")
			else
			Talk(1,"","Hack ha em")
			end
		else
		Talk(1,"","<color=green>D­îc §iÕm <color>: B¹n kh«ng ®ñ 5000 l­îng kh«n thÓ mua Ngò Hoa T¸n")
		end
end

function giaodich()
w,X,Y = GetWorldPos()
if w == 53 or w == 3 then
Sale(22);
else
	Sale(7);
end
end;

function kogiaodich()
end;





