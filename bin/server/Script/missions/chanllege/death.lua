Include("\\script\\missions\\chanllege\\ͷ�ļ�.lua");

function OnDeath(Launcher)

PlayerIndex1 = NpcIdx2PIdx(Launcher);	--ʤ����
OrgPlayer  = PlayerIndex;	--ʧ�ܷ�
DeathName = GetName();	--ʧ�ܷ�
--ʤ��������
if (PlayerIndex1 > 0) then
	PlayerIndex = PlayerIndex1;
	LaunName = GetName();
	widx=PlayerIndex
	SetGlbMissionV(WIDX,widx)
	SetCurCamp(1)
	SetDeathScript("\\script\\missions\\chanllege\\death.lua");
	Msg2Player("��ϲ!���Ӯ���ⳡ��̨!Ҫ���Ͱ�!�ö��˶��ڿ�����!")
	PlayerIndex = OrgPlayer;
end;
--ʧ�ܷ�����
SetTask(BWIF,0)
RestoreCamp()	
SetDeathScript("");
Msg2Player("�㱻�����!��ȥ�ú�����������!")

--��Ϣ����
if (PlayerIndex==GetGlbMissionV(HN)) then
str  = "���޷�<color=Green>"..LaunName.."<color>սʤ������!!!";
SetGlbMissionV(WIN,2)
else
str  = "����<color=Green>"..LaunName.."<color>սʤ�˹��޷�!!!";
SetGlbMissionV(WIN,1)
end
AddGlobalNews(str,1);
GamePause()
end;	
