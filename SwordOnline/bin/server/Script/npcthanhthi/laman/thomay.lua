function main(sel)
	if (GetMateName() ~= "") then
		--if (GetBit(Uworld67,1) == 0) then
			if (GetSex() == 0) then
				Talk(1,"buy_sale","<player>: nghe n�i ng��i may �o hoa ��p nh�t thi�n h� ��ng kh�ng?")
			else
				Talk(1,"buy_sale","<player>: ng��i c�n h�ng kh�ng?")
			end
		--else
		--	Talk(1,"","Tr��c b�n ti�m l�m y ph�c kh�ng t�, ���c b�ng h�u gi�p �� �ng h� th�t th� th�n!")
		--end
	else
		Talk(1,"","<npc>: kh�ng ph�i n�i kho�c nh� ta c� may c�c l� ph�c t�t nh�t thi�n h�, ng��i c�n may g� c� n�i!")
	end
end

function buy_sale()
	SayNew("Ch� n�y ��c bi�t may l� ph�c, d� nhi�n ph�i t�n chi ph�, v� gi� c�a n� l� 88888 l��ng b�c. ",2,"���ng nhi�n ta mu�n mua m�t b�./buy_yes","Kh�ng c�n,ta c�n ch�a mu�n k�t h�n/no")
end

function buy_yes()
	if (GetCash() >= 88888) then
		Pay(88888)
		if (GetSex() == 0) then
			AddItemID(AddItem(0,0,2,28,1,random(0,4),0,0))
		else
			AddItemID(AddItem(0,0,2,28,4,random(0,4),0,0))
		end
		Talk(1,"","Kh�ng th�nh v�n �� ch�c kh�ch quan tr�m n�m h�o h�p!")
	else
		Talk(1,"","Kh�ng c� ti�n th� ��ng l�m phi�n ta l�m vi�c!")
	end
end

function no()
end
