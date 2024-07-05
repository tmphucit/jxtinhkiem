FRAME2TIME = 18;	--18帧游戏时间相当于1秒钟
PKID=1;		--进程计时器id
TRANID=2;	--传送计时器id
TIMEID=3;	--消息计时器id 

--Glb变量
BWID = 41;	--是否初始化
BWRS=42;	--记录比武人数
BWNUM=43;	--记录比武场数
BWSTATE=44;	--记录擂台状态
WIN = 45;	--记录胜方
WIDX = 46;	--记录胜方PlayerIndex
DEATH = 47;	--死亡个数

--玩家任务号
GAMBLE = 48;	--记录下注值
GAMSTATE = 49;	--记录下注与否
BWIF = 50;	--记录比武与否
PK = 51;	--记录原来的pk值

TIMER_1 = 20 * FRAME2TIME; --20秒公布一下战况
TIMER_2 = 5 * 60  * FRAME2TIME; --交战时间为5分钟
TIMER_3 = 20 * FRAME2TIME; --中场休息时间为1分钟
-------------------------------------------------------------------------
function JoinCamp()
rs=GetGlbMissionV(BWRS)
    if (rs==0) then
		SetTask(BWIF,1)
		SetPunish(1)
		SetTask(PK,GetPK())
		SetPK(0)
		SetCreateTeam(0);
		SetCurCamp(1)
		SetDeathScript("\\script\\missions\\chanllege\\擂主death.lua");
		SetGlbMissionV(BWRS,1)
		SetFightState(0);
		NewWorld(209, 202*8, 198*16);
	str ="<color=pink>"..GetName().."<color>发起了<color=Red>擂台比武<color>!";
		AddGlobalCountNews(str,1);
    elseif (rs==1) then
		SetTask(BWIF,1)
		SetPunish(1)
		SetTask(PK,GetPK())
		SetPK(0)
		SetCreateTeam(0);
		SetCurCamp(2)
		SetDeathScript("\\script\\missions\\chanllege\\挑战death.lua");
		SetGlbMissionV(BWRS,2)
		SetFightState(0);
		NewWorld(209, 207*8, 202*16);
	str1 ="<color=pink>"..GetName().."<color>前来挑战!";
		AddGlobalCountNews(str1,1);
	SetTimer(TIMER_1,TRANID)
    else
	Msg2Player("目前的擂台一次只能两个人比武!");
    end
end;
-------------------------------------------------------------------------
-------------------------------------------------------------------------
function GameOver()
for i=42,47 do
	SetGlbMissionV(i,0)
end
for j=1,100 do
	PlayerIndex=j
	if (GetTask(BWIF)==1 or GetTask(GAMSTATE)==1) then
	for k=48,51 do
	SetTask(k,0)
	end
	RestoreCamp()
	SetPK(GetTask(PK))
	NewWorld(53, 1582, 3237);
	end
end
AddGlobalCountNews("这一轮的擂台挑战赛已经结束!",2);
end;

-------------------------------------------------------------------------
function GamePause()
	SetGlbMissionV(BWSTATE,2)
	SetGlbMissionV(BWRS,1)
	SetTimer(TIMER_3,TIMEID)
end;
-------------------------------------------------------------------------
function Transfer()
for i=1,100 do
	PlayerIndex=i
	if (GetTask(BWIF)==1) then
		SetFightState(1);
	end
end
AddGlobalCountNews("擂台挑战赛开始!",2);
end;