--description: ����ɽ ��ˮ������ ������20������ս������
--author: yuanlan	
--date: 2003/4/25


function twenemy02_1_UTask_25()

Task0011 = GetTaskTemp(11)
Task0012 = GetTaskTemp(12)

if ( HaveItem("һ�����") == 0) then					--û��һ�����
	SetTaskTemp(10, 1)
	if ( Task0011 == 1 and Task0012 == 1) then
		Msg2Player("������ˣ����������ͳ�һ�������Ϊ��л��")
		AddEventItem("һ�����") 
		SetTask(3, 28)
	end
end;

end;