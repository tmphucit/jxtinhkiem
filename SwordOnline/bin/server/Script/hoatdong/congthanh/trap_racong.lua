function main()
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))

if gio < 20 then
SetPos(34,1581,3158)
Talk(1,"","<color=red>H� th�ng <color>: Ch�a t�i gi� c�ng th�nh chi�n. Th�i gian c�ng th�nh chi�n <color=red>20h00 - 22h00<color> ")
Msg2Player("Th�i gian C�ng Th�nh Chi�n b�t ��u sau: "..(59-phut).." ph�t "..(59-giay).." gi�y n�a !")
return
end


if gio > 21 then
SetPos(34,1581,3158)
Talk(1,"","<color=red>H� th�ng <color>: Tr�n chi�n �� k�t th�c. Th�i gian c�ng th�nh chi�n <color=red>20h00 - 22h00<color> ")
return
end

if GetGlbMissionV(10) == 3 then
SetPos(34,1581,3158)
Talk(1,"","<color=red>H� th�ng <color>: Tr�n chi�n �� k�t th�c ")
return
end
if GetTask(10) == ngay then
SetDeathScript("\\script\\hoatdong\\congthanh\\congtu.lua");
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
Msg2Player("B�n �� v�o chi�n tr��ng.")
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
Msg2Player("B�n �� tr� v� Ba L�ng Huy�n ")
NewWorld(53,200*8,200*16)
end
end