--������ ������ ��վ����Ի�

CurStation = 10;
Include("\\Script\\Global\\station.lua");

function main(sel)

if (GetLevel() >= 10) then			--�ȼ��ﵽʮ��
	Say("����������Ȼ�Ǻ���������½·����Ҳ�ܷ��㣬��Ҫ����ȥ���", 4, "·���ĵط�/WayPointFun", "·���ĳ���/StationFun","���صĵص�/TownPortalFun", "������/OnCancel");
else		
	Say("���򣺶Բ���û��ʮ�������ֲ����������塣", 0)
end

end;

function  OnCancel()
   Say("��������Ǯ���������ɡ�",0)
end;