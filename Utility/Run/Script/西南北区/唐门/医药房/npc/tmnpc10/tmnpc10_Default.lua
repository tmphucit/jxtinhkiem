--description: ������Ұ ������Ի�
--author: yuanlan	
--date: 2003/3/12


function tmnpc10_Default()

UTask_tm = GetTask(2);

if (UTask_tm < 40) then								--��δ�ӵ�40������
Say("��Ұ������ĳ��һ���������أ�ֻ��һ���£�ֱ��������Ȼ���Ϸ򹢹��ڻ���������", 0)
end;				

if (UTask_tm > 40) and (UTask_tm < 46) then					--��δ���40������
Say("��Ұ��<color=Red>������<color>һֱ������<color=Red>���ɽ������<color>��", 0)
end;				

if (UTask_tm >= 46) and (UTask_tm < 50) then					--��δ���40������
Say("��Ұ��ҩ��һ�������֣�<color=Red>��ܵ�Ƥ<color>��<color=Red>���ߵĵ�<color>��<<color=Red>��ڵĿ�<color>��<color=Red>��Ы��β<color>��<color=Red>���ϵ�ͷ<color>����Щҩ����<color=Red>���ɽ����<color>��<color=Red>������<color>�Ƚ϶࣬�������ﳣ��<color=Red>��ӥ<color>��<color=Red>����<color>��<color=Red>���<color>��û����ҪС�ġ�", 0)
end;				

if (UTask_tm >= 50) and (UTask_tm < 70) then					--�Ѿ����40��������δ��ʦ
Say("��Ұ������Ϸ򻯽������ʮ��Ķ�Թ���Ϸ�����������ѣ�����������", 0)
end;				

if (UTask_tm >= 70) then							--�Ѿ���ʦ
Say("��Ұ���пձ����˻������Ϸ�ȱ��ơ�", 0)
end;				

end;


