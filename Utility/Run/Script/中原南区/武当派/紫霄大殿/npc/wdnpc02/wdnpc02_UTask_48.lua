--description: �䵱�ɵ�һ����40������
--author: yuanlan	
--date: 2003/5/15



function wdnpc02_UTask_48()

if ( HaveItem("����Ļ���") == 1) then					--������Ļ���
	Talk(3, "select", "��ң�ʦ�������Ӵ���ʦ��ȥ��һ�˷�ţɽ�����Ž���������������Ļ��š�", "��һ���ˣ�ԭ����ˡ�����������㲻Ҫ������̸�𣬼�ס����", "��ң��������ף�")
else									--��ʧ����
	Say("ϵͳ������⣡�㲻С�İ�����Ļ��Ÿ�Ū���ˣ����Ҫ������������������Ļ��š�", 2, "��������/find", "�������������/redo")	

end;

end;


function select()
DelItem("����Ļ���")
SetRank(11)
SetTask(5, 50)
AddMagic(161)
AddMagic(162)
--AddMagic(163)
Msg2Player("��ϲ����Ϊ��۵��ˣ�")
Msg2Player("ѧ���䵱���书�������ķ�����")
Msg2Player("ѧ���䵱���书����һ���󡱡�")
end;


function find()
end;


function redo()
Say("ϵͳ��������������Ȫ��������", 0)
Msg2Player("����ѡ������������Ȫ��������")
SetTask(5, 40)
SetTaskTemp(16, 0)
SetTaskTemp(17, 0)
SetTaskTemp(18, 0)
SetTaskTemp(19, 0)
SetTaskTemp(20, 0)
end;