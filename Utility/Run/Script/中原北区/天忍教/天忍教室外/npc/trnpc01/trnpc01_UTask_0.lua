--description: ���̵̽�����������
--author: yuanlan	
--date: 2003/5/17



function trnpc01_UTask_0()

Say("������ʿ��Ϥ��<color=Red>��ɽ<color>�ϲ���һ��<color=Red>������<color>������־�ڱصã�˭���汾�̶�ô˽������̱�����л��", 2, "Ըȥ�ὣ/yes1", "������Ȥ/no1")
DelItem("������")						--��ֹ�ؽ��������Ҽ����������    	
		
end;


function yes1()
Say("������ʿ����ȥ��ɽ·;ңԶ��·���������أ�����Ե�<color=Red>�꾩<color>����ȥ��ɽ������<color=Red>����<color>��Ҳ�����뱾�̵�<color=Red>����̳���ں���<color>������ǰ������������µû�Щ���Ӳ���ö�����", 0)
SetTask(4, 5)
end;


function no1()
Say("������ʿ������֮�±����·�����������־�ڱصá�", 0)
end;
