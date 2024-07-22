

FRAME2TIME = 18;	--18帧游戏时间相当于1秒钟
MAX_S_COUNT = 100;
MAX_J_COUNT = 100;
TIMER_1 = 20 * FRAME2TIME; --20秒公布一下战况
TIMER_2 = 30 * 60  * FRAME2TIME; -- 60分钟

MS_STATE = 1; --任务中记录任务状态的变量ID
--该变量指向的状态值0表示战役为打开，1表示战役报名中，2表示战役战斗进行中，3表示战役刚刚结束了

MS_SJTASKID = 20;
MS_J_DEATHCOUNT = 3; --任务中记录金玩家伤亡数量的变量ID
MS_S_DEATHCOUNT = 4; --任务中记录宋玩家伤亡数量的变量ID

MS_S_SIGHCOUNT  = 5;--任务中宋方共报名的人数
MS_J_SIGHCOUNT  = 6;--任务中金方共报名的人数
MS_KEY = 7;		--记录当前地图下任务的一个key，即一个随机生成的数定

MS_S_NPCDEATH = 8; -- 任务中记录宋战斗Npc死亡的数量的任务变量ID
MS_J_NPCDEATH = 9; -- 任务中记录金战斗Npc死亡的数量的任务变量ID

MS_NEWSVALUE = 10; --任务中存放新闻变量的地方

MS_S_SHOWKING = 11; --0 means uncondition, 1 means condition but time no come ,2 mean all condition is ok ,and have showed.
MS_J_SHOWKING = 12;
MS_FIRSTSHOW = 13; --1 means Song , 2 means Jing


SJTASKID = 230; 	--记录玩家当前任务ID
SJTASKVLAUE = 231; 	--记录玩家当前任务的值,记录所属方,宋为1，金为2
SJTASKKEY = 232; 	--记录玩家当前任务的key号
SJKILLNPC = 233; 	--记录玩家杀Npc数量
SJKILLPK = 234; 	--记录玩家PK玩家数量

MS_SHOWKINGCOUNT = 200; --某方Npc伤亡数量，当伤亡数量超过该值时，则主将可能出现
MS_PKCOUNT	= 50;--某方玩家伤亡数量,当数量超过该值，则主将可能出现


GO_TIME =  300* FRAME2TIME  / TIMER_1; -- 报名时间为10分钟
SHOWKINGTIME1 = 3600 * FRAME2TIME / TIMER_1 ;
SHOWKINGTIME2 = 4200 * FRAME2TIME / TIMER_1;

MS_SIGN_MONEY = 500000; --报名费

-------------------------------------------------------------------------



function GameOver()
idx = 0;

for i = 1 , 500 do 
	idx, pidx = GetNextPlayer(1,idx, 0);
	if (idx == 0) then 
 		break
 	end;
	if ( GetMSIdxGroup(1, idx) == 2) then --jing
		PlayerIndex = pidx;
                  for k = 230 , 234 do
                  SetTask(k,0)
                  end
		camp = GetCamp();
		SetCurCamp(camp);
		SetLogoutRV(0);
		SetCreateTeam(1);
		SetDeathScript("");
		SetRevPos(53,19)

		SetFightState(0)		-- 打完仗后改为非战斗状态（by Dan_Deng）
		SetPunish(1)

		NewWorld(44, 1585,3215);
	else				--song
		PlayerIndex = pidx;
                  for k = 230 , 234 do
                  SetTask(k,0)
                  end
		camp = GetCamp();
		SetCurCamp(camp);
		SetLogoutRV(0);
		SetCreateTeam(1);
		SetDeathScript("");
		SetRevPos(53,19)
		SetFightState(0)		-- 打完仗后改为非战斗状态（by Dan_Deng）
		SetPunish(1)
		NewWorld(44, 886,4499);
	end;
end;


end;
-------------------------------------------------------------------------
-------------战斗取消的话，归还玩家的报名费------------------------------
function GiveBackBonus()
idx = 0;
for i = 1 , 500 do 
	idx, pidx = GetNextPlayer(1, idx, 0);
 	if (idx == 0) then 
		break
	end;
 
 	if (pidx > 0) then
   		PlayerIndex = pidx;
   		Earn(MS_SIGN_MONEY);
 	end;
end;
end
-------------------------------------------------------------------------
function WinBonus(WinGroup, LoserGroup)
resultstr = "";
LCount = GetMissionV(LoserGroup + 4);
WCount = GetMissionV(WinGroup + 4);

TotalMoney = (LCount + WCount) * MS_SIGN_MONEY * 0.9 
Winner = GetMSPlayerCount(1, WinGroup);
if (Winner > 0) then
	Bonus = TotalMoney / Winner;
else 
	Bonus = MS_SIGN_MONEY;
end;

MaxNpc_idx = 0;
MaxPK_idx = 0;
MaxNpc_c = 0;
MaxPK_c = 0;

idx = 0;
for i = 1 , 500 do 
	idx, pidx = GetNextPlayer(1, idx, WinGroup);
 	if (idx == 0) then 
		break
	end;
 
 	if (pidx > 0) then
   		PlayerIndex = pidx;
   		Earn(Bonus + MS_SIGN_MONEY);

AddOwnExp(5000000)  -----------------------------------
   		
   		if (GetTask(SJKILLNPC) > MaxNpc_c) then 
   			MaxNpc_idx = pidx
			MaxNpc_c = GetTask(SJKILLNPC)
   		end;
   		
   		if (GetTask(SJKILLPK) > MaxPK_c) then 
   			MaxPK_idx = pidx;
			MaxPK_c = GetTask(SJKILLPK)
   		end;
 	end;
end;

---------------------------------------------------------------------------------
-----------杀Npc最多的人得到獎勵
if (MaxNpc_idx > 0) then 
	PlayerIndex = MaxNpc_idx ;
  AddEventItem("武林秘籍")
  AddOwnExp(10000000)
  Msg2Player("你获得了一本武林秘籍!");
  Msg2Player("你获得1000W的奖励!");
		str1 = "杀敌Npc最高者为"..GetName()..",数量:"..MaxNpc_c;
end;

-----------PK人数最多的人得到獎勵
if (MaxPK_idx > 0) then
	PlayerIndex = MaxPK_idx ;
  AddEventItem("洗髓经")
  AddOwnExp(10000000)
  Msg2Player("你获得了一本洗髓经!");
  Msg2Player("你获得1000W的奖励!");
	str2 = "PK玩家最高者为"..GetName()..",数量:"..MaxPK_c;
resultstr=str2
end;
----------------------------------------------------------------------------------
 
AddGlobalCountNews(str2 , 2);
AddGlobalCountNews(str1 , 2);

return resultstr;
end;

-------------------------------------------------------------------------
function SJ_JoinJ()
if (GetTask(SJTASKKEY) == GetMissionV(MS_KEY)) then
 if (GetTask(SJTASKVLAUE) == 1) then
 		SayNew("大胆宋国奸细，来人那，把他拿下！",0);
		return 0;
 end
else
    if (GetTeam() ~= nil) then
    SayNew("你在队伍里，请先离开队伍！",0);
    return 0;
    end
    if (GetMSPlayerCount(1,2) - GetMSPlayerCount(1,1) >= 10) then
    SayNew("金方人数太多了，你目前不能再加金方了！目前宋金人数为"..GetMSPlayerCount(1,1)..":"..GetMSPlayerCount(1,2),0);
    return 0;
    end
    if (GetCash() >= MS_SIGN_MONEY) then
       Pay(MS_SIGN_MONEY) 
    else
    SayNew("你的报名费不够啊，需要50万两！",0);
    return 0;
    end


                  for k = 230 , 234 do
                  SetTask(k,0)
                  end
end;

timestate = GetMissionV(MS_STATE);
AddMSPlayer(1,2);
SetCurCamp(2);
if (timestate == 1) then 
SetFightState(0);
elseif (timestate == 2) then 
SetFightState(1);
end
MyExp=GetExp()
SetTask(190,MyExp)
SetLogoutRV(1);
SetPos(1544,3264);
SetPunish(0);
SetRevPos(44,48)
SetTempRevPos(44, 1589*32 ,3872 * 32);
SetCreateTeam(0);
SetTask(SJTASKID, MS_SJTASKID);
SetTask(SJTASKKEY, GetMissionV(MS_KEY));
SetTask(SJTASKVLAUE, 2);
str = GetName().."加入了金方阵营，目前总人数为"..GetMSPlayerCount(1,2);
Msg2MSAll(1,str);

