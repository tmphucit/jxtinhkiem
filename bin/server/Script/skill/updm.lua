

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
						Talk(1,"","K� n�ng "..mangten[1][3].." l�nh ng� ���c <color=red>"..HaveMagic(399).."<color> �i�m")	
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
	Talk(1,"","K� n�ng �� ��t ��n m�c t�i �a ho�c h�t 1 �i�m d� ")
	end
end


mangten = {
{4,399,"Lo�n Ho�n K�ch",462,"��a Di�m H�a",464,"��c Th� C�t",436,"Xuy�n T�m Th�ch",434,"H�n B�ng Th�ch",439,"L�i K�ch Thu�t"}
}