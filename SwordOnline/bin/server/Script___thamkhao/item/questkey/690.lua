

function main(idx)
if (GetTask(199) < 10) then
	Talk(1,"","Ng��i ch�a h�c th�nh th�o 10 cu�n V� L�m M�t T�ch, kh�ng th� s� d�ng")	
	return
end
if (GetTask(199) >= gioihan()) then
	Talk(1,"","Hi�n t�i �� s� d�ng �� 5 B�nh T�t K� N�ng, kh�ng th� s� d�ng th�m")	
	return
end

n = GetItemCount(690)
if GetItemCount(690) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(690) == (n-1) then
		SetTask(199,GetTask(199)+1)
		AddMagicPoint(1)
		Msg2Player("B�n s� d�ng th�nh c�ng B�nh T�t K� N�ng nh�n ���c 5 �i�m ti�m n�ng !"); 
		KickOutSelf()
	else
		Talk(1,"","Hack Ha Em")
	end
end
end


function gioihan()
return 15
end