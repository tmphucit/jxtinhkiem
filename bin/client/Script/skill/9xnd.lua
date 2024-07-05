


function main()

if GetLevel() >= 90 then
if GetMagicPoint() >= 2 then
if GetMagicLevel(327) < 20 then
AddMagicPoint(-2)
dcclh = GetMagicLevel(327)+1
AddMagic(327,dcclh)
Msg2Player("Ky nang [Doan Can Hu Cot] linh hoi len dang cap "..dcclh)
else
Msg2Player("Ky nang [Doan Can Hu Cot] da linh hoi den muc gioi han 20 cap !")
end
else
Msg2Player("Khong du 2 diem ky nang !")
end
else
Msg2Player("Khong du dang cap 90 !")
end

end;

		


 
