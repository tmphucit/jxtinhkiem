
function main(idx)
sl = GetItemCount(187)
DelItemIdx(idx);
if GetItemCount(187) == (sl-1) then
	AddItem(0,11,0,random(51,75),0,0,0)
	Msg2Player("B�n nh�n ���c  1 c�i  <color=yellow>M�t N� cao c�p ")
	Talk(0,"")
else
Talk(1,"","Hack ha em ")
end
end

