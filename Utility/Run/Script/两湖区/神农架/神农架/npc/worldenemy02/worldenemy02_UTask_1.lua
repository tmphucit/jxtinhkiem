--description: ��ũ�ܵر��Ҷ�� ��������ս������
--author: yuanlan	
--date: 2003/4/30



function worldenemy02_UTask_1()

Task0013 = GetTaskTemp(13);

if (Task0013 < 10) then		--����ʮֻ���ټ���
	Task0013 = Task0013 + 1	
	SetTaskTemp(13, Task0013)
end;
	
end;	
