--description: ����ɽ ��ˮ������ ������20������ս������
--author: yuanlan	
--date: 2003/4/25


function twenemy02_2_UTask_25()

Task0010 = GetTaskTemp(10)
Task0012 = GetTaskTemp(12)

if ( HaveItem("һ�����") == 0) then					--û��һ�����
	SetTaskTemp(11, 1)
	if ( Task0010 == 1 and Task0012 == 1) then
		Msg2Player("������ˣ����������ͳ�һ�������Ϊ��л��")
		AddEventItem("һ�����") 
		SetTask(3, 28)
	end
end;

end;