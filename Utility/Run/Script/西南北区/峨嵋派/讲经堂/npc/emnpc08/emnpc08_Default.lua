--description: ���������������Ի�
--author: yuanlan	
--date: 2003/3/4


function emnpc08_Default()

UTask_em = GetTask(1);

if (UTask_em < 30) then   								--��δ���20������
	if (UTask_em == 25) then   					
		Say("���磺��������������ֻҪ�շ���<color=Red>����<color>��������ͻ���Ȼ����Ϊ���������������ӣ�������շ���<color=Red>����<color>�����Ż�����������", 0)
	else								
		Say("���磺��ѧ�����ͬ����Ҫ��͸������֮�£�ֻҪ���ģ����������ɾ͡�", 0)
	end
else									
	if (UTask_em < 70) then   							--�Ѿ����20��������δ��ʦ
		Say("���磺���ܹ����뻢Ѩ���շ��ͻ����治��Ϊ�Ҷ��ҵ��ӡ�", 0)
	else										--�Ѿ���ʦ
		Say("���磺����Ļ۸�����������һ���ɾͣ���ʱ�ɱ�����������Щʦ�㰡��", 0)
	end
end;	

end;




