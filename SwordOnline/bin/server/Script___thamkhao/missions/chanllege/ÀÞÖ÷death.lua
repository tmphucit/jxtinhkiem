Include("\\script\\missions\\chanllege\\ͷ�ļ�.lua");

function OnDeath(Launcher)

PlayerIndex1 = NpcIdx2PIdx(Launcher);	--��ս��
OrgPlayer  = PlayerIndex;	--������
DeathName = GetName();	--������
--��ս������
if (PlayerIndex1 > 0) then
	PlayerIndex = PlayerIndex1;
	LaunName = GetName();
	widx=PlayerIndex
	SetGlbMissionV(WIDX,widx)
	SetCurCamp(1)
	SetDeathScript("\\script\\missions\\chanllege\\����death.lua");
	RestoreMana();
	RestoreLife();
	RestoreStamina();

	SetFightState(0);
	Msg2Player("��ϲ!���Ӯ���ⳡ��̨!Ҫ���Ͱ�!�ö��˶��ڿ�����!")
	GamePause()
	PlayerIndex = OrgPlayer;
end;
--����������
SetGlbMissionV(DEATH,1)
SetTask(BWIF,0)	
SetDeathScript("");
Msg2Player("�㱻�����!��ȥ�ú�����������!")

--��Ϣ����
str  = "��ս��<color=Green>"..LaunName.."<color>սʤ������!!!";
SetGlbMissionV(WIN,2)
AddGlobalCountNews(str,1);
GamePause()
end;	