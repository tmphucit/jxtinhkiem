function main(sel)

SayNew("军医：我这里都是上好的药材，特来支援前线，要买点什么药？", 4, "交易/yes","五花玉露丸打包出售/wuhua", "我要离开/out", "不交易/no");

end;

function wuhua()
SayNew("军医：本人最近推出药品打包出售服务，促销价只售<color=Red>15万两<color>.",2,"购买/ok","算了/no")
end;

function ok()
if (GetCash() >= 150000) then
Pay(150000)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
Msg2Player("得到五花玉露丸20个。")
else
SayNew("军医：等存够了银子再来买吧。")
end
end;

function yes()
Sale(11);  			--弹出交易框
end;


function out()
timestate = GetMissionV(1);
if (timestate == 1) or (timestate == 2) then
SayNew("军医：战役进行中，你不能当逃兵。", 0);
else
SayNew("军医：看清楚拉，可别塔错车哦，那样会很麻烦的",2,"巴陵县/blang","不去拉/OnCancel");  
end
end;

   function blang()
		SetLogoutRV(0);
		SetCreateTeam(1);
		SetDeathScript("");
       NewWorld(53, 1582, 3237);
       Msg2Player("坐稳拉，出发! 巴陵县了...");
       SetFightState(0);
OldPK=GetTask(201)
SetPK(OldPK)
SetTask(201,0)
Msg2Player("您离开了宋金战场，系统将您的PK值恢复为"..OldPK.."！");
   end;


function no()
end;
