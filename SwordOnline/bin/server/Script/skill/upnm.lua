

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
						Talk(1,"","K� n�ng "..mangten[1][3].." l�nh ng�i ���c <color=red>"..HaveMagic(291).."<color> �i�m")	
	else
	Talk(1,"","K� n�ng <color=red>"..mangten[1][13].."<color> ch�a n�ng ��n c�p <color=blue>"..c.."")
	end
	else
	Talk(1,"","K� n�ng <color=red>"..mangten[1][11].."<color> ch�a n�ng ��n c�p <color=blue>"..c.."")
	end
	else
	Talk(1,"","K� n�ng <color=red>"..mangten[1][9].."<color> ch�a n�ng ��n c�p <color=blue>"..c.."")
	end
	else
	Talk(1,"","K� n�ng <color=red>"..mangten[1][7].."<color> ch�a n�ng ��n c�p <color=blue>"..c.."")
	end
	else
	Talk(1,"","K� n�ng <color=red>"..mangten[1][5].."<color> ch�a n�ng ��n c�p <color=blue>"..c.."")
	end
	else
	Talk(1,"","K� n�ng Dat Muc Toi Da Hoac Het 1 Diem K� n�ng Du")
	end
end


mangten = {
{2,291,"Ph� �� Ch�ng Sinh",93,"T� H�ng Ph� �� ",89,"M�ng �i�p",86,"L�u Th�y",92,"Ph�t T�m T� H�u",282,"Thanh �m Ph�n X��ng"},
}