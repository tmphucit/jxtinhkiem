--���ϱ��� ����� ��վ����Ի�

CurStation = 8;
Include("\\Script\\Global\\station.lua");

function main(sel)

if (GetLevel() >= 10) then			--�ȼ��ﵽʮ��
	Say("����Ҫ����ȥ�Ķ���", 4, "�����ĵص�/WayPointFun", "·���ĳ���/StationFun", "���صĵص�/TownPortalFun", "������/OnCancel");
else		
	Say("���򣺶Բ���û��ʮ�������ֲ����������塣", 0)
end

end;

function  OnCancel()
   Say("����û��Ǯ��ɶ�ӳ���",0)
end;