--description: �������ͻ���Ѩ��������ս������
--author: yuanlan	
--date: 2003/3/4



function emenemy02_UTask_25()

Task0001 = GetTaskTemp(1)

if (Task0001 == 2) then	
	Say("�׻�����Ȼ�׺������Ǳ����շ��������Ժ����ڹԹԵؽ����ˡ������ѳ�������Ի�ȥ�����ˡ�", 1, "֪����/ok")
else
	Task0001 = Task0001 + 1	
	SetTaskTemp(1, Task0001)
end;

end;

function ok()
Msg2Player("��ϲ��ɹ��շ��ͻ���")
SetTask(1, 28)
end;