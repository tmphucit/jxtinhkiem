FRAME2TIME = 18;	--18֡��Ϸʱ���൱��1����
PKID=1;		--���̼�ʱ��id
TRANID=2;	--���ͼ�ʱ��id
TIMEID=3;	--��Ϣ��ʱ��id 

--Glb����
BWID = 41;	--�Ƿ��ʼ��
BWRS=42;	--��¼��������
BWNUM=43;	--��¼���䳡��
BWSTATE=44;	--��¼��̨״̬
WIN = 45;	--��¼ʤ��
WIDX = 46;	--��¼ʤ��PlayerIndex
DEATH = 47;	--��������

--��������
GAMBLE = 48;	--��¼��עֵ
GAMSTATE = 49;	--��¼��ע���
BWIF = 50;	--��¼�������
PK = 51;	--��¼ԭ����pkֵ

TIMER_1 = 20 * FRAME2TIME; --20�빫��һ��ս��
TIMER_2 = 5 * 60  * FRAME2TIME; --��սʱ��Ϊ5����
TIMER_3 = 20 * FRAME2TIME; --�г���Ϣʱ��Ϊ1����
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
		SetDeathScript("\\script\\missions\\chanllege\\����death.lua");
		SetGlbMissionV(BWRS,1)
		SetFightState(0);
		NewWorld(209, 202*8, 198*16);
	str ="<color=pink>"..GetName().."<color>������<color=Red>��̨����<color>!";
		AddGlobalCountNews(str,1);
    elseif (rs==1) then
		SetTask(BWIF,1)
		SetPunish(1)
		SetTask(PK,GetPK())
		SetPK(0)
		SetCreateTeam(0);
		SetCurCamp(2)
		SetDeathScript("\\script\\missions\\chanllege\\��սdeath.lua");
		SetGlbMissionV(BWRS,2)
		SetFightState(0);
		NewWorld(209, 207*8, 202*16);
	str1 ="<color=pink>"..GetName().."<color>ǰ����ս!";
		AddGlobalCountNews(str1,1);
	SetTimer(TIMER_1,TRANID)
    else
	Msg2Player("Ŀǰ����̨һ��ֻ�������˱���!");
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
AddGlobalCountNews("��һ�ֵ���̨��ս���Ѿ�����!",2);
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
AddGlobalCountNews("��̨��ս����ʼ!",2);
end;