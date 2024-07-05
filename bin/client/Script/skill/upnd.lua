

function main()
b = HaveMagic(327)
	a = b + 1
if (a < 16) then
c = a + 4
else
c = 20
end

	if HaveMagic(327) < 20 and GetMagicPoint() >= 1 then
	if HaveMagic(mangten[1][4]) >= c then
		if HaveMagic(mangten[1][6]) >= c then
			if HaveMagic(mangten[1][8]) >= c then
				if HaveMagic(mangten[1][10]) >= c then
					if HaveMagic(mangten[1][12]) >= c then
						AddMagicPoint(-1)
						AddMagic(327,a)
						Talk(1,"","Kü n¨ng "..mangten[1][3].." Linh Ngo Duoc <color=red>"..HaveMagic(327).."<color> Diem")	
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
	Talk(1,"","Kü n¨ng ®· ®¹t ®Õn møc tèi ®a hoÆc hÕt 1 ®iÓm d­")
	end
end


mangten = {
{1,327,"§o¹n C©n Hñ Cèt",72,"Xuyªn T©m §éc ThÝch",336,"Xuyªn Y Ph¸ Gi¸p",73,"V¹n §éc Thùc T©m",64,"B¨ng Lam HuyÒn Tinh",67,"Cöu Thiªn Cuång L«i"},
}