

function main(idx)
if (GetTask(198) < 15) then
	Talk(1,"","Ng��i ch�a h�c th�nh th�o 15 cu�n T�y T�y Kinh, kh�ng th� s� d�ng")	
	return
end
if (GetTask(198) >= gioihan()) then
	Talk(1,"","Hi�n t�i �� s� d�ng �� 5 B�nh T�t Ti�m N�ng, kh�ng th� s� d�ng th�m")	
	return
end

n = GetItemCount(689)
if GetItemCount(689) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(689) == (n-1) then
		SetTask(198,GetTask(198)+1)
		AddProp(5)
		Msg2Player("B�n s� d�ng th�nh c�ng B�nh T�t Ti�m N�ng nh�n ���c 5 �i�m ti�m n�ng !"); 
		KickOutSelf()
	else
		Talk(1,"","Hack Ha Em")
	end
end
end


function gioihan()
return 20
end