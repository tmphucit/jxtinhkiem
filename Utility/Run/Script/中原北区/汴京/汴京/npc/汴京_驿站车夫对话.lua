--��ԭ���� �꾩�� ��վ����Ի�

CurStation = 4;
Include("\\Script\\Global\\station.lua");

function main(sel)
	Say("����Ҫ����ȥ���", 4, "�ϴξ����ĵص�/WayPointFun", "·���ĳ���/StationFun", "���صĵص�/TownPortalFun", "������/OnCancel");
end;

function  OnCancel()
   Say("����ûǮ���ֻ����·�ˡ�",0)
end;