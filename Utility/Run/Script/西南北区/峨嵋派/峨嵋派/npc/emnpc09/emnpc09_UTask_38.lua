--description: ���������ƴ�30������
--author: yuanlan	
--date: 2003/3/5



function emnpc09_UTask_38()

if ( HaveItem("���") == 1) then					--�ȳ����
	Say("���ƴȣ���ѽ������������������С�������´οɲ�׼�����ˣ�лл������һػ����", 1, "������/ok")
else									--�����ʧ	
	Say("ϵͳ������⣡�㲻С�İ���������һ����Ļ���������ˣ����Ҫ��������������л����", 2, "��������/find", "�������������/redo")	
end;

end;


function ok()
DelItem("���");
SetRank(16);
SetTask(1, 40);
AddMagic(85);
AddMagic(86);
AddMagic(87);
Msg2Player("��ϲ�㣡������Ϊ�����ɰ������ӣ�");
Msg2Player("ѧ���书��һҶ֪���");
Msg2Player("ѧ���书����ˮ����");
Msg2Player("ѧ���书�����ľ�����");
end;	


function find()
end;

function redo()
Say("ϵͳ�������������ƴȴ���������", 0)
SetTask(1, 30)
end;

