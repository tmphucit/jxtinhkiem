--description: ���̽�С�к�������Ի�
--author: yuanlan	
--date: 2003/5/18


function trnpc04_Default()

UTask_tr = GetTask(4);

if (UTask_tr < 23) then								--��δ�ش�����
Say("С�к�������һֻС�ƹ���һͷС��¿�����ǿɹ�����������õĻ�顣", 0)
end;				

if (UTask_tr == 25) then					--�Ѿ��ش����⣬��δ�ҵ�С�ƹ���С��¿
Say("С�к���������ܰ����һض�ʧ��<color=Red>С�ƹ�<color>��<color=Red>С��¿<color>���ҾͰ�����˫�ֻ����㡣", 0)
end;				

if (UTask_tr > 26) then								--�Ѿ��ҵ�С�ƹ���С��¿
Say("С�к����ҵ�С�ƹ���С��¿���ܸ������ģ����Ҵ�����˵�ϻ��������û�б����Ǹ��õ�����", 0)
end;				


end;



