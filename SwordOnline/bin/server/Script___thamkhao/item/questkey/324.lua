Include("\\script\\listtoado\\XacSuatItem_MamVang.txt")

IDITEM = 324


function main(idx)
n = GetItemCount(IDITEM)


if CheckFreeBoxItem(0,10,2,2) == 0 then
	Msg2Player("Hµnh trang kh«ng ®ñ 2 x 3 chç trèng, kh«ng thÓ sö dông")
	return
end
		
gh = gioihan()
if GetTask(985) >= gh then
Talk(1,"","B¹n ®· ®¹t giíi h¹n: "..gh.." kinh nghiÖm, kh«ng thÓ sö dông thªm !")
return
end

if GetItemCount(IDITEM) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(IDITEM) == (n-1) then
				
				AddOwnExp(2000000)
				SetTask(985, GetTask(985) + 2000)
				Msg2Player("Giíi h¹n: <color=yellow>"..GetTask(985).."000 <color=red>/ "..gh.."000")
				
			
				
				sxitem = RandomNew(1,50)
				if sxitem == 25 then
					XacSuatVatPham()
				end
			else
			Talk(1,"","Hack Ha Em")
			end
end
end


function gioihan()
if GetTask(986) == 0 then
return 1000000 
elseif GetTask(986) == 1 then
return 2000000 
elseif GetTask(986) == 2 then
return 3000000 
else
return 1000000 
end
end

function XacSuatVatPham()
xs = RandomNew(1, TongXacSuat)

point = xs
for i=1,getn(MangVatPham) do
	point = point - MangVatPham[i][4]
	if point <= 0 then
			if MangVatPham[i][2] == 9999 then
					AddItem(0, MangVatPham[i][5], MangVatPham[i][6], MangVatPham[i][7], 0,0,0)
			else
					AddEventItem(MangVatPham[i][2])
			end
			
			if MangVatPham[i][1] == 1 then
				Msg2SubWorld("Chóc mõng §¹i HiÖp "..GetName().." sö dông TÊm ¸o ChiÕn SÜ may m¾n nhËn ®­îc: <color=green>"..MangVatPham[i][3].."")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/SuKien/XacSuatRaItem.txt", "a");
				if LoginLog then
				write(LoginLog,"["..MangVatPham[i][3].."] ["..GetTask(985).."] [MamVang]]["..GetAccount().."]["..GetName().."] - Time: "..thoigian.."\n");
				end
				closefile(LoginLog)
			else		
			Msg2Player("B¹n nhËn ®­îc: <color=green>"..MangVatPham[i][3].."")
			end
			
	
			
			
			break
	end
end
end
