function main()
ngay = tonumber(date("%d"))

gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))

if gio < 20 then
SetPos(35,1569,3246)
Talk(1,"","<color=red>H� th�ng <color>: Ch�a t�i gi� c�ng th�nh chi�n. Th�i gian c�ng th�nh chi�n <color=red>20h00 - 22h00<color> ")
Msg2Player("Th�i gian C�ng Th�nh Chi�n b�t ��u sau: "..(59-phut).." ph�t "..(59-giay).." gi�y n�a !")
return
elseif gio > 21 then
SetPos(35,1569,3246)
Talk(1,"","<color=red>H� th�ng <color>: Tr�n chi�n �� k�t th�c. Th�i gian c�ng th�nh chi�n <color=red>20h00 - 22h00<color> ")
return
end

if GetGlbMissionV(10) == 3 then
SetPos(35,1569,3246)
Talk(1,"","<color=red>H� th�ng <color>: Tr�n chi�n �� k�t th�c ")
return
end

if GetTask(10) == ngay then
SetDeathScript("\\script\\hoatdong\\congthanh\\thutu.lua");
SetTempRevPos(36,1537*32,3218*32)
SetTask(128,1) -- Check mau sac
SetCreateTeam(0);
SetCurCamp(1)
SetCamp(1)
SetFightState(0)
SetRank(216)
SetPKState(1)
BlockPKState(1)
SetPunish(1);
SetLogoutRV(1)
Msg2Player("B�n �� v�o chi�n tr��ng.")
NewWorld(36,1529,3208)
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