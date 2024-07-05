Include("\\script\\missions\\宋金战场pk战\\宋金战场头文件.lua");

function main(sel)
        curidx = SubWorld
	idx = SubWorldID2Idx(44);
	if (idx == -1) then 
	return
	end;	
	SubWorld = idx;
timestate = GetMissionV(MS_STATE);
 if (timestate == 0) then
  Say("宋金接送员：战役还没有爆发，您不能进入战场。", 0);
 else
  if (GetLevel() <= 49) then
  return 0;
  end
  Say("宋金接送员：你要报名吗？身上要带50万两报名费哦！", 3, "我要加宋方/song", "我要加金方/jin", "没事/no");
  LeaveTeam()
 end
SubWorld = curidx
end;

function song()
NewWorld(44, 886, 4499);
SetFightState(0);
MyPK=GetPK()
SetTask(200,MyPK)
SetPK(0)
Msg2Player("您的PK值为"..MyPK.."，在宋金战场，系统将为您设置成0，出去后恢复正常值！");
MyExp=GetExp()
SetTask(190,MyExp)
Msg2Player("在宋金战场，每次死亡掉的经验，系统将立即给您补偿上。");
end;

function jin()
NewWorld(44, 1585, 3215);
SetFightState(0);
MyPK=GetPK()
SetTask(200,MyPK)
SetPK(0)
Msg2Player("您的PK值为"..MyPK.."，在宋金战场，系统将为您设置成0，出去后恢复正常值！");
MyExp=GetExp()
SetTask(190,MyExp)
Msg2Player("在宋金战场，每次死亡掉的经验，系统将立即给您补偿上。");
end;

function no()
end;