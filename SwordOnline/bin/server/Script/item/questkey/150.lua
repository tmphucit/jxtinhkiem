
function main(idx)
n = GetItemCount(150)
if GetItemCount(150) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(150) == (n-1) then
	vp = RandomNew(1,100)
	if vp < 50 then
	AddEventItem(653)
	Msg2Player("B�n nh�n ���c 1 Thi�n S�n B�o L� ")
	elseif vp < 70 then
	AddEventItem(653)
	Msg2Player("B�n nh�n ���c 1 Thi�n S�n B�o L�")
	elseif vp < 86 then
	AddEventItem(664)
	Msg2Player("B�n nh�n ���c 1 An Bang Tinh Luy�n Th�ch")
	else
	AddEventItem(665)
	Msg2Player("B�n nh�n ���c 1 ��nh Qu�c Tinh Luy�n Th�ch")
	end
	Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end
end
