
function main(idx)
n = GetItemCount(150)
if GetItemCount(150) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(150) == (n-1) then
		sx = RandomNew(1,1000)
		if sx < 700 then
			vt = RandomNew(1,2) -- TTL NNH 1 Gio
		elseif sx < 850 then
			vt = RandomNew(3,4) -- TTL NNH 3 Gio
		elseif sx < 950 then
			vt = RandomNew(5,6) -- TTL NNH 6 Gio
		elseif sx < 990 then
			vt = RandomNew(7,10) -- Thuy Tinh, THBT
		else -- Xac suat 1%
			vt = RandomNew(11,12) -- Tay Tuy Kinh, VLMT
		end
		
		idxitem = AddEventItem(Mang_Item[vt][3])
		Msg2SubWorld("��i hi�p "..GetName().." m� H�p L� V�t V��t �i nh�n ���c: <color=green>"..Mang_Item[vt][2].."")
	
	Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end
end

Mang_Item = {
{0,"Ti�n Th�o L� 1 Gi� ", 117}, -- 1
{0,"N� Nhi H�ng 1 Gi� ", 118}, -- 2
{0,"N� Nhi H�ng 3 Gi� ", 115}, -- 3
{0,"Ti�n Th�o L� 3 Gi�  ", 119}, -- 4
{0,"N� Nhi H�ng 6 Gi� ", 116}, -- 5
{0,"Ti�n Th�o L� 6 Gi� ", 120}, -- 6
{0,"Lam Th�y Tinh", 28}, --7
{0,"T� Th�y Tinh", 29}, --8
{0,"L�c Th�y Tinh", 30}, -- 9
{0,"Tinh H�ng B�o Th�ch", 31}, -- 10
{0,"V� L�m M�t T�ch", 0}, -- 11
{0,"T�y T�y Kinh", 1},  -- 12


}
