

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
						Talk(1,"","K� n�ng "..mangten[1][3].." L�nh ng� ���c <color=red>"..HaveMagic(328).."<color> Diem")	
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
	Talk(1,"","K� n�ng �� ��t m�c t�i �a ho�c kh�ng �� 1 �i�m d� ")
	end
end


mangten = {
{3,328,"Nhi�p H�n Lo�n T�m",136,"H�a Li�n Ph�n Hoa",137,"�o �nh Phi H� ",140,"Phi H�ng V� T�ch",364,"B� T� Thanh Phong",143,"L�ch Ma �o�t H�n"},
}