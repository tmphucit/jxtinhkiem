--description: ������ػ����ĳ�50������
--author: yuanlan	
--date: 2003/4/28


function twnpc09_UTask_55()

if ( HaveItem("���ʯ") == 1 ) then		
	Say("�ĳϣ�ԭ��ʹ�����Ϸ�����ʹ�â�������ʯͷ��������ˮ�֣�������ʯ�������԰������ģ�������Ϊ������������������ӱ��ﰡ��", 1, "��Ը���ӱ���/ok")
else									--��ʧ����					
	Say("ϵͳ������⣡�㲻С�İ���̳���ʯ��Ū���ˣ����Ҫ������������������ʯ��", 2, "��������/find", "�������������/redo")
end

end;


function ok()
DelItem("���ʯ")
SetRank(48)
SetTask(3, 60)
AddMagic(40)
AddMagic(41)
AddMagic(42)
Msg2Player("��ϲ�㣡���Ѿ���Ϊ���������ˣ�")
Msg2Player("ѧ���������书���ϻ�̡���")
Msg2Player("ѧ���������书��Ѫս�˷�����")
Msg2Player("ѧ���������书�������֡���")
end;

function find()
end;

function redo()
Say("ϵͳ�����������ĳϴ���������", 0)
SetTask(3, 50)	
end;