
function main(idx)
n = GetItemCount(16)
if GetItemCount(16) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(16) == (n-1) then
		sx = RandomNew(1,1000)
		if sx < 550 then
			vt = 2 -- 55% NNH 1 Gio
		elseif sx < 700 then
			vt = 1 -- 15% TTL 1 Gio
		elseif sx < 750 then
			vt = 3 -- 16% NNH 3 Gio
		elseif sx < 910 then	
			vt = 4 -- 4% TTL 3 gio
		elseif sx < 950 then	
			vt = 5 -- 4% NNH 6 Gio
		elseif sx < 990 then	
			vt = 6 -- 1% TTL 6 Gio
		elseif sx < 999 then
			vt = RandomNew(7,10) -- Thuy Tinh, THBT
		else -- Xac suat 1%
			vt = RandomNew(11,12) -- Tay Tuy Kinh, VLMT
		end
		
		idxitem = AddEventItem(Mang_Item[vt][3])
		if (vt < 5) then
			Msg2Player("��i hi�p "..GetName().." m� Th�n B� ��i H�ng Bao nh�n ���c: <color=green>"..Mang_Item[vt][2].."")
		else
				Msg2SubWorld("��i hi�p "..GetName().." m� Th�n B� ��i H�ng Bao nh�n ���c: <color=green>"..Mang_Item[vt][2].."")
		end
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
