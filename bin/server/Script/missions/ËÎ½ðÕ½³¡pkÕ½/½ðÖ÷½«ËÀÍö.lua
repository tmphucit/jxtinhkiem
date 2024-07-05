Include("\\script\\missions\\宋金战场pk战\\宋金战场头文件.lua");
Include("\\script\\missions\\宋金战场pk战\\奖励.lua");
Include("\\script\\missions\\宋金战场pk战\\zhujiang.lua");

function OnDeath()

State = GetMissionV(1) ;
if (State ~= 2) then
return
end;

 if ( GetMissionV(5) + GetMissionV(6) >= (MAX_S_COUNT + MAX_J_COUNT) * 7 / 10) then

 Qitawanjia();

end

WinBonus(1,2);
str1 = "宋金战役结果:宋人"..GetName().."杀掉了金方大将，宋方获得胜利!";
str = "太好了！["..GetName().."]杀死了金将，我们宋人赢了这场战斗!将士们欢呼呀！";
Msg2MSAll(1, str1);
Msg2MSGroup(1, str, 1);
OnDeath4()
resultstr = WinBonus(1,2);
SetMissionV(2,2);
SetMissionV(1,3);
AddGlobalCountNews(str1 , 2);
EndMission(1);

end;

