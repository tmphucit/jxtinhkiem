--description: ��������ʹ�Ű�30������
--author: yuanlan	
--date: 2003/4/25


function twnpc04_UTask_35()

if ( HaveItem("������") == 1 ) then		
	Say("�Űأ�ԭ���������Ǳ��������Ӷ���һ��ɽ��͵ȥ�ˣ��ҿ����˻��������򶨻ᱻ������֣�����ǰ�����һ����æ������ʹ�Գ����ţ����ᱣ�������ƶ�ͷ�죡", 1, "��л��ʹ/ok")
else								--��ʧ����	
	Say("ϵͳ������⣡�㲻С�İ��������Ū���ˣ����Ҫ��������������������", 2, "��������/find", "�������������/redo")		
end

end;


function ok()
DelItem("������")
SetRank(46)
SetTask(3, 40)
AddMagic(34)
AddMagic(35)
AddMagic(36)
Msg2Player("��ϲ�㣡���Ѿ���Ϊ�ƶ�ͷ���ˣ�")
Msg2Player("ѧ���������书������ն����")
Msg2Player("ѧ���������书��������������")
Msg2Player("ѧ���������书������ս�⡱��")
end;


function find()
end;


function redo()
Say("ϵͳ���������ڹŰش���������", 0)
SetTask(3, 30)
end;