SetDeathScript("\\script\\missions\\宋金战场pk战\\主角死亡1.lua");

--此为玩家交了报名费，正式加入队伍是提示对话

Talk(2, "", "金国的勇士，欢迎你的到来！现在宋军尚未出现，大家先稍事休息。", "请注意，受伤后回到后营请一定要点一下箱子才能继续战斗!");
Msg2Player("请注意，受伤后回到后营请一定要点一下箱子才能继续战斗!")
end;
-------------------------------------------------------------------------

function SJ_JoinS()
if (GetTask(SJTASKKEY) == GetMissionV(MS_KEY)) then
 if (GetTask(SJTASKVLAUE) == 2) then
 		SayNew("来人那，发现金贼奸细，快拿下！",0);
		return 0;
 end
else
    if (GetTeam() ~= nil) then
    SayNew("你在队伍里，请先离开队伍！",0);
    return 0;
    end
    if (GetMSPlayerCount(1,1) - GetMSPlayerCount(1,2) >= 10) then
    SayNew("宋方人数太多了，你目前不能再加宋方了！目前宋金人数为"..GetMSPlayerCount(1,1)..":"..GetMSPlayerCount(1,2),0);
    return 0;
    end
    if (GetCash() >= MS_SIGN_MONEY) then
       Pay(MS_SIGN_MONEY) 
    else
    SayNew("你的报名费不够啊，需要50万两！",0);
    return 0;
    end

                  for k = 230 , 234 do
                  SetTask(k,0)
                  end
end;

timestate = GetMissionV(MS_STATE);
AddMSPlayer(1,1);
SetCurCamp(1);
if (timestate == 1) then 
SetFightState(0);
elseif (timestate == 2) then 
SetFightState(1);
end
MyExp=GetExp()
SetTask(190,MyExp)
str = GetName().."加入了宋方阵营，目前总人数为"..GetMSPlayerCount(1,1);
SetDeathScript("\\script\\missions\\宋金战场pk战\\主角死亡.lua");
SetLogoutRV(1);
SetCreateTeam(0);
SetPunish(0)
SetRevPos(44,47)
SetPos(31168/32, 133472/32);
SetTempRevPos(44, 1515 * 32, 3980 * 32);
Msg2MSAll(1, str);
SetTask(SJTASKID, MS_SJTASKID);
SetTask(SJTASKKEY, GetMissionV(MS_KEY));
SetTask(SJTASKVLAUE, 1);

Talk(2,"","你好，欢迎你加入宋军，现在金兵尚未出现，大家先稍事休息。","请注意，受伤后回到后营请一定要点一下箱子才能继续战斗!");
Msg2Player("请注意，受伤后回到后营请一定要点一下箱子才能继续战斗!")
end;

-------------------------------------------------------------------------
--Group表示对话的主管是哪方的，1为宋，2为金方
--State表示当前战役的状态
function CheckLastBattle(Group, State)

if (Group == 1) then 
	JoinFun = SJ_JoinS;
else
	JoinFun = SJ_JoinJ;
end;

local MKey = GetMissionV(MS_KEY); --当前战役的唯一Key码
local Taskid = GetTask(SJTASKID); --该战役类型的ID
local TaskV = GetTask(SJTASKVLAUE);

if (Taskid == MS_SJTASKID) then 
	local TaskKey = GetTask(SJTASKKEY)
    if (TaskKey == MKey) then 
		if (TaskV == Group) then
			JoinFun();
			if (State == 2) then
				SetFightState(1);
			end;
			Msg2Player("欢迎你再次回到战场!");
		elseif (State == 2) then
			return 2 --表示非当前阵营
		else 
			return 0
		end
		return 1;
	else
--		SayNew("你擅离职守来到了错误的战场！",0);
		return 0;
	end;
