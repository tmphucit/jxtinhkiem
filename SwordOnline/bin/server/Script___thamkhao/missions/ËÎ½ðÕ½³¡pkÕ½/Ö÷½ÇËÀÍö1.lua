--金方玩家死亡脚本
Include("\\script\\missions\\宋金战场pk战\\zhujiao.lua")
Include("宋金战场头文件.lua");

function OnDeath(Launcher)
--Launcher为谋杀者.

State = GetMissionV(1) ;
if (State ~= 2) then
return
end;

OldExp=GetTask(190)
NowExp=GetExp()
BuExp=OldExp-NowExp

AddOwnExp(BuExp)


PlayerIndex1 = NpcIdx2PIdx(Launcher);
OrgPlayer  = PlayerIndex;
DeathName = GetName();

if (PlayerIndex1 > 0) then
	PlayerIndex = PlayerIndex1;
	LaunName = GetName();
	pkcount = GetTask(SJKILLPK) + 1;
	SetTask(SJKILLPK, pkcount);
	str  = "宋军"..LaunName.."重伤了金兵"..DeathName..", PK人数增为"..pkcount;
	Msg2MSAll(1,str);

        OnDeath3(Launcher)

	PlayerIndex = OrgPlayer;
end;

V = GetMissionV(MS_J_DEATHCOUNT) + 1;
SetMissionV(MS_J_DEATHCOUNT, V);


dataindex = PIdx2MSDIdx(1,PlayerIndex1);
Pan = GetPMParam(1, dataindex, 1);
SetPMParam(1, dataindex, 1, Pan + 1);


if (V == MS_PKCOUNT) then
	CheckShowKing(2);
end;

end;




