

danhsachskillhotro = {

{
{{14,10,10},{271,11,19}},
{{31,35,37},{325,41,32}},
{{54,50,47},{58,249,357}},
{{333,68},{74,71}},
{{334,82},{88,91}},
{{105,113},{108,111}},
{{119,122},{125,128}},
{{138,141},{148,142}},
{{158,164},{267,165}},
{{169,172},{176,182}},
},
{
{350,351,353},
{345,347,342},
{302,355,358},
{361,359},
{374,370},
{377,378},
{389,362},
{367,365},
{380,382},
{385,384}
}

}



























function hotrokinang9xt(id)
if (GetMagicLevel(id) == 0) then
slknht = 0
elseif (GetMagicLevel(id) <= 20) then
slknht = floor(((GetMagicLevel(id) - 1) * 3) / 19)
elseif (GetMagicLevel(id) > 20) then
slknht = 3
end
return slknht
end;

function hotrokinang9xc(id)
if (GetMagicLevel(id) == 0) then
slknht = 0
elseif (GetMagicLevel(id) <= 20) then
slknht = floor(((GetMagicLevel(id) - 1) * 7) / 19)
elseif (GetMagicLevel(id) > 20) then
slknht = 7
end
return slknht
end;






function skill9x(vt)

player_Faction = GetFaction()

if (player_Faction == "������") then 
mp = 6
elseif (player_Faction == "�嶾��") then
mp = 4
elseif (player_Faction == "������") then
mp = 2
elseif (player_Faction == "������") then
mp = 1
elseif (player_Faction == "�䵱��") then
mp = 9
elseif (player_Faction == "���̽�") then
mp = 8
elseif (player_Faction == "����") then
mp = 3
elseif (player_Faction == "������") then
mp = 10
elseif (player_Faction == "������") then
mp = 5
elseif (player_Faction == "ؤ��") then
mp = 7
else 
mp = 0
end


diemskilltoida = 10 + hotrokinang9xt(danhsachskillhotro[1][mp][1][vt]) + hotrokinang9xc(danhsachskillhotro[1][mp][2][vt]) + GetTask(197)

if (GetLevel() >= 90) then
if (GetMagicLevel(danhsachskillhotro[2][mp][vt]) >= diemskilltoida) then
Msg2Player("Ki nang da linh ngo den cap do gioi han, hien tai khong the linh ngo them")
else

if (GetMagicPoint()>=1) then

AddMagicPoint(-1)

AddMagic(danhsachskillhotro[2][mp][vt],GetMagicLevel(danhsachskillhotro[2][mp][vt]) + 1)

Msg2Player("Ki nang linh ngo len cap "..GetMagicLevel(danhsachskillhotro[2][mp][vt]))

else

Msg2Player("khong du 1 diem ki nang, khong the linh ngo them ")

end

end

else
Msg2Player("Khong du dang cap 90")
end


end;


 
