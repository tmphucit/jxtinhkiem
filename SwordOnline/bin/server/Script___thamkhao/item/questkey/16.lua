
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
			Msg2Player("§¹i hiÖp "..GetName().." më ThÇn BÝ §¹i Hång Bao nhËn ®­îc: <color=green>"..Mang_Item[vt][2].."")
		else
				Msg2SubWorld("§¹i hiÖp "..GetName().." më ThÇn BÝ §¹i Hång Bao nhËn ®­îc: <color=green>"..Mang_Item[vt][2].."")
		end
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
