

function main(idx)
n = GetItemCount(0)
			if GetTask(199) < gioihan() then
if GetItemCount(0) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(0) == (n-1) then
			SetTask(199,GetTask(199)+1)
			AddMagicPoint(1)
			Msg2Player("B�n s� d�ng th�nh c�ng V� L�m M�t T�ch. nh�n ���c 1 �i�m k� n�ng !"); 
			--KickOutSelf()
			else
			Talk(1,"","Hack Ha Em")
			end
end
		
			else
			Talk(1,"","Ng��i �� d�ng <color=red> "..gioihan().." cu�n V� L�m M�t T�ch<color>, kh�ng th� d�ng th�m")
			end
end

function gioihan()
return 15 + GetTask(139)*5
end