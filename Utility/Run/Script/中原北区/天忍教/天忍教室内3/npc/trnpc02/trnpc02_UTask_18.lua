--description: ���̻̽�������10������
--author: yuanlan	
--date: 2003/5/18



function trnpc02_UTask_18()

if ( HaveItem("������Ƭһ") == 1 and  HaveItem("������Ƭ��") == 1 and HaveItem("������Ƭ��") == 1 and HaveItem("������Ƭ��") == 1 and HaveItem("������Ƭ��") == 1 and HaveItem("������Ƭ��") == 1 and HaveItem("������Ƭ��") == 1) then	
	Say("��������أ�����ܺã��߿���Ƭ��һ��Ҳ���٣��㵹����Щ���£�����������֮ǰС�����㣡", 1, "����������ָ��/ok")
else									
	Say("ϵͳ������⣡�㲻С�İ��߿���Ƭ��Ū���ˣ����Ҫ������������õ��߿���Ƭ��ȱһ���ɡ�", 2, "��������/find", "�������������/redo")	
end

end;


function ok()
DelItem("������Ƭһ")
DelItem("������Ƭ��")
DelItem("������Ƭ��")
DelItem("������Ƭ��")
DelItem("������Ƭ��")
DelItem("������Ƭ��")
DelItem("������Ƭ��")
SetTask(4, 20)
SetRank(56)
AddMagic(131)
AddMagic(132)
--AddMagic(133)
AddMagic(134)
AddMagic(136)
AddMagic(137)
Msg2Player("���Ѿ�����Ϊ���̵̽���Ӱɱ�֣�")
Msg2Player("ѧ�����̵�����")
Msg2Player("ѧ������ì����")
Msg2Player("ѧ�����̴�����")
Msg2Player("ѧ�����̽��书�������ٻ�����")
Msg2Player("ѧ�����̽��书����Ӱ�ɺ�����")
end;


function find()
end;


function redo()
Say("ϵͳ���������ڻ�������أ������������", 0)
Msg2Player("����ѡ�������ڻ�������أ������������")
SetTask(4, 10)
DelItem("������Ƭһ")
DelItem("������Ƭ��")
DelItem("������Ƭ��")
DelItem("������Ƭ��")
DelItem("������Ƭ��")
DelItem("������Ƭ��")
DelItem("������Ƭ��")
end;