--������ ������ ��վ����Ի�  ��������

CurStation = 11;
Include("\\Script\\Global\\station.lua");

function main(sel)

	UTask_world03 = GetTask(15);

	if (UTask_world03 == 0) then	
		Say("���򣺰������ڵ�����Խ��Խ�����ˣ�ԭ�����в��ٸ��̴�үȥ��ũ���Ƕ����棬���������֪���Ķ��ܳ�һȺ��Ҷ���·��ٿ��ˣ�������������Ӱ�죬��������ܸ�����Щ��Ҷ��ͺ��ˣ�ÿ����ʮֻ���Ϳ��������������ʹ��һ�γ�����Ҫ������", 2, "��æ/yes", "����æ/no")
		SetTask(15, 1)
	else
		Say("�������ǳ���������������Ե������෹�������İ��һ�°ɣ�", 4, "�����ĵص�/WayPointFun", "·���ĳ���/StationFun", "�����ĵص�/TownPortalFun", "������/OnCancel");
	end

end;

function yes()
	Task0013 = GetTaskTemp(13);
	if (Task0013 < 10) then			--û��ɱ��ʮֻ��Ҷ��
		Say("�������ǳ���������������Ե������෹�������İ��һ�°ɣ�", 4, "�����ĵص�/WayPointFun", "·���ĳ���/StationFun", "�����ĵص�/TownPortalFun", "������/OnCancel");
	else
		SetTaskTemp(13, 0)
		Say("���򣺶�л����Ҹ����˺�Ҷ�Ҫȥ������������ȥ��", 4, "�����ĵص�/WayPointFun", "·���ĳ���/StationFun", "�����ĵص�/TownPortalFun", "������/OnCancel")
	end
end;

function  OnCancel()
	Say("����ԭ����Ҳ�Ǹ�ûǮ�����������ҿ������ۡ�",0)
end;