function main()
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))

if gio < 20 then
SetPos(34,1581,3158)
Talk(1,"","<color=red>HÖ thèng <color>: Ch­a tíi giê c«ng thµnh chiÕn. Thêi gian c«ng thµnh chiÕn <color=red>20h00 - 21h15<color> ")
Msg2Player("Thêi gian C«ng Thµnh ChiÕn b¾t ®Çu sau: "..(59-phut).." phót "..(59-giay).." gi©y n÷a !")
return
end


if gio > 21 or (gio == 21 and phut > 15) then
SetPos(34,1581,3158)
Talk(1,"","<color=red>HÖ thèng <color>: TrËn chiÕn ®· kÕt thóc. Thêi gian c«ng thµnh chiÕn <color=red>20h00 - 21h15<color> ")
return
end

if GetGlbMissionV(10) == 3 then
SetPos(34,1581,3158)
Talk(1,"","<color=red>HÖ thèng <color>: TrËn chiÕn ®· kÕt thóc ")
return
end
if GetTask(10) == ngay then
SetDeathScript("\\script\\congthanh\\congtu.lua");
SetTempRevPos(36,1897*32,3584*32)
SetCurCamp(2)
SetCamp(2)
SetCreateTeam(0);
SetFightState(0)
SetRank(215)
SetLogoutRV(1)
SetPKState(1)
BlockPKState(1)
SetPunish(1);
SetTask(128,1)
Msg2Player("B¹n ®· vµo chiÕn tr­êng.")
NewWorld(36,1906,3614)
else
SetFightState(0)
SetCamp(GetTask(140))
SetCurCamp(GetTask(140))
SetRevPos(19)
SetRank(1)
SetTask(80,0)
SetTask(10,0)
SetTask(128,0)
Msg2Player("B¹n ®· trë vÒ Ba L¨ng HuyÖn ")
NewWorld(53,200*8,200*16)
end
end