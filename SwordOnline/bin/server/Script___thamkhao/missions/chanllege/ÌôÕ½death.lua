Include("\\script\\missions\\chanllege\\ͷ�ļ�.lua");

function OnDeath(Launcher)

PlayerIndex1 = NpcIdx2PIdx(Launcher);	--������
OrgPlayer  = PlayerIndex;	--��ս��
DeathName = GetName();	--��ս��
--����������
if (PlayerIndex1 > 0) then
	PlayerIndex = PlayerIndex1;
	LaunName = GetName();
	widx=PlayerIndex
	SetGlbMissionV(WIDX,widx)
	RestoreMana();
	RestoreLife();
	RestoreStamina();
	SetFightState(0);

	Msg2Player("��ϲ!���Ӯ���ⳡ��̨!Ҫ���Ͱ�!�ö��˶��ڿ�����!")
	GamePause()
	PlayerIndex = OrgPlayer;
end;
--��ս������
SetGlbMissionV(DEATH,1)
SetTask(BWIF,0)	
SetDeathScript("");
Msg2Player("������!��ȥ�ú�����������!")

--��Ϣ����
str  = "����<color=Green>"..LaunName.."<color>սʤ����ս��!!!";
SetGlbMissionV(WIN,1)
AddGlobalCountNews(str,1);
GamePause()
end;	