--description: �����ƺ� ������Ի�
--author: yuanlan	
--date: 2003/3/10


function tmnpc05_Default()

UTask_tm = GetTask(2);

if (UTask_tm < 10) then								--��δ�ӵ�10������
Say("�ƺף�������Ȼ�԰������Ž����������۵��书��Ҳ������ѷ���������ɡ�", 0)
end;				

if (UTask_tm > 10) and (UTask_tm < 20) then					--�Ѿ��ӵ�10��������δ���
Say("�ƺף�<color=Red>ħ����<color>����<color=Red>�ɶ���<color>��ʧ�ģ�������ȵ����ﰵ�д���һ�������ˣ��㻹û�м���<color=Red>ħ����<color>�ɣ�����һ��������һ����ϸ�룬ͨ����ڡ�", 0)
end;				

if (UTask_tm >= 20) and (UTask_tm < 70) then					--�Ѿ����10��������δ��ʦ
Say("�ƺף������б��£��ܰﱾ���һ�ħ���룬ֻҪ�����Ϊ֮������һ��ǰ;������", 0)
end;				

if (UTask_tm >= 70) then							--�Ѿ���ʦ
Say("�ƺף�������Ȼ�԰������Ž����������۵��书��Ҳ������ѷ���������ɡ�", 0)
end;				

end;


