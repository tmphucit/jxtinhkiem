function OnDeath()
W,X,Y = GetWorldPos()
if GetGlbMissionV(40) < 8 then
for k=1,GetPlayerCount() do
PlayerIndex = k
if W == 26 then
Msg2Player("Ban Da Vuot Qua Ai Thu :"..GetGlbMissionV(40).."")
AddOwnExp(50000)
end
end
SetGlbMissionV(40,GetGlbMissionV(40)+1)
else
SetGlbMissionV(40,0)
SetMissionV(40,0)
for q=1,GetPlayerCount() do
PlayerIndex = q
if W == 26 then
AddEventItem(142)
AddRepute(50)
for u=1,10 do AddOwnExp(50000) end
Msg2Player("Ban Nhan Duoc 500.000 Kinh Nghiem")
Msg2Player("Ban Nhan Duoc 50 Diem Danh Vong")
Msg2Player("Ban Nhan Duoc 1 Ruong Bac")
NewWorld(53, 200*8, 200*16);
SetDeathScript("");
SetFightState(0);
Talk(1,"","Chuc Mung. Nhom Cua Ban Vuot Ai Thanh Cong")
end
end
end
end