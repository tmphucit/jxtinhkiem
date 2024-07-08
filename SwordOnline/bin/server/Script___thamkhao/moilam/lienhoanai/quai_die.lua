function OnDeath()
AddExp(200000,100,10)
if GetGlbMissionV(41) < 10 then
SetMissionV(40,GetMissionV(40)+1)
if GetMissionV(40) >= 50 then
SetGlbMissionV(41,GetGlbMissionV(41)+1)
SetMissionV(40,0)
ai = SubWorldID2Idx(26)
bossid = 604+GetGlbMissionV(41)
bosslvl = 99
	posx = 196*8*32
	posy = 201*16*32
boss=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(boss, "\\script\\moilam\\lienhoanai\\boss_die.lua")
end
end
end