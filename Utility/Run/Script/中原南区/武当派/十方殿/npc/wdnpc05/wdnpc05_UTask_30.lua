--description: �䵱�������30������
--author: yuanlan	
--date: 2003/5/14



function wdnpc05_UTask_30()
Talk(2, "select", "������������䵱ѧ��Ҳ��Щʱ���ˣ����뿼������书�������Ƿ�����������", "���巽����Ҫ���ڹ涨ʱ�������ţɽ�ϲɻ����껭ü�ݣ���������涨ʱ����߲ɵ���Ŀ����������ʧ�ܡ�");
DelItem("��ü��")
DelItem("��ü��")
DelItem("��ü��")
DelItem("��ü��")
DelItem("��ü��")
end;


function select()
Say("��������������Ľ�����ο�����", 2, "û����/yes", "��������΢���������������/no");
end;

function yes()
Say("��������ܺã��Ӵ˿̿�ʼ��ʱ����Ҫ��<color=Red>��ʮ�ĸ�ʱ��<color>��ȥ<color=Red>��ţɽ<color>�ɻ�<color=Red>���껭ü��<color>��ȥ�ɡ�", 0);
SetTimer(345600, 2)										--������ʱ��
SetTask(5, 32);	
end;

function no()
Say("������������Ҫ�ڼ���ϰ�ˣ�", 0);
end;




