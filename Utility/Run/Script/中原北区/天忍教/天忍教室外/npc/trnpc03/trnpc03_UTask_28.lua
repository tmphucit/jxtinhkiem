--description: ���̽�����̳��20������
--author: yuanlan	
--date: 2003/5/18



function trnpc03_UTask_28()

if ( HaveItem("����˫��") == 1 ) then	
	Say("�ں����������Ҫ������˫�֣���ֱ�����ҵľ������˰��������������ֱ�����ҵ�������ĸ��", 1, "������������/ok")
else								--��ʧ����						
	Say("ϵͳ������⣡�㲻С�İ�����˫��Ū���ˣ����Ҫ������������õ�����˫�֡�", 2, "��������/find", "�������������/redo")
end

end;


function ok()
SetRank(57)
DelItem("����˫��")
SetTask(4, 30)
AddMagic(138)
AddMagic(139)
AddMagic(140)
Msg2Player("���Ѿ�����Ϊ���̵̽���ʿ��")
Msg2Player("ѧ�����̽��书����ɽ�����")
Msg2Player("ѧ�����̽��书����ˮ���㡱��")
Msg2Player("ѧ�����̽��书���ɺ��޼�����")
end;


function find()
end;


function redo()
Say("ϵͳ��������������̳���ں�������������", 0)
Msg2Player("����ѡ������������̳���ں�������������")
SetTask(4, 20)
end;