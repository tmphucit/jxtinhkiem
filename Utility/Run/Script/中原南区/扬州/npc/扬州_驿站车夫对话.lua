--��ԭ���� ���ݸ� ��վ����Ի�

CurStation = 6;
Include("\\Script\\Global\\station.lua");

function main(sel)
	Say("����һ����������������֪ʲôʱ���ܹ������������ĳ���Ҫ�ó���", 4, "�����ĵص�/WayPointFun", "·���ĳ���/StationFun", "���صĵص�/TownPortalFun", "������/OnCancel");
end;

function  OnCancel()
   Say("����ûǮ���ֻ����·�ˡ�",0)
end;