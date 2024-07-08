
function OnDeath()
team = GetTeam()
map,x,y = GetWorldPos()
Msg2SubWorld("<color=pink>§¹i hiÖp "..GetName().." ®· tiªu diÖt Boss Tr­ Yªu, mang vÒ cho nhãm cña m×nh rÊt nhiÒu vËt phÈm quý gi¸ ")
idx = PlayerIndex
if GetTeam() == nil then
		soluong = RandomNew(1,2)
		for t=1,soluong do
				loai = RandomNew(1,100)
				vt = CheckXacSuat(loai)
				if vt > 0 and vt <= getn(Mang_Item) then
					AddEventItem(Mang_Item[vt][3])
					Msg2SubWorld("- "..GetName().." nhËn ®­îc <color=yellow>"..Mang_Item[vt][4].."")
				end
		end
else
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		w,x,y = GetWorldPos()
		if GetTeam() == team and w == map then
				
				xacsuattinh = RandomNew(1,100)
				soluong = 0
				if xacsuattinh < 15 then
					soluong = 1
				end
				if soluong > 0 then
					for t=1,soluong do
							loai = RandomNew(1,100)
							vt = CheckXacSuat(loai)
							if vt > 0 and vt <= getn(Mang_Item) then
								AddEventItem(Mang_Item[vt][3])
								Msg2SubWorld("- "..GetName().." nhËn ®­îc <color=yellow>"..Mang_Item[vt][4].."")
							end
					end
				end
		end
	end
end
PlayerIndex = idx
end;

function CheckXacSuat(num)
for k=1,getn(Mang_Item) do
	if num >= Mang_Item[k][1] and num <= Mang_Item[k][2] then
			return k
	end
end
return 0
end
Mang_Item = {
{1,25,113,"Tiªn Th¶o Lé Nhá "},
{26,50,114,"N÷ Nhi Hång Nhá "},
{51,65,117,"Tiªn Th¶o Lé 1 Giê "},
{66,89,118,"N÷ Nhi Hång 1 Giê "},
{90,95,119,"Tiªn Th¶o Lé 3 Giê "},
{96,100,115,"N÷ Nhi Hång 3 Giê "},
}

function OnDrop()
end