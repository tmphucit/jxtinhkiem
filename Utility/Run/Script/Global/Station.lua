function WayPointFun()
p1 = GetWayPoint(1);
p2 = GetWayPoint(2);
p3 = GetWayPoint(3);
HaveBin={};
i = 1;
if (p1 ~= 0)  then
name = GetWayPointName(p1);
name = name .."/SelWayPoint";
HaveBin[i]= name;
i = i + 1;
end;

if (p2 ~= 0)  then
name = GetWayPointName(p2);
name = name .."/SelWayPoint";
HaveBin[i]= name;
i = i + 1;
end;

if (p3 ~= 0)  then
name = GetWayPointName(p3);
name = name .."/SelWayPoint";
HaveBin[i]= name;
i = i + 1;
end;

HaveBin[i] = "���ﶼ����ȥ��/OnCancel";
if (i == 1) then 
Say("�Բ�����ֻ�ܰ����͵�������ȥ���ĵط�����������Ķ�����ûȥ���أ�",0);
else
Say("��ѡ��", i, HaveBin);
end;

end;

function WharfFun()
Count = GetWharfCount(CurWharf);
Num = Count;

WharfB = {};
nValidCount = 1;

for i = 1, Num do
WharfId = GetWharf(CurWharf, i);
if (WharfId ~= 0) then
	nPrice = GetWharfPrice(CurWharf, WharfId);
	WharfB[nValidCount] = GetWharfName(WharfId) .. "[" .. nPrice .. "��]" .. "/SelWharf";
	nValidCount = nValidCount + 1;
end;
end;

WharfB[nValidCount] = "����/OnCancel";

if (nValidCount == 1) then 
Say("�Բ�����������Ķ���ûȥ�أ�", 0);
else
Say("��������ȥʲô�ط�ѽ��", nValidCount, WharfB);
end;

end;

function SelWharf(nSel)

nWharfId = GetWharf( CurWharf, nSel + 1);
nPrice = 0;
if (nWharfId ~= 0) then 
	nPrice = GetWharfPrice(CurWharf, nWharfId);
else
	return
end;

if (Pay(nPrice) == 1) then
Msg2Player("�����ˣ������߆���"..GetWharfName(nWharfId))
nW , nX, nY = GetWharfPos(nWharfId);
nResult = NewWorld(nW, nX , nY );
if (nResult == 2) then
Msg2Player("������ת����...")
end
if (nResult == 0) then
Msg2Player("������д���")
end
else
Say("������˼��ûǮ�������˳�", 0);
end;
end;


function StationFun()
Count = GetStationCount();
Num = Count;

if (Count > 6) then Num = 6;end;
StationB = {};
nValidCount = 1;

for i = 1, Num do
StationId = GetStation(i, CurStation);
if (StationId ~= 0) then
	nPrice = GetPrice2Station(CurStation, StationId);
	StationB[nValidCount] = GetStationName(StationId) .. "[" .. nPrice .. "��]" .. "/SelStation";
	nValidCount = nValidCount + 1;
end;
end;

StationB[nValidCount] = "���ﶼ����ȥ��/OnCancel";

if (nValidCount == 1) then 
Say("�Բ�����ֻ�ܰ����͵�������ȥ���ĵط�����������Ķ�����ûȥ���أ�", 0);
else
Say("��ѡ����ȥ�ĵط���", nValidCount, StationB);
end;
end;

function SelStation(nSel)
Count = GetStationCount();
nStation = GetStation(nSel + 1, CurStation);
nPrice = GetPrice2Station(CurStation, nStation);
if (Pay(nPrice) == 1) then

nW , nX, nY = GetStationPos(nStation);
nResult = NewWorld(nW, nX , nY );
Msg2Player("�����ˣ������߆���"..GetStationName(nStation))
if (nResult == 2) then
--Msg2Player("������ת����...")
end
if (nResult == 0) then
Msg2Player("������д���")
end
else
Say("������˼��ûǮ�������˳�����������ȥ�ɣ�", 0);
end;
end;

function TownPortalFun()
ReturnFromPortal();
end;

function SelWayPoint(nSel)
nWayPoint = GetWayPoint(nSel + 1);
if (nWayPoint ~= 0) then
nW, nX, nY = GetWayPointPos(nWayPoint)
nFightState = GetTerminiFState(nWayPoint)
SetFightState(nFightState)
nResult = NewWorld(nW, nX, nY)
--Msg2Player("Goto"..GetWayPointName(nWayPoint)..nW..nX..nY);
if (nResult == 2) then
--Msg2Player("������ת����...")
end
if (nResult == 0) then
--Msg2Player("������д���.")
end
end;
end;


function Cancel()
end;