end;
return 0;
end;
-------------------------------------------------------------------------
function CheckGoFight()
  V1 = GetMissionV(5);
  V2 = GetMissionV(6);
  if (V1 >= MAX_S_COUNT and V2 >= MAX_J_COUNT) then
  	RunMission(1);
  end;
end;
--------------------------------------------------------------------------
-----将秒传换成分与秒，比如62s = 1m2s
function GetMinAndSec(nSec)
nRestMin = floor(nSec / 60);
nRestSec = mod(nSec,60)
return nRestMin, nRestSec;
end;
---------------------------------------------------------------------------
------------------------检查是否可以让主将出现了--------------------------
function CheckShowKing(Group)

if (Group == 1) then 
	groupvalue1 = MS_S_NPCDEATH; --记录S方Npc死亡数量的参数Id
	groupvalue2 = MS_S_DEATHCOUNT;--记录S方玩家死亡数量的参数Id
else
	groupvalue1 = MS_J_NPCDEATH;
	groupvalue2 = MS_J_DEATHCOUNT;
end;

NpcDCount = GetMissionV(groupvalue1);
PlayerDCount = GetMissionV(groupvalue2);

if (NpcDCount + PlayerDCount < 200) then
	return 0;
	else
	ShowTheKing(Group)
end;

if (Group == 1) then 
	SetMissionV(MS_S_SHOWKING, 1)
else
	SetMissionV(MS_J_SHOWKING, 1)
end;

return 1;

end;

function ShowTheKing(Group)

if (Group == 1) then 
	HideNpc("南宋元帅",1);
	str1 = "情报:目前我方战事吃紧，大将军已亲自到阵前督战，誓于阵地共存亡! 将士们加油击退来犯敌军，立保大将军无碍!";
	str2 ="情报:将士们! 敌方伤亡惨重，敌方大将已经坐不住了! 将士们继续努力，杀死敌方大将!";
	Msg2MSGroup(1,str1, 1);
	Msg2MSGroup(1,str2, 2);
	str3 = "宋金大战战役报告:宋方主将已在宋营中出现!";
	AddGlobalCountNews(str3 , 3);
	return 0
end;

if (Group == 2) then
	HideNpc("金国大将",1);
	str1 = "情报:目前我方战事吃紧，大将军已亲自到阵前督战，誓于阵地共存亡! 将士们加油击退来犯敌军，立保大将军无碍!";
	str2 = "情报:将士们! 敌方伤亡惨重，敌方大将已经坐不住了! 将士们继续努力，杀死敌方大将!";
	Msg2MSGroup(1,str1, 2);
	Msg2MSGroup(1,str2, 1);
	str3 = "宋金大战战役报告:金国主将已在阵营出现，亲自督战!";
	AddGlobalCountNews(str3 , 3);
	return 0
end;

return 1;

end;






















function makenpcsj()
----宋金刷怪开始
havesj = GetGlbMissionV(50)

if (havesj == 0) then
SetGlbMissionV(50,1)
bossmapindex = SubWorldID2Idx(44)

npcidzy=AddNpc(514,120,bossmapindex,1552*32,3248*32) --金，战场，药
snpcidzy=AddNpc(514,120,bossmapindex,976*32,4176*32) --宋，战场，药
npcidhy=AddNpc(514,120,bossmapindex,1588*32,3858*32) --金，后营，药
snpcidhy=AddNpc(514,120,bossmapindex,1504*32,3975*32) --宋，后营，药

npcidmb=AddNpc(515,120,bossmapindex,1583*32,3217*32) --战场入口，金募兵员
snpcidmb=AddNpc(515,120,bossmapindex,880*32,4480*32) --战场入口，宋募兵员

npcidxz_1 = AddNpc(516,120,bossmapindex,31300,133400)  --增加（召唤宋方箱子）
snpcidxz_1 = AddNpc(516,120,bossmapindex,49300,104000)  --增加（召唤金方箱子）

npcidxz=AddNpc(516,120,bossmapindex,1588*32,3868*32) --金，后营，箱子
snpcidxz=AddNpc(516,120,bossmapindex,1504*32,3968*32) --宋，后营，箱子

