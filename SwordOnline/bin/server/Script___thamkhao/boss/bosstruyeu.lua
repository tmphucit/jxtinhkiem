
function OnDeath()
team = GetTeam()
map,x,y = GetWorldPos()
Msg2SubWorld("<color=pink>��i hi�p "..GetName().." �� ti�u di�t Boss Tr� Y�u, mang v� cho nh�m c�a m�nh r�t nhi�u v�t ph�m qu� gi� ")
idx = PlayerIndex
if GetTeam() == nil then
		soluong = RandomNew(1,2)
		for t=1,soluong do
				loai = RandomNew(1,100)
				vt = CheckXacSuat(loai)
				if vt > 0 and vt <= getn(Mang_Item) then
					AddEventItem(Mang_Item[vt][3])
					Msg2SubWorld("- "..GetName().." nh�n ���c <color=yellow>"..Mang_Item[vt][4].."")
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
								Msg2SubWorld("- "..GetName().." nh�n ���c <color=yellow>"..Mang_Item[vt][4].."")
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
{1,25,113,"Ti�n Th�o L� Nh� "},
{26,50,114,"N� Nhi H�ng Nh� "},
{51,65,117,"Ti�n Th�o L� 1 Gi� "},
{66,89,118,"N� Nhi H�ng 1 Gi� "},
{90,95,119,"Ti�n Th�o L� 3 Gi� "},
{96,100,115,"N� Nhi H�ng 3 Gi� "},
}

function OnDrop()
end