--description: ���������ƴȷ�����Ի�
--author: yuanlan	
--date: 2003/3/5


function emnpc09_Default()

UTask_em = GetTask(1);

if (UTask_em < 40) then   								--��δ���30������
	if (UTask_em == 35) then   							--�ѽӵ�����			
		Say("���ƴȣ��鷳�㵽<color=Red>��ɽ����<color>���ҿ���<color=Red>���<color>���<color=Red>����<color>������ü������������������������İ�����ߵġ�", 0)
	else										--δ�ӵ�����
		Say("���ƴȣ����ѽ��������ܵ�����ȥ�ˣ��������ɣ�", 0)
	end
else									
	if (UTask_em < 70) then   							--�Ѿ����30��������δ��ʦ
		Say("���ƴȣ�Сʦ�ã�лл������һػ����", 0)
	else										--�Ѿ���ʦ
		Say("���ƴȣ�Сʦ�ã���Ҫ��ɽ�����Һͻ����������ġ�", 0)
	end
end;	

end;




