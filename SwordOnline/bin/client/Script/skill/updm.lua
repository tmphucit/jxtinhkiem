

function main()
b = HaveMagic(399)
	a = b + 1
if (a < 16) then
c = a + 4
else
c = 20
end

	if HaveMagic(399) < 20 and GetMagicPoint() >= 1 then
	if HaveMagic(mangten[1][4]) >= c then
		if HaveMagic(mangten[1][6]) >= c then
			if HaveMagic(mangten[1][8]) >= c then
				if HaveMagic(mangten[1][10]) >= c then
					if HaveMagic(mangten[1][12]) >= c then
						AddMagicPoint(-1)
						AddMagic(399,a)
						Talk(1,"","Kü n¨ng "..mangten[1][3].." lÜnh ngé ®­îc <color=red>"..HaveMagic(399).."<color> ®iÓm")	
	else
	Talk(1,"","Kü n¨ng <color=red>"..mangten[1][13].."<color> ch­a n¨ng ®Õn cÊp <color=blue>"..c.."")
	end
	else
	Talk(1,"","Kü n¨ng <color=red>"..mangten[1][11].."<color> ch­a n¨ng ®Õn cÊp <color=blue>"..c.."")
	end
	else
	Talk(1,"","Kü n¨ng <color=red>"..mangten[1][9].."<color> ch­a n¨ng ®Õn cÊp <color=blue>"..c.."")
	end
	else
	Talk(1,"","Kü n¨ng <color=red>"..mangten[1][7].."<color> ch­a n¨ng ®Õn cÊp <color=blue>"..c.."")
	end
	else
	Talk(1,"","Kü n¨ng <color=red>"..mangten[1][5].."<color> ch­a n¨ng ®Õn cÊp <color=blue>"..c.."")
	end
	else
	Talk(1,"","Kü n¨ng ®· ®¹t ®Õn møc tèi ®a hoÆc hÕt 1 ®iÓm d­ ")
	end
end


mangten = {
{4,399,"Lo¹n Hoµn Kİch",462,"§Şa DiÖm Háa",464,"§éc Thñ Cèt",436,"Xuyªn T©m Thİch",434,"Hµn B¨ng Thİch",439,"L«i Kİch ThuËt"}
}