
Include("\\script\\monphai.lua")

function main(idx)
if GetLevel() >= 80 then
	if mp() == 8 then
		if HaveMagic(367) >= 1 then
		Msg2Player("K� n�ng n�y �� ���c l�nh ng�")
	else
		DelItemIdx(idx);
		AddMagic(367,1)
		end
	elseif (mp() == 0) then
	SetFaction("Thien Nhan Giao")
	else
	Msg2Player("M�n ph�i y�u c�u: Thi�n Nh�n Gi�o")
	end
else
Msg2Player("��ng c�p y�u c�u: 80")
end
end

