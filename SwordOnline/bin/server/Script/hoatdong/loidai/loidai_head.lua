CS_RevId = 80;
CS_RevData = 36;

--�᳡���λַ
BW_COMPETEMAP = {209, 210, 211};

--����˫����Ӫʱ��λַ
CS_CampPos = {	{209, 1620, 3218},	--��ɫ
				{209, 1644, 3194}, 	--��ɫ
				{209, 1605, 3216}   --��ս�ߵ�λַ��ɫ
			 }; 
CS_CamperPos = {
				{1599, 3202, "����"},
				{1608, 3211, "����"},
}
FRAME2TIME = 18;
--��Ϸ���������
MAX_MEMBER_COUNT = 100;
--�洢��ҵ�λַ������丿
BW_SIGNPOSWORLD = 511;
BW_SIGNPOSX = 512;
BW_SIGNPOSY = 513;
MS_STATE = 1;
MS_MAXMEMBERCOUNT = 2;
CITYID = 6; --����ID
BW_KEY = 7; -- 0-100000000�������
MS_NEWSVALUE = 9; --�����д��Т�ű丿�ĵط�
MS_TEAMKEY = {10, 11};

MSS_CAPTAIN = {1, 2};
BW_SMALLTIME_ID = 10; --��ʱ������
BW_TOTALTIME_ID = 11;
TIMER_1 = 20 * FRAME2TIME; -- 20�빫��һϢս��
TIMER_2 = 12 * 3 * TIMER_1 ; --��ս��ʱ��Ϊ10+2����

GO_TIME = 5;
BW_MISSIONID = 4;

function LeaveGame()
	camp = GetCamp();
	SetCurCamp(GetCamp());
	SetFightState(0);
	SetLogoutRV(0);
	SetPunish(0)
	SetPKState(0)
	BlockPKState(0)
	SetCreateTeam(1);
	SetRevPos(78,29)
	SetDeathScript("");
end;
