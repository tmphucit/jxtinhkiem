

function main()
b = HaveMagic(329)
	a = b + 1
if (a < 16) then
c = a + 4
else
c = 20
end

	if HaveMagic(329) < 20 and GetMagicPoint() >= 1 then
	if HaveMagic(mangten[1][4]) >= c then
		if HaveMagic(mangten[1][6]) >= c then
			if HaveMagic(mangten[1][8]) >= c then
				if HaveMagic(mangten[1][10]) >= c then
					if HaveMagic(mangten[1][12]) >= c then
						AddMagicPoint(-1)
						AddMagic(329,a)
						Talk(1,"","Kü n¨ng "..mangten[1][3].." lÜnh ngé ®­îc <color=red>"..HaveMagic(329).."<color> ®iÓm")	
	else
	Talk(1,"","Kü n¨ng <color=red>"..mangten[1][13].."<color> ch­a n©ng ®Õn cÊp <color=blue>"..c.."")
	end
	else
	Talk(1,"","Kü n¨ng <color=red>"..mangten[1][11].."<color> ch­a n©ng ®Õn cÊp <color=blue>"..c.."")
	end
	else
	Talk(1,"","Kü n¨ng <color=red>"..mangten[1][9].."<color> ch­a n©ng ®Õn cÊp <color=blue>"..c.."")
	end
	else
	Talk(1,"","Kü n¨ng <color=red>"..mangten[1][7].."<color> ch­a n©ng ®Õn cÊp <color=blue>"..c.."")
	end
	else
	Talk(1,"","Kü n¨ng <color=red>"..mangten[1][5].."<color> ch­a n©ng ®Õn cÊp <color=blue>"..c.."")
	end
	else
	Talk(1,"","Kü n¨ng ®¹t møc tèi ®a hoÆc hÕt 1 ®iÓm kü n¨ng d­")
	end
end


mangten = {
{4,329,"Tóy Tiªn T¸ Cèt",338,"Thóc Ph­îc Chó ",175,"Khİ Hµn Ng¹o TuyÕt",174,"Kİ B¸n Phï ",339,"B¾c Minh §¶o H¶i",90,"Mª Tung ¶o ¶nh"}
}