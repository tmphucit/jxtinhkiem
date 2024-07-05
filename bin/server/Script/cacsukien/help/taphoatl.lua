--Author: thaihoa91

function main()
if GetTask(103) == 5 then
Say("<color=green>Chñ tiÖm T¹p ho¸ <color>: Ta chuyÒn vÒ ¨n mÆc, b¸n c¸c thø linh tinh nh­ng rÊt cÇn thiÕt",3,
"Giao dŞch/giaodich",
"Giao tİn th­ ch­ëng m«n/giaotinthu",
"KÕt thóc ®èi tho¹i/kocan")
else
Say("<color=green>Chñ tiÖm T¹p ho¸ <color>: Ta chuyÒn vÒ ¨n mÆc, b¸n c¸c thø linh tinh nh­ng rÊt cÇn thiÕt",2,
"Giao dŞch/giaodich",
"KÕt thóc ®èi tho¹i/kocan")
end
end;

function giaotinthu()
	if GetTask(103) == 5 then
		SetTask(103,6)
		Talk(1,"","<color=green>Chñ TiÖm T¹p Hãa <color>: Ta ®· nhËn ®­îc tİn th­, h·y nãi víi Ch­ëng M«n ng­¬i lµ ta sÏ cè g¾ng hÕt søc ®Ó gióp ®Ö tö cña ng­êi !")
	end
end

function muatkchieuthu()
a = GetCash()
if GetCash() >= 5000 then
Pay(5000)
if GetCash() == (a-5000) then
AddEventItem(24)
Msg2Player("B¹n nhËn ®­îc 1 Tèng Kim Chiªu Th­")
Talk(0,"")
end
else
Talk(1,"","<color=green>Chñ TiÖm T¹p Hãa <color>: B¹n kh«ng ®ñ <color=red>5000<color> l­îng")
end
end

function sudothiep()
a = GetCash()
if GetCash() >= 5000 then
Pay(5000)
if GetCash() == (a-5000) then
AddEventItem(15)
Msg2Player("B¹n nhËn ®­îc 1 s­ ®å thiÕp")
Talk(0,"")
end
else
Talk(1,"","<color=green>Chñ TiÖm T¹p Hãa <color>: B¹n kh«ng ®ñ <color=red>5000<color> l­îng")
end
end
function giaodich()
w,x,y = GetWorldPos()
if w == 17 then
Sale(3)
elseif w == 15 then
Sale(4)
elseif w == 18 then
Sale(5)
elseif w == 16 then
Sale(6)
elseif w == 4 then
Sale(random(2,6))

else
Sale(2)
end
end;


function shop(nsel)
i = nsel+2
Sale(i)
end

function kocan()
end;
