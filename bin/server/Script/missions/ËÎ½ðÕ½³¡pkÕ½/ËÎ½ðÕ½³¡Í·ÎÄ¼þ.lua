

FRAME2TIME = 18;	--18֡��Ϸʱ���൱��1����
MAX_S_COUNT = 100;
MAX_J_COUNT = 100;
TIMER_1 = 20 * FRAME2TIME; --20�빫��һ��ս��
TIMER_2 = 30 * 60  * FRAME2TIME; -- 60����

MS_STATE = 1; --�����м�¼����״̬�ı���ID
--�ñ���ָ���״ֵ̬0��ʾս��Ϊ�򿪣�1��ʾս�۱����У�2��ʾս��ս�������У�3��ʾս�۸ոս�����

MS_SJTASKID = 20;
MS_J_DEATHCOUNT = 3; --�����м�¼��������������ı���ID
MS_S_DEATHCOUNT = 4; --�����м�¼��������������ı���ID

MS_S_SIGHCOUNT  = 5;--�������η�������������
MS_J_SIGHCOUNT  = 6;--�����н𷽹�����������
MS_KEY = 7;		--��¼��ǰ��ͼ�������һ��key����һ��������ɵ�����

MS_S_NPCDEATH = 8; -- �����м�¼��ս��Npc�������������������ID
MS_J_NPCDEATH = 9; -- �����м�¼��ս��Npc�������������������ID

MS_NEWSVALUE = 10; --�����д�����ű����ĵط�

MS_S_SHOWKING = 11; --0 means uncondition, 1 means condition but time no come ,2 mean all condition is ok ,and have showed.
MS_J_SHOWKING = 12;
MS_FIRSTSHOW = 13; --1 means Song , 2 means Jing


SJTASKID = 230; 	--��¼��ҵ�ǰ����ID
SJTASKVLAUE = 231; 	--��¼��ҵ�ǰ�����ֵ,��¼������,��Ϊ1����Ϊ2
SJTASKKEY = 232; 	--��¼��ҵ�ǰ�����key��
SJKILLNPC = 233; 	--��¼���ɱNpc����
SJKILLPK = 234; 	--��¼���PK�������

MS_SHOWKINGCOUNT = 200; --ĳ��Npc��������������������������ֵʱ�����������ܳ���
MS_PKCOUNT	= 50;--ĳ�������������,������������ֵ�����������ܳ���


GO_TIME =  300* FRAME2TIME  / TIMER_1; -- ����ʱ��Ϊ10����
SHOWKINGTIME1 = 3600 * FRAME2TIME / TIMER_1 ;
SHOWKINGTIME2 = 4200 * FRAME2TIME / TIMER_1;

MS_SIGN_MONEY = 500000; --������

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

		SetFightState(0)		-- �����̺��Ϊ��ս��״̬��by Dan_Deng��
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
		SetFightState(0)		-- �����̺��Ϊ��ս��״̬��by Dan_Deng��
		SetPunish(1)
		NewWorld(44, 886,4499);
	end;
end;


end;
-------------------------------------------------------------------------
-------------ս��ȡ���Ļ����黹��ҵı�����------------------------------
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
-----------ɱNpc�����˵õ�����
if (MaxNpc_idx > 0) then 
	PlayerIndex = MaxNpc_idx ;
  AddEventItem("�����ؼ�")
  AddOwnExp(10000000)
  Msg2Player("������һ�������ؼ�!");
  Msg2Player("����1000W�Ľ���!");
		str1 = "ɱ��Npc�����Ϊ"..GetName()..",����:"..MaxNpc_c;
end;

-----------PK���������˵õ�����
if (MaxPK_idx > 0) then
	PlayerIndex = MaxPK_idx ;
  AddEventItem("ϴ�辭")
  AddOwnExp(10000000)
  Msg2Player("������һ��ϴ�辭!");
  Msg2Player("����1000W�Ľ���!");
	str2 = "PK��������Ϊ"..GetName()..",����:"..MaxPK_c;
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
 		Say("���ι���ϸ�������ǣ��������£�",0);
		return 0;
 end
else
    if (GetTeam() ~= nil) then
    Say("���ڶ���������뿪���飡",0);
    return 0;
    end
    if (GetMSPlayerCount(1,2) - GetMSPlayerCount(1,1) >= 10) then
    Say("������̫���ˣ���Ŀǰ�����ټӽ��ˣ�Ŀǰ�ν�����Ϊ"..GetMSPlayerCount(1,1)..":"..GetMSPlayerCount(1,2),0);
    return 0;
    end
    if (GetCash() >= MS_SIGN_MONEY) then
       Pay(MS_SIGN_MONEY) 
    else
    Say("��ı����Ѳ���������Ҫ50������",0);
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
str = GetName().."�����˽���Ӫ��Ŀǰ������Ϊ"..GetMSPlayerCount(1,2);
Msg2MSAll(1,str);

