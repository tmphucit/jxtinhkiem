--description: �䵱��Ҧʯ��20������
--author: yuanlan	
--date: 2003/5/14



function wdnpc04_UTask_28()

if ( HaveItem("���õ���ϵ���") == 0) then					
	Say("Ҧʯ�ţ��޲��õ���ϵ��ۣ�̫���ˣ�����лл�㣡", 1, "������/ok1")
else
	Say("ϵͳ������⣡�㲻С�İ��޲��õ���ϵ��۸�Ū���ˣ����Ҫ������������õ�����������ϵ��ۡ�", 2, "��������/find1", "�������������/redo1")	
end;

end;


function ok1()
DelItem("���õ���ϵ���")
SetRank(9)
SetTask(5, 30)
AddMagic(155)
AddMagic(156)
AddMagic(157)
Msg2Player("��ϲ�㣡���Ѿ���Ϊ�����޵��ˣ�")
Msg2Player("ѧ���䵱���书���׺����¡���")
Msg2Player("ѧ���䵱���书�������ķ�����")
Msg2Player("ѧ���䵱���书���������ҡ���")
end;


function find1()
end;

function redo1()
Say("ϵͳ����������Ҧʯ�Ŵ�������", 0)
Msg2Player("����ѡ��������Ҧʯ�Ŵ�������")
SetTask(5, 20)
end;	