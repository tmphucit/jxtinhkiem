--description: ���̽�����̳��20������
--author: yuanlan	
--date: 2003/5/18



function trnpc03_UTask_22()
Say("�ں����������������ˣ����æ�ɣ�", 2, "�ðɣ�������/accept3", "�һ��б����/refuse3");
end;

function accept3()
Say("�ں�����̫���ˣ���С�����<color=Red>���������<color>����Һúý�ѵ����", 0);
SetTask(4, 23);  
end;

function refuse3()
Say("�ں��������㶼���ϰ��ң��һ�����˭���������ء���", 0);
end;
