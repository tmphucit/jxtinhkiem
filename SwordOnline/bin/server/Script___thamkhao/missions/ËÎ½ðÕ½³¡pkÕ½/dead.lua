--宋方玩家死亡脚本
Include("宋金战场头文件.lua");

function OnDeath(Launcher)

OldCash=GetTaskTemp(189)
OldExp=GetTaskTemp(190)
NowCash=GetCash()
NowExp=GetExp()
BuCash=OldCash-NowCash
BuExp=OldExp-NowExp

if (OldExp ~= 0) then
AddOwnExp(BuExp)
end

PlayerIndex1 = NpcIdx2PIdx(Launcher);
OrgPlayer  = PlayerIndex;
DeathName = GetName();


	PlayerIndex = PlayerIndex1;
	LaunName = GetName();
	pkcount = GetTask(SJKILLPK) + 1;
	SetTask(SJKILLPK, pkcount);
	str  = "金兵"..LaunName.."重伤了宋军"..DeathName.."，PK人数增为"..pkcount;
	Msg2Player(str);
	PlayerIndex = OrgPlayer;

end;