SetDeathScript("\\script\\missions\\�ν�ս��pkս\\��������1.lua");

--��Ϊ��ҽ��˱����ѣ���ʽ�����������ʾ�Ի�

Talk(2, "", "�������ʿ����ӭ��ĵ����������ξ���δ���֣������������Ϣ��", "��ע�⣬���˺�ص���Ӫ��һ��Ҫ��һ�����Ӳ��ܼ���ս��!");
Msg2Player("��ע�⣬���˺�ص���Ӫ��һ��Ҫ��һ�����Ӳ��ܼ���ս��!")
end;
-------------------------------------------------------------------------

function SJ_JoinS()
if (GetTask(SJTASKKEY) == GetMissionV(MS_KEY)) then
 if (GetTask(SJTASKVLAUE) == 2) then
 		Say("�����ǣ����ֽ�����ϸ�������£�",0);
		return 0;
 end
else
    if (GetTeam() ~= nil) then
    Say("���ڶ���������뿪���飡",0);
    return 0;
    end
    if (GetMSPlayerCount(1,1) - GetMSPlayerCount(1,2) >= 10) then
    Say("�η�����̫���ˣ���Ŀǰ�����ټ��η��ˣ�Ŀǰ�ν�����Ϊ"..GetMSPlayerCount(1,1)..":"..GetMSPlayerCount(1,2),0);
    return 0;
    end
    if (GetCash() >= MS_SIGN_MONEY) then
       Pay(MS_SIGN_MONEY) 
    else
    Say("��ı����Ѳ���������Ҫ50������",0);
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
str = GetName().."�������η���Ӫ��Ŀǰ������Ϊ"..GetMSPlayerCount(1,1);
SetDeathScript("\\script\\missions\\�ν�ս��pkս\\��������.lua");
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

Talk(2,"","��ã���ӭ������ξ������ڽ����δ���֣������������Ϣ��","��ע�⣬���˺�ص���Ӫ��һ��Ҫ��һ�����Ӳ��ܼ���ս��!");
Msg2Player("��ע�⣬���˺�ص���Ӫ��һ��Ҫ��һ�����Ӳ��ܼ���ս��!")
end;

-------------------------------------------------------------------------
--Group��ʾ�Ի����������ķ��ģ�1Ϊ�Σ�2Ϊ��
--State��ʾ��ǰս�۵�״̬
function CheckLastBattle(Group, State)

if (Group == 1) then 
	JoinFun = SJ_JoinS;
else
	JoinFun = SJ_JoinJ;
end;

local MKey = GetMissionV(MS_KEY); --��ǰս�۵�ΨһKey��
local Taskid = GetTask(SJTASKID); --��ս�����͵�ID
local TaskV = GetTask(SJTASKVLAUE);

if (Taskid == MS_SJTASKID) then 
	local TaskKey = GetTask(SJTASKKEY)
    if (TaskKey == MKey) then 
		if (TaskV == Group) then
			JoinFun();
			if (State == 2) then
				SetFightState(1);
			end;
			Msg2Player("��ӭ���ٴλص�ս��!");
		elseif (State == 2) then
			return 2 --��ʾ�ǵ�ǰ��Ӫ
		else 
			return 0
		end
		return 1;
	else
--		Say("������ְ�������˴����ս����",0);
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
-----���봫���ɷ����룬����62s = 1m2s
function GetMinAndSec(nSec)
nRestMin = floor(nSec / 60);
nRestSec = mod(nSec,60)
return nRestMin, nRestSec;
end;
---------------------------------------------------------------------------
------------------------����Ƿ����������������--------------------------
function CheckShowKing(Group)

if (Group == 1) then 
	groupvalue1 = MS_S_NPCDEATH; --��¼S��Npc���������Ĳ���Id
	groupvalue2 = MS_S_DEATHCOUNT;--��¼S��������������Ĳ���Id
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
	HideNpc("����Ԫ˧",1);
	str1 = "�鱨:Ŀǰ�ҷ�ս�³Խ����󽫾������Ե���ǰ��ս��������ع�����! ��ʿ�Ǽ��ͻ��������о��������󽫾��ް�!";
	str2 ="�鱨:��ʿ��! �з��������أ��з����Ѿ�����ס��! ��ʿ�Ǽ���Ŭ����ɱ���з���!";
	Msg2MSGroup(1,str1, 1);
	Msg2MSGroup(1,str2, 2);
	str3 = "�ν��սս�۱���:�η�����������Ӫ�г���!";
	AddGlobalCountNews(str3 , 3);
	return 0