npcidzj=AddNpc(50,95,bossmapindex,1432*32,3392*32) --金，主将
snpcidzj=AddNpc(48,95,bossmapindex,1064*32,4128*32) --宋，主将

jing=AddNpc(455,95,bossmapindex,1584*32,3200*32) --金，白胡子老头
song=AddNpc(455,95,bossmapindex,880*32,4488*32) --宋，白胡子老头

SetNpcScript(npcidzy, "\\script\\missions\\宋金战场pk战\\junyi.lua");
SetNpcScript(snpcidzy, "\\script\\missions\\宋金战场pk战\\junyi.lua");
SetNpcScript(npcidhy, "\\script\\missions\\宋金战场pk战\\junyi.lua");
SetNpcScript(snpcidhy, "\\script\\missions\\宋金战场pk战\\junyi.lua");

SetNpcScript(npcidmb, "\\script\\missions\\宋金战场pk战\\jmubing.lua");
SetNpcScript(snpcidmb, "\\script\\missions\\宋金战场pk战\\smubing.lua");

SetNpcScript(npcidxz, "\\script\\missions\\宋金战场pk战\\xiangzi.lua");
SetNpcScript(snpcidxz, "\\script\\missions\\宋金战场pk战\\xiangzi.lua");
SetNpcScript(npcidxz_1, "\\script\\missions\\宋金战场pk战\\xiangzi.lua");
SetNpcScript(snpcidxz_1, "\\script\\missions\\宋金战场pk战\\xiangzi.lua");

SetNpcScript(npcidzj, "\\script\\missions\\宋金战场pk战\\金主将死亡.lua");
SetNpcScript(snpcidzj, "\\script\\missions\\宋金战场pk战\\宋主将死亡.lua");

SetNpcScript(jing, "\\script\\missions\\宋金战场pk战\\jing.lua");
SetNpcScript(song, "\\script\\missions\\宋金战场pk战\\song.lua");

local spos={};
	spos={
		{131,262},
		{131,260},
		{131,258},
		{132,257},
		{130,256},
		{135,257},
		{140,256},
		{144,254},
		{144,248},
		{152,245},
		{155,241},
		{161,237},
		{155,235},
		{151,232},
		{149,239},
		{158,243},
		{155,246},
		{146,251},
		{135,260},
		{127,262},
		{148,255},
		{151,257},
		{155,258},
		{160,260},
		{164,261},
		{168,259},
		{172,258},
		{173,254},
		{176,252},
		{180,254},
		{181,251},
		{162,238},
		{166,238},
		{168,235},
		{172,237},
		{173,236}
	}
 for r=1,36 do
  for i=0,5 do
sbingid=AddNpc(random(449,451),120,bossmapindex,(spos[r][1]*8+i*6)*32,(spos[r][2]*16+random(-10,10))*32) 
SetNpcScript(sbingid, "\\script\\missions\\宋金战场pk战\\sbing.lua");
  end
 end


local jpos={};
jpos={
		{190,211},
		{193,215},
		{196,218},
		{194,221},
		{192,224},
		{197,226},
		{200,229},
		{203,231},
		{202,233},
		{200,235},
		{203,237},
		{194,233},
		{190,234},
		{184,235},
		{177,234},
		{172,232},
		{167,230},
		{168,224},
		{173,227},
		{177,228},
		{182,229},
                {189,228},
		{188,202},
		{190,203},
		{193,205},
		{190,207},
		{186,205},
		{179,205},
		{179,208},
		{183,211},
		{175,211},
		{179,214},
		{176,215},
		{172,214},
		{171,217},
		{170,218},
		{167,219},
		{163,220},
		{160,221},
		{158,222},
		{157,224},
                {158,226},
		{158,228},
		{155,229},
		{156,230},
                {160,230},
		{165,230}
	}
 for p=1,47 do
  for q=0,5 do
jbingid=AddNpc(random(452,454),120,bossmapindex,(jpos[p][1]*8+q*6)*32,(jpos[p][2]*16+random(-10,10))*32) 
SetNpcScript(jbingid, "\\script\\missions\\宋金战场pk战\\jbing.lua");
  end
 end



end;
----宋金刷怪结束
end;




