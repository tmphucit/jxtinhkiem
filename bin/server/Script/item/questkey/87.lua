
Include("\\script\\monphai.lua")

function main(idx)
if GetLevel() >= 80 then
	if mp() == 4 then
		if HaveMagic(327) >= 1 then
		Msg2Player("K� n�ng n�y �� ���c l�nh ng�")
	else
		DelItemIdx(idx);
		AddMagic(327,0)
		end
	else
	Msg2Player("M�n ph�i y�u c�u: Ng� ��c Gi�o")
	end
else
Msg2Player("��ng c�p y�u c�u: 80")
end
end

