

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
						Talk(1,"","K� n�ng "..mangten[1][3].." l�nh ng� ���c <color=red>"..HaveMagic(329).."<color> �i�m")	
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
	Talk(1,"","K� n�ng ��t m�c t�i �a ho�c h�t 1 �i�m k� n�ng d�")
	end
end


mangten = {
{4,329,"T�y Ti�n T� C�t",338,"Th�c Ph��c Ch� ",175,"Kh� H�n Ng�o Tuy�t",174,"K� B�n Ph� ",339,"B�c Minh ��o H�i",90,"M� Tung �o �nh"}
}