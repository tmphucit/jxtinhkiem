
function main(idx)
sl = GetItemCount(186)
DelItemIdx(idx);
if GetItemCount(186) == (sl-1) then
	AddItem(0,11,0,random(26,50),0,0,0)
	Msg2Player("B�n nh�n ���c 1 c�i  <color=yellow>M�t N� s� c�p")
	Talk(0,"")
else
Talk(1,"","Hack ha em ")
end
end

