

function main()
b = HaveMagic(328)
	a = b + 1
if (a < 16) then
c = a + 4
else
c = 20
end

	if HaveMagic(328) < 20 and GetMagicPoint() >= 1 then
	if HaveMagic(mangten[1][4]) >= c then
		if HaveMagic(mangten[1][6]) >= c then
			if HaveMagic(mangten[1][8]) >= c then
				if HaveMagic(mangten[1][10]) >= c then
					if HaveMagic(mangten[1][12]) >= c then
						AddMagicPoint(-1)
						AddMagic(328,a)
						Talk(1,"","Kü n¨ng "..mangten[1][3].." LÜnh ngé ®­îc <color=red>"..HaveMagic(328).."<color> Diem")	
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
	Talk(1,"","Kü n¨ng ®· ®¹t møc tèi ®a hoÆc kh«ng ®ñ 1 ®iÓm d­ ")
	end
end


mangten = {
{3,328,"NhiÕp Hån Lo¹n T©m",136,"Háa Liªn PhÇn Hoa",137,"¶o ¶nh Phi Hæ ",140,"Phi Hång V« TÝch",364,"BÝ T« Thanh Phong",143,"LÞch Ma §o¹t Hån"},
}