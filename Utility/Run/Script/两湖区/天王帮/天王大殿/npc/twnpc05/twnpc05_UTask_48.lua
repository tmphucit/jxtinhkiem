--description: �������커��·��Զ40������
--author: yuanlan	
--date: 2003/4/26


function twnpc05_UTask_48()

if (HaveItem("��������Ƭ") == 1) and (HaveItem("��ë��") == 1) then		
	Say("·��Զ��̫���ˣ�����ҩ������վ��о��ˣ��������㰡��", 1, "�ϻ���������/ok")
else												--��ʧ����
	Say("ϵͳ������⣡�㲻С�İѾ�����ҩ����Ū���ˣ����Ҫ���������������ҩ����", 2, "��������/find", "�������������/redo")	
end;

end;


function ok()
DelItem("��������Ƭ")
DelItem("��ë��")
SetRank(47)
SetTask(3, 50)
AddMagic(37)
AddMagic(38)
AddMagic(39)
Msg2Player("��ϲ�㣡���Ѿ���Ϊˮ��ͳ���ˣ�")
Msg2Player("ѧ���������书���÷�ն����")
Msg2Player("ѧ���������书���̹ž�ʽ����")
Msg2Player("ѧ���������书��մ��ʮ�˵�����")
end;


function find()
end;

function redo()
Say("ϵͳ����������·��Զ����������", 0)
DelItem("����")
DelItem("��������")
DelItem("�������")
DelItem("��������Ƭ")
DelItem("��ë��")
SetTask(3, 40)
SetTask(14, 0)	
end;