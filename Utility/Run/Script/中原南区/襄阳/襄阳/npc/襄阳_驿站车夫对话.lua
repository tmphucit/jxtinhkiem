--��ԭ���� ������ ��վ����Ի�

CurStation = 5;
Include("\\Script\\Global\\station.lua");

function main(sel)
	Say("��������Ҫȥ������ҵĳ��ɣ������ֿ���ֱ��ˡ�", 4, "�����ĵص�/WayPointFun", "·���ĳ���/StationFun", "���صĵص�/TownPortalFun", "������/OnCancel");
end;

function  OnCancel()
   Say("����ûǮ���ֻ����·�ˡ�",0)
end;