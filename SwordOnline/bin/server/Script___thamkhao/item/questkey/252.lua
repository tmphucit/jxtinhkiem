

function main(idx)
n = GetItemCount(252)
	if GetExp() >= 0 then
		Talk(1,"","Kinh nghi�m c�a b�n kh�ng b� �m, kh�ng th� s� d�ng v�t ph�m !")
		return
	end
	
if GetItemCount(252) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(252) == (n-1) then
				SetExp(0)
				Msg2Player("B�n �� s� d�ng B�t Nh� T�m Kinh b�i tr� �o�n b� kinh nghi�m �m!"); 
				--KickOutSelf()
			else
			Talk(1,"","Hack Ha Em")
			end
end
		
		
end
