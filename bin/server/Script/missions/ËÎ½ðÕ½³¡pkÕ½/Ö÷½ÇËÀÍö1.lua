--����������ű�
Include("\\script\\missions\\�ν�ս��pkս\\zhujiao.lua")
Include("�ν�ս��ͷ�ļ�.lua");

function OnDeath(Launcher)
--LauncherΪıɱ��.

State = GetMissionV(1) ;
if (State ~= 2) then
return
end;

OldExp=GetTask(190)
NowExp=GetExp()
BuExp=OldExp-NowExp

AddOwnExp(BuExp)


PlayerIndex1 = NpcIdx2PIdx(Launcher);
OrgPlayer  = PlayerIndex;
DeathName = GetName();

if (PlayerIndex1 > 0) then
	PlayerIndex = PlayerIndex1;
	LaunName = GetName();
	pkcount = GetTask(SJKILLPK) + 1;
	SetTask(SJKILLPK, pkcount);
	str  = "�ξ�"..LaunName.."�����˽��"..DeathName..", PK������Ϊ"..pkcount;
	Msg2MSAll(1,str);

        OnDeath3(Launcher)

	PlayerIndex = OrgPlayer;
end;

V = GetMissionV(MS_J_DEATHCOUNT) + 1;
SetMissionV(MS_J_DEATHCOUNT, V);


dataindex = PIdx2MSDIdx(1,PlayerIndex1);
Pan = GetPMParam(1, dataindex, 1);
SetPMParam(1, dataindex, 1, Pan + 1);


if (V == MS_PKCOUNT) then
	CheckShowKing(2);
end;

end;




