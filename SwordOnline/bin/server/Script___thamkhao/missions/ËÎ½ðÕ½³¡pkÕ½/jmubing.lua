Include("\\script\\missions\\宋金战场pk战\\宋金战场头文件.lua");

function main(sel)

SayNew("募兵员：请问您是要进战场呢还是要离开？", 3, "我要进战场/yes", "我要离开/out", "没事/no");

end;


function yes()
timestate = GetMissionV(MS_STATE);
if (timestate == 0) then
SayNew("募兵员：战役还没有爆发，您不能进入战场。", 0);
else
SJ_JoinJ()
end
end;

function out()
   SayNew("募兵员：看清楚拉，可别塔错车哦，那样会很麻烦的",2, "巴陵县/blang", "不去拉/no");  

end;

   function blang()
		SetLogoutRV(0);
		SetCreateTeam(1);
		SetDeathScript("");
       NewWorld(53, 1582, 3237);
       Msg2Player("坐稳拉，出发! 巴陵县了...");
       SetFightState(0);
--OldPK=GetTask(201)
--SetPK(OldPK)
--SetTask(201,0)
--Msg2Player("您离开了宋金战场，系统将您的PK值恢复为"..OldPK.."！");
   end;


function no()
end;