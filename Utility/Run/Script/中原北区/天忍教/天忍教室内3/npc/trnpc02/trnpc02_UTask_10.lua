--description: ���̻̽�������10������
--author: yuanlan	
--date: 2003/5/18



function trnpc02_UTask_10()
Say("��������أ�������̵ڶ����<color=Red>��ɱ��<color>���Ѻ��<color=Red>�߸�����<color>�����Ƕ��Ǳ��̵���ͽ��������ܹ�������߸��һ�õ�<color=Red>�߿���ɱ���Ƶ���Ƭ<color>���Ϳ��Խ���Ϊ���̵���Ӱɱ�֣�����û�е���ȥ����ɱ������", 2, "����ɱ��/yes", "��ʱ����/no");
DelItem("������Ƭһ")
DelItem("������Ƭ��")
DelItem("������Ƭ��")
DelItem("������Ƭ��")
DelItem("������Ƭ��")
DelItem("������Ƭ��")
DelItem("������Ƭ��")					--��ֹ�ؽ��������Ҽ���������� 
end;


function yes()
Say("��������أ����<color=Red>��ɱ���Ƶ���Ƭ<color>һ�����߿飬�ֱ���<color=Red>�߸�����<color>���ϣ�����ȫ���õ�������ء�", 0);
SetTask(4, 15);  
end;

function no()
Say("��������أ�����е���������ʱ���������ҡ�", 0);
end;




