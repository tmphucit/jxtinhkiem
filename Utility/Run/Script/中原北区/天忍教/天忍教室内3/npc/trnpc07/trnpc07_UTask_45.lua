--description: ���̽��һ���Ү�ɱ���40������
--author: yuanlan	
--date: 2003/5/19



function trnpc07_UTask_45()

if (HaveItem("��������") == 1) then	
	Talk(2, "select", "��ң��������´����������ѵ������š�", "�һ���Ү�ɱ��룺�ɵ�Ư������������˴󹦣���һ�����ڽ�����ǰΪ�����Եģ�")
else									--��ʧ����					
	Say("ϵͳ������⣡�㲻С�İ�����Ū���ˣ�����֤���������ӵ�֤�ݣ����Ҫ������������õ����š�", 2, "��������/find", "�������������/redo")							
end

end;


function select()
SetRank(59)
DelItem("��������")
SetTask(4, 50)
AddMagic(145)
AddMagic(146)
AddMagic(147)
Msg2Player("��ϲ�����Ϊ���̵̽�����ʹ��")
Msg2Player("ѧ�����̽��书����ָ���桱��")
Msg2Player("ѧ�����̽�������")
Msg2Player("ѧ�����̽��书����ڤ���ǡ���")
end;


function find()
end;


function redo()
Say("ϵͳ�����������һ���Ү�ɱ��봦��������", 0)
Msg2Player("����ѡ���������һ���Ү�ɱ��봦��������")
SetTask(4, 40)
end;