

function main(idx)
            n = GetItemCount(0)
			if GetTask(199) < gioihan() then
            if GetItemCount(0) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(0) == (n-1) then
			SetTask(199,GetTask(199)+1)
			AddMagicPoint(1)
			Msg2Player("B�n nh�n ���c <color=yellow>1 �i�m k� n�ng !"); 
		--	KickOutSelf()
			else
			Talk(1,"","Hack Ha Em")
			end
end
		
			else
			Talk(1,"","Ng��i �� d�ng <color=yellow>"..gioihan().." cu�n V� L�m M�t T�ch<color> , kh�ng th� d�ng th�m .")
			end
end

function gioihan()
return 10 + GetTask(139)*5
end
