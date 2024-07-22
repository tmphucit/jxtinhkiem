
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
		Msg2SubWorld("§¹i hiÖp "..GetName().." më Hép LÔ VËt V­ît ¶i nhËn ®­îc: <color=green>"..Mang_Item[vt][2].."")
	
	Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end
end

Mang_Item = {
{0,"Tiªn Th¶o Lé 1 Giê ", 117}, -- 1
{0,"N÷ Nhi Hång 1 Giê ", 118}, -- 2
{0,"N÷ Nhi Hång 3 Giê ", 115}, -- 3
{0,"Tiªn Th¶o Lé 3 Giê  ", 119}, -- 4
{0,"N÷ Nhi Hång 6 Giê ", 116}, -- 5
{0,"Tiªn Th¶o Lé 6 Giê ", 120}, -- 6
{0,"Lam Thñy Tinh", 28}, --7
{0,"Tö Thñy Tinh", 29}, --8
{0,"Lôc Thñy Tinh", 30}, -- 9
{0,"Tinh Hång B¶o Th¹ch", 31}, -- 10
{0,"Vâ L©m MËt TÞch", 0}, -- 11
{0,"TÈy Tñy Kinh", 1},  -- 12


}
