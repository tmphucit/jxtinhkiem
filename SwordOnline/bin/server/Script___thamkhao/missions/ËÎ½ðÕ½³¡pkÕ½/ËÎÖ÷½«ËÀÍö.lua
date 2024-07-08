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

WinBonus(2,1);
str1 = "宋金战役结果:金人"..GetName().."杀掉了宋方大将，金方获得胜利!";
str = "太好了！["..GetName().."]杀死了宋将，我们金人赢了这场战斗!将士们欢呼呀！";
Msg2MSAll(1, str1);
Msg2MSGroup(1, str, 2);
OnDeath4()
resultstr = WinBonus(2,1);
str2 = resultstr;
SetMissionV(2,1);
SetMissionV(1,3);
AddGlobalCountNews(str1 , 2);
EndMission(1);

end;
