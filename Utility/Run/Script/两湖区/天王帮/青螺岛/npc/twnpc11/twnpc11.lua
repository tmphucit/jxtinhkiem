--description: ���ݵ���ͷ����
--author: yuanlan	
--date: 2003/4/28


function main()

if (GetFaction() == "������") then					--����������������ӣ���������Ǯ
	Say("�������ڣ�Ҫ���������𣿱����ֵܣ�������ѡ�", 2, "��/yes", "��/no")
else	
	Say("�������ڣ�Ҫ���������𣿲��Ǳ����ֵܣ������ɲ�����ѵġ�", 2, "��/yes1", "����/no")
end;

end;


function yes()
NewWorld(59, 1425, 3472)						--��������
SetFightState(0)							--ת��Ϊ��ս��״̬
end;


function yes1()
if (GetCash() >= 500) then						--�ο�ֵ
	Pay(500)
	NewWorld(59, 1425, 3472)					--��������
	SetFightState(0)						--ת��Ϊ��ս��״̬
else
	Say("�������ڣ�ûǮ�������ҹ䣿", 0)		
end;
end;


function no()
end;








