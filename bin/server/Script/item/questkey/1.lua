

function main(idx)
n = GetItemCount(1)
if (GetTask(198) < gioihan()) then
if GetItemCount(1) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(1) == (n-1) then
	SetTask(198,GetTask(198)+1)
	AddProp(5)
	Msg2Player("B�n nh�n ���c <color=yellow>5 �i�m ti�m n�ng !"); 
	--KickOutSelf()
	else
		Talk(1,"","Hack Ha Em")
	end
end
else
Talk(1,"","Ng��i �� d�ng <color=yellow>"..gioihan().." cu�n T�y Tu� Kinh<color> , kh�ng th� s� d�ng th�m .")
end
end

function gioihan()
return 5 + GetTask(139)*5
end
