function main(idx)
DelItemIdx(idx);
Talk(1,"","V�t ph�m l�i, x�a ....!")
end
function main_(idx)
n = GetItemCount(413)
w,x,y= GetWorldPos()
if GetPKState() == 0 or w == 24 then
DelItemIdx(idx);
	if GetItemCount(413) == (n-1) then
		for i=1,20 do
			AddItem(1,10,0,3,0,0,0)
		end
		Msg2Player("B�n nh�n ���c 20 b�nh H�i Thi�n T�i T�o ��n")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","V�t ph�m ch� s� d�ng ���c trong tr�ng th�i luy�n c�ng !")
end
end