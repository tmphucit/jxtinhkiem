Include("\\script\\listtoado\\XacSuatItem_MamBac.txt")

IDITEM = 327


function main(idx)
XacSuatVatPham()
end

function sumtongxacsuat()
num = 0
for i=1,getn(MangVatPham) do
	num = num + MangVatPham[i][4]
end
return num
end

function XacSuatVatPham()
xs = RandomNew(1, TongXacSuat)

sum = sumtongxacsuat()
if sum ~= TongXacSuat then
Msg2Player("Sua lai Tong Xac Suat thanh: "..sum.."")
return
end

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
			Msg2SubWorld("Chóc mõng §¹i HiÖp "..GetName().." sö dông XXXBac may m¾n nhËn ®­îc: <color=green>"..MangVatPham[i][3].."")
			else		
			Msg2Player("B¹n nhËn ®­îc: <color=green>"..MangVatPham[i][3].."")
			end
			break
	end
end
end
