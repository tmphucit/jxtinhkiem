
Include("\\script\\admin\\monphai.lua")

function main(idx)
if GetLevel() >= 80 then
	if mp() == 1 then
		if HaveMagic(351) >=1 then
		Msg2Player("K� n�ng n�y �� ���c l�nh ng�")
	else
		DelItemIdx(idx);
		AddMagic(351,1)
		end
	else
	Msg2Player("M�n ph�i y�u c�u: Thi�u L�m")
	end
else
Msg2Player("��ng c�p y�u c�u: 80")
end
end

