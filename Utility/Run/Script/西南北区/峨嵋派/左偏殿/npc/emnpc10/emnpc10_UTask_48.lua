--description: �������մ�ܰ40������
--author: yuanlan	
--date: 2003/3/5



function emnpc10_UTask_48()

if ( HaveItem("���񳯷�����") == 1) then					--�õ����񳯷�����
	Say("�մ�ܰ�������񳯷���ף�̫���ˣ���ʦ�����һ����ܿ��ĵģ�лл�㣬Сʦ�ã�", 1, "������/ok")
else										--��ʧ����
	Say("ϵͳ������⣡�㲻С�İѡ����񳯷����ס���Ū���ˣ����Ҫ��������������С����񳯷����ס���", 2, "��������/find", "�������������/redo")		
end;

end;

function ok()
DelItem("���񳯷�����");
SetRank(17);
SetTask(1, 50);
AddMagic(88);
AddMagic(89);
Msg2Player("��ϲ�㣡������Ϊ�������������ӣ�");
Msg2Player("ѧ���书�����𲻾�����");
Msg2Player("ѧ���书���ε�����");
end;	


function find()
end;

function redo()
Say("ϵͳ�����������մ�ܰ����������", 0)
SetTask(1, 40)
SetTask(29, 0)
SetTask(30, 0)
SetTask(31, 0)
SetTaskTemp(2, 0)
end;

