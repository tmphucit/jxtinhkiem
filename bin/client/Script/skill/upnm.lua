

function main()
b = HaveMagic(291)
	a = b + 1
if (a < 16) then
c = a + 4
else
c = 20
end

	if HaveMagic(291) < 20 and GetMagicPoint() >= 1 then
	if HaveMagic(mangten[1][4]) >= c then
		if HaveMagic(mangten[1][6]) >= c then
			if HaveMagic(mangten[1][8]) >= c then
				if HaveMagic(mangten[1][10]) >= c then
					if HaveMagic(mangten[1][12]) >= c then
						AddMagicPoint(-1)
						AddMagic(291,a)
						Talk(1,"","Kü n¨ng "..mangten[1][3].." lÜnh ngéi ®­îc <color=red>"..HaveMagic(291).."<color> ®iÓm")	
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
	Talk(1,"","Kü n¨ng Dat Muc Toi Da Hoac Het 1 Diem Kü n¨ng Du")
	end
end


mangten = {
{2,291,"Phæ §é Chóng Sinh",93,"Tõ Hµng Phæ §é ",89,"Méng §iÖp",86,"L­u Thñy",92,"PhËt T©m Tõ H÷u",282,"Thanh ¢m Ph¹n X­íng"},
}