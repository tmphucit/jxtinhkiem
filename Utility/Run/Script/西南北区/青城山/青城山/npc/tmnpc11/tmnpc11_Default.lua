--description: ���Ź����� ������Ի�
--author: yuanlan	
--date: 2003/3/12


function tmnpc11_Default()

UTask_tm = GetTask(2);

if (UTask_tm < 44) then								--��δ���40������
Say("�����棺�ұ������ĺ��£���������õ����Ѿ�Ȼ��һ����������֮����", 0)
end;				

if (UTask_tm >= 44) and (UTask_tm < 48) then					--��δ���40������
Say("�����棺������а취����Ů����", 0)
end;				

if (UTask_tm >= 48) and (UTask_tm < 70) then					--�Ѿ����40��������δ��ʦ
Say("�����棺���������ʦ�壬ʵ�ڲ�������", 0)
end;				

if (UTask_tm >= 70) then							--�Ѿ���ʦ
Say("�����棺û���㣬�ҵ�Ů���϶���ˣ����������Ǹ�Ů�Ĵ���ˣ�", 0)
end;				

end;


