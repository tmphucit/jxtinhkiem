--�η���������ű�
Include("�ν�ս��ͷ�ļ�.lua");

function OnDeath(Launcher)

OldCash=GetTaskTemp(189)
OldExp=GetTaskTemp(190)
NowCash=GetCash()
NowExp=GetExp()
BuCash=OldCash-NowCash
BuExp=OldExp-NowExp

if (OldExp ~= 0) then
AddOwnExp(BuExp)
end

PlayerIndex1 = NpcIdx2PIdx(Launcher);
OrgPlayer  = PlayerIndex;
DeathName = GetName();


	PlayerIndex = PlayerIndex1;
	LaunName = GetName();
	pkcount = GetTask(SJKILLPK) + 1;
	SetTask(SJKILLPK, pkcount);
	str  = "���"..LaunName.."�������ξ�"..DeathName.."��PK������Ϊ"..pkcount;
	Msg2Player(str);
	PlayerIndex = OrgPlayer;

end;
