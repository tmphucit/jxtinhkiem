--���ϱ��� �ɶ��� ���Ų��۶Ի� ��������

function main(sel)

UTask_world01 = GetTask(11);

if (UTask_world01 == 1) then	
	Task0009 = GetTaskTemp(9);
	if (Task0009 < 10) then			--û��ɱ��ʮֻҰ��
		Say("���Ų��ۣ�������������ɱ��ʮͷҰ����˵��", 0)
	else
		Earn(500)
		SetTaskTemp(9, 0)
	end
else
	Say("���Ų��ۣ������봳���������ǳ������ı��ӵ���", 0)	
end;
	
end;