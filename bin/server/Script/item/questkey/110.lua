function main(idx)
n = GetItemCount(110)

w,x,y= GetWorldPos()
if GetPKState() == 0 or w == 24 then
DelItemIdx(idx);
	if GetItemCount(110) == (n-1) then
		for i=1,20 do
			AddItem(1,0,0,3,0,0,0)
		end
		Msg2Player("B�n nh�n ���c 20 b�nh Kim S�ng D��c ��i")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","V�t ph�m ch� s� d�ng ���c trong tr�ng th�i luy�n c�ng !")
end
end