
Include("\\script\\monphai.lua")

function main(idx)
if GetLevel() >= 80 then
	if mp() == 3 then
		if HaveMagic(358) >= 1 then
		Msg2Player("K� n�ng n�y �� ���c l�nh ng�")
	else
		DelItemIdx(idx);
		AddMagic(358,1)
		end
	else
	Msg2Player("M�n ph�i y�u c�u: ���ng M�n")
	end
else
Msg2Player("��ng c�p y�u c�u: 80")
end
end

