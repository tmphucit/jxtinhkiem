function main(idx)
n = GetItemCount(105)
w,x,y = GetWorldPos()
if GetPKState() == 0  or w == 75 then
DelItemIdx(idx);
	if GetItemCount(105) == (n-1) then
		for i=1,20 do
			AddItem(1,1,0,5,0,0,0)
		end
		Msg2Player("B�n nh�n ���c 20 b�nh Th� � Ho�n Th�n �an")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","V�t ph�m ch� s� d�ng ���c trong tr�ng th�i luy�n c�ng !")
end
end
