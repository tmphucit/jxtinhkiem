--description: ����ɽ ��ˮ������ ������20������ս������
--author: yuanlan	
--date: 2003/4/25


function twenemy02_3_UTask_25()

Task0010 = GetTaskTemp(10)
Task0011 = GetTaskTemp(11)

if ( HaveItem("һ�����") == 0) then					--û��һ�����
	SetTaskTemp(12, 1)
	if ( Task0010 == 1 and Task0011 == 1) then
		Msg2Player("������ˣ����������ͳ�һ�������Ϊ��л��")
		AddEventItem("һ�����") 
		SetTask(3, 28)
	end
end;

end;