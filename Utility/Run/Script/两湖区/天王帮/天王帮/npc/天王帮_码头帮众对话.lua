--������ ������ ��ͷ���ڶԻ�

function main(sel)

UTask_tw = GetTask(3);
if (UTask_tw >= 62) then
	Say("�������ڣ�Ҫ����ȥ���", 3, "������/yes", "���ݵ�/yes1", "������/no")
else
	Say("�������ڣ�Ҫ����ȥ���", 2, "������/yes", "������/no")
end
end;


function yes()
if (GetFaction() == "������") then						--����������������ӣ���������Ǯ
	Say("�������ڣ��ֵܣ������ˣ�", 1, "����/ok1")
else	
	Say("�������ڣ����Ǳ����ֵܣ������ɲ�����ѵġ�", 1, "�ð�/ok2")
end;
end;


function yes1()
if (GetFaction() == "������") then						--����������������ӣ���������Ǯ
	Say("�������ڣ����ݵ��ɲ��ô�����׼��������", 1, "׼������/ok3")
else	
	Say("�������ڣ����Ǳ����ֵܣ������ɲ�����ѵġ�", 1, "�ð�/ok4")
end;
end;


function no()
end;


function ok1()
NewWorld(53, 1793, 3159)						--�ذ�����
SetFightState(1)							--ת��Ϊս��״̬
end;


function ok2()
if (GetCash() >= 100) then						--�ο�ֵ
	Pay(100)
	NewWorld(53, 1793, 3159)					--�ذ�����
	SetFightState(1)						--ת��Ϊս��״̬
else
	Say("�������ڣ�ûǮ�������ҹ䣿���ǳ��������İɣ�", 0)		
end;
end;


function ok3()
NewWorld(68, 1634, 3242)						--ȥ���ݵ�
SetFightState(1)							--ת��Ϊս��״̬
end;


function ok4()
if (GetCash() >= 500) then						--�ο�ֵ
	Pay(500)
	NewWorld(68, 1634, 3242)					--ȥ���ݵ�
	SetFightState(1)						--ת��Ϊս��״̬
else
	Say("�������ڣ�ûǮ�������ҹ䣿", 0)		
end;
end;
