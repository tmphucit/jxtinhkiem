function main(idx)
n = GetItemCount(112)
w,x,y = GetWorldPos()

if w == 43 then
Talk(1,"","V�t ph�m kh�ng cho s� d�ng trong b�n �� Li�n ��u !")
return
end
if GetPKState() == 0  or w == 109 or w == 217 or w == 24 then
DelItemIdx(idx);
	if GetItemCount(112) == (n-1) then
		for i=1,20 do
			AddItem(1,1,0,2,0,0,0)
		end
		Msg2Player("B�n nh�n ���c 20 b�nh Ng�ng Th�n �an Trung")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","V�t ph�m ch� s� d�ng ���c trong tr�ng th�i luy�n c�ng !")
end
end