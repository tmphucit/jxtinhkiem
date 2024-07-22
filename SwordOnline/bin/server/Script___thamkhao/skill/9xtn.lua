


function main()

if GetLevel() >= 90 then
if GetMagicPoint() >= 2 then
if GetMagicLevel(328) < 20 then
AddMagicPoint(-2)
dcclh = GetMagicLevel(328)+1
AddMagic(328,dcclh)
Msg2Player("Ky nang [Nhiep Hon Loan Tam] linh hoi len dang cap "..dcclh)
else
Msg2Player("Ky nang [Nhiep Hon Loan Tam] da linh hoi den muc gioi han 20 cap !")
end
else
Msg2Player("Khong du 2 diem ky nang !")
end
else
Msg2Player("Khong du dang cap 90 !")
end

end;

		


 
