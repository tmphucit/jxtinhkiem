

skillhotro = {{422,"Ngu Tuyet An"},{99,"Phong Hoa Tuyet Nguyet"},{102,"Phong Quyen Tan Tuyet"},{105,"Vu Da Le Hoa"},{108,"Muc Da Luu Tinh"},{111,"Bich Hai Trieu Sinh"},{113,"Phu Van Tan Tuyet"}}


function main()
dcsk = GetMagicLevel(skillhotro[1][1])
dckntd = 20+ GetTask(idcl)
dccn = dcsk + 1

if (dcsk < 19) then
dckt = dcsk + 1
else
dckt = 20
end



for i=2,getn(skillhotro) do
if GetMagicLevel(skillhotro[i][1]) < dckt then
Msg2Player("Dang cap ky nang ["..skillhotro[i][2].."] chua dat "..dckt.." cap, khong the nang cap ky nang ["..skillhotro[1][2].."] len dang cap "..dccn.." !")
return 0
end
end

if (dcsk >= dckntd) then
Msg2Player("Dang cap ky nang ["..skillhotro[1][2].."] da dat muc gioi han "..dckntd.." cap, khong the nang cap !")
return 0
end

if GetMagicPoint() >= 2 then
AddMagicPoint(-2)
AddMagic(skillhotro[1][1],dccn)
Msg2Player("Ky nang ["..skillhotro[1][2].."] linh hoi len dang cap "..dccn)
else
Msg2Player("Khong du 2 diem ky nang !")
end

end;