end;

if (Group == 2) then
	HideNpc("�����",1);
	str1 = "�鱨:Ŀǰ�ҷ�ս�³Խ����󽫾������Ե���ǰ��ս��������ع�����! ��ʿ�Ǽ��ͻ��������о��������󽫾��ް�!";
	str2 = "�鱨:��ʿ��! �з��������أ��з����Ѿ�����ס��! ��ʿ�Ǽ���Ŭ����ɱ���з���!";
	Msg2MSGroup(1,str1, 2);
	Msg2MSGroup(1,str2, 1);
	str3 = "�ν��սս�۱���:�������������Ӫ���֣����Զ�ս!";
	AddGlobalCountNews(str3 , 3);
	return 0
end;

return 1;

end;






















function makenpcsj()
----�ν�ˢ�ֿ�ʼ
havesj = GetGlbMissionV(50)

if (havesj == 0) then
SetGlbMissionV(50,1)
bossmapindex = SubWorldID2Idx(44)

npcidzy=AddNpc(514,120,bossmapindex,1552*32,3248*32) --��ս����ҩ
snpcidzy=AddNpc(514,120,bossmapindex,976*32,4176*32) --�Σ�ս����ҩ
npcidhy=AddNpc(514,120,bossmapindex,1588*32,3858*32) --�𣬺�Ӫ��ҩ
snpcidhy=AddNpc(514,120,bossmapindex,1504*32,3975*32) --�Σ���Ӫ��ҩ

npcidmb=AddNpc(515,120,bossmapindex,1583*32,3217*32) --ս����ڣ���ļ��Ա
snpcidmb=AddNpc(515,120,bossmapindex,880*32,4480*32) --ս����ڣ���ļ��Ա

npcidxz_1 = AddNpc(516,120,bossmapindex,31300,133400)  --���ӣ��ٻ��η����ӣ�
snpcidxz_1 = AddNpc(516,120,bossmapindex,49300,104000)  --���ӣ��ٻ������ӣ�

npcidxz=AddNpc(516,120,bossmapindex,1588*32,3868*32) --�𣬺�Ӫ������
snpcidxz=AddNpc(516,120,bossmapindex,1504*32,3968*32) --�Σ���Ӫ������

npcidzj=AddNpc(50,95,bossmapindex,1432*32,3392*32) --������
snpcidzj=AddNpc(48,95,bossmapindex,1064*32,4128*32) --�Σ�����

jing=AddNpc(455,95,bossmapindex,1584*32,3200*32) --�𣬰׺�����ͷ
song=AddNpc(455,95,bossmapindex,880*32,4488*32) --�Σ��׺�����ͷ

SetNpcScript(npcidzy, "\\script\\missions\\�ν�ս��pkս\\junyi.lua");
SetNpcScript(snpcidzy, "\\script\\missions\\�ν�ս��pkս\\junyi.lua");
SetNpcScript(npcidhy, "\\script\\missions\\�ν�ս��pkս\\junyi.lua");
SetNpcScript(snpcidhy, "\\script\\missions\\�ν�ս��pkս\\junyi.lua");

SetNpcScript(npcidmb, "\\script\\missions\\�ν�ս��pkս\\jmubing.lua");
SetNpcScript(snpcidmb, "\\script\\missions\\�ν�ս��pkս\\smubing.lua");

SetNpcScript(npcidxz, "\\script\\missions\\�ν�ս��pkս\\xiangzi.lua");
SetNpcScript(snpcidxz, "\\script\\missions\\�ν�ս��pkս\\xiangzi.lua");
SetNpcScript(npcidxz_1, "\\script\\missions\\�ν�ս��pkս\\xiangzi.lua");
SetNpcScript(snpcidxz_1, "\\script\\missions\\�ν�ս��pkս\\xiangzi.lua");

SetNpcScript(npcidzj, "\\script\\missions\\�ν�ս��pkս\\����������.lua");
SetNpcScript(snpcidzj, "\\script\\missions\\�ν�ս��pkս\\����������.lua");

SetNpcScript(jing, "\\script\\missions\\�ν�ս��pkս\\jing.lua");
SetNpcScript(song, "\\script\\missions\\�ν�ս��pkս\\song.lua");

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
SetNpcScript(sbingid, "\\script\\missions\\�ν�ս��pkս\\sbing.lua");
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
SetNpcScript(jbingid, "\\script\\missions\\�ν�ս��pkս\\jbing.lua");
  end
 end



end;
----�ν�ˢ�ֽ���
end;




