

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
						Talk(1,"","K� n�ng "..mangten[1][3].." Linh Ngo Duoc <color=red>"..HaveMagic(327).."<color> Diem")	
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
	Talk(1,"","K� n�ng �� ��t ��n m�c t�i �a ho�c h�t 1 �i�m d�")
	end
end


mangten = {
{1,327,"�o�n C�n H� C�t",72,"Xuy�n T�m ��c Th�ch",336,"Xuy�n Y Ph� Gi�p",70,"X�ch Di�m Th�c Thi�n",64,"B�ng Lam Huy�n Tinh",67,"C�u Thi�n Cu�ng L�i"},
}