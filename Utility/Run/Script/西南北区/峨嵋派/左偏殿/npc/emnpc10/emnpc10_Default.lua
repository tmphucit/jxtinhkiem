--description: �������մ�ܰ������Ի�
--author: yuanlan	
--date: 2003/3/5


function emnpc10_Default()

UTask_em = GetTask(1);

if (UTask_em < 50) then   								--��δ���40������
	Say("�մ�ܰ����λ<color=Red>����<color>��������<color=Red>���ɽ�в�<color>��<color=Red>���ɶ�<color>�", 0)
else									
	if (UTask_em < 70) then   							--�Ѿ����40��������δ��ʦ
		Say("�մ�ܰ����ʦ��������׺��ļ��ˣ��ⶼ������æ����", 0)
	else										--�Ѿ���ʦ
		Say("�մ�ܰ��Сʦ�ã��Ժ����߽�������ʲô�Ѵ��������˻��������ǰ���", 0)
	end
end;	

end;




