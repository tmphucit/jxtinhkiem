--description: ��������ʹ���20������
--author: yuanlan	
--date: 2003/4/25


function twnpc03_UTask_28()

if ( HaveItem("һ�����") == 1 ) then		
	Say("������������ѨΪ����������úܺã��������ῴ���ˣ���������ʣ�ֻҪ������һ��ʱ�䣬�ػ��ΪС���г�����͵����", 1, "��л��ʹ/ok")
else								--��ʧ����						
	Say("ϵͳ������⣡�㲻С�İѽ����Ū���ˣ����Ҫ��������������н��졣", 2, "��������/find", "�������������/redo")	
end

end;


function ok()
DelItem("һ�����")
SetRank(45)
SetTask(3, 30)
AddMagic(31)
AddMagic(32)
AddMagic(33)
Msg2Player("��ϲ�㣡���Ѿ���Ϊ��կ�����ˣ�")
Msg2Player("ѧ���������书�����ƾ�����")
Msg2Player("ѧ���������书������ն����")
Msg2Player("ѧ���������书�����ľ�����")
end;


function find()
end;

function redo()
Say("ϵͳ�����������������������", 0)
SetTask(3, 20)
SetTaskTemp(10, 0)
SetTaskTemp(11, 0)
SetTaskTemp(12, 0)
end;