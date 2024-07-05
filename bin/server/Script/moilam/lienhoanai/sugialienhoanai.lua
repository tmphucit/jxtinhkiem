--Author: KingMax
--Script Vuot Ai Lien hoan

Include("\\script\\Global\\sourcejx49.lua")




SATTHULENH = 151
MISSIONVUOTAI = 100
SOTODOICHOPHEP = 1


quai = {}
function main()
Talk(1,"","Chuc Nang Update Sau")
end
function main1()
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
if (gio == 9) and (phut <= 30) then
bdvuotai()
elseif (gio == 14) and (phut <= 30) then
bdvuotai()

elseif (gio == 21) and (phut <= 30) then
bdvuotai()

else
vuotai()
end
end;


function bdvuotai()
Say("<color=blue>Su Gia Lien Hoan Ai<color>: Cac ha gap ta co chuyen gi nho va chang",2,
"Tham Gia Vuot Ai./tmctddva",
"Thoat./no")
end;

function vuotai()
Say("<color=blue>Su Gia Lien Hoan Ai<color>: Thoi Gian Bao Danh: <color=red>9h00 , 14h00, 21h00",1,"Ket Thuc Doi Thoai./no")
end;


function tmctddva()
if GetGlbMissionV(MISSIONVUOTAI) < SOTODOICHOPHEP then
if (GetTeam() ~= nil) then
if (GetTeamSize() >= 6) then
if (IsCaptain() == 1) then
Say("<color=blue>Su Gia Lien Hoan Ai<color>: Phi moi lan tham gia vuot ai la <color=fire>100 van luong<color>, nguoi co dang cap 80 co the tham gia, nguoi ta to doi da chuan bi du chua ?",2,
"Da chuan bi day du/dcbdd",
"Thoat/no")
else
Talk(1,"no","Nguoi khong phai la <color=red>truong nhom,<color> khong the dua to doi di")
end

else
Talk(1,"no","To doi phai co <color=red>2 nguoi tro len,<color> nguoi hay tim them nguoi roi den gap ta")
end

else
Talk(1,"no","Nguoi can phai co <color=red>to doi,<color> hay tim cho minh to doi roi den gap ta")
end

else
Talk(1,"no","Hien tai da co "..GetGlbMissionV(MISSIONVUOTAI).." to doi tham gia Vuot Ai\nHay Doi Lan Sau")
end

end;


function dcbdd()
idtd = GetTeam()
--if (GetItemCount(SATTHULENH) >= 2) then
--DelItem(SATTHULENH)
--DelItem(SATTHULENH)
for i=1,GetPlayerCount() do
PlayerIndex = i
if (GetTeam() == idtd) then
SetPunish(0)
SetFightState(1)
SetRevPos(53,19);
SetTempRevPos(53,200*8*32,200*16*32);
SetLogoutRV(1)
toadox = 1569 - 8 + random(0,16)
toadoy = 3217 - 16 + random(0,32)
SetGlbMissionV(MISSIONVUOTAI,GetGlbMissionV(MISSIONVUOTAI)+1)
SetDeathScript("\\script\\moilam\\lienhoanai\\playerdie.lua");
NewWorld(26, toadox, toadoy);
Msg2Player("Ban va To Doi da vao Khu Vuc Bao Danh Vuot Ai!");
SetMissionV(40,0)
SetGlbMissionV(40,0)
SetGlbMissionV(41,0)
end
end
SetMissionV(40,0)
--else
--Talk(1,"no","Nguoi khong co du 2 <color=red>Sat Thu Gian<color> khong the dua to doi di")
--end



end;




function no()

end;









