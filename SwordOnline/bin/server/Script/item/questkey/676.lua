
function main(idx)
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
w,x,y = GetWorldPos() 

if w ~= 239 then
Talk(1,"","V�t ph�m ch� s� d�ng � ��o ��o Hoa")
return
end
if GetFightState() == 1 then
Talk(1,"","Tr�ng th�i chi�n ��u kh�ng th� s� d�ng H�t  ")
return
end
if GetTask(529) == ngay then
Talk(1,"","B�n �� s� d�ng 1 H�t h�m nay r�i, kh�ng th� s� d�ng th�m")
return
end
if (gio == 0 and phut <= 15) or (gio == 6 and phut <= 15) or (gio == 11 and phut >= 30 and phut <= 45) or (gio == 17 and phut >= 15 and phut <= 30) or (gio == 19 and phut >= 30 and phut <= 45) then

n = GetItemCount(676)
if GetItemCount(676) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(676) == (n-1) then
		SetTask(529 , ngay)
		SetTask(530, 16)
		SetTask(531, 2000000)
		Talk(1,"","�� s� d�ng th�nh c�ng <color=green>H�t Ho�ng Kim<color>, nh�n ���c <color=yellow>2.000.000 kinh nghi�m<color> li�n t�c trong 15 ph�t !")
		Msg2Player("�� s� d�ng th�nh c�ng <color=green>H�t Ho�ng Kim<color=red>, nh�n ���c <color=yellow>2.000.000 kinh nghi�m<color=red> li�n t�c trong 15 ph�t !")
	
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end
else
	Talk(1,"","Th�i gian s� d�ng h�t: 0h00 - 0h15, 6h00 - 6h15, 11h30 - 11h45, 17h15 - 17h30, 19h30 - 19h45")
end
end
