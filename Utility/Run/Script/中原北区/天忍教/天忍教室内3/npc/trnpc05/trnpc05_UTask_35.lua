--description: ���̷̽�����������ѩ��30������
--author: yuanlan	
--date: 2003/5/19



function trnpc05_UTask_35()

if ( HaveItem("��Ѫ��") == 1 and  HaveItem("������") == 1 and HaveItem("��ĸ��") == 1 and HaveItem("������") == 1 ) then
	Say("������������ѩ�£������ܸɣ���ô����ı�ʯ�������ҵ��ˣ�ĸ��һ����ϲ������������µģ�", 1, "��������������Ӧ����/ok")	
else								--��ʧ����					
	Say("ϵͳ������⣡�㲻С�İѱ�ʯ��Ū���ˣ����Ҫ������������õ����ֱ�ʯ��ȱһ���ɡ�", 2, "��������/find", "�������������/redo")	
end

end;


function ok()
SetRank(58)
DelItem("��Ѫ��")
DelItem("������")
DelItem("��ĸ��")
DelItem("������")
SetTask(4, 40)
AddMagic(141)
AddMagic(142)
AddMagic(143)
AddMagic(144)
Msg2Player("�����������Ѿ�����Ϊ���̵̽���ڤ��ʿ��")
Msg2Player("ѧ�����̽��书���һ����족��")
Msg2Player("ѧ�����̽��书��͵�컻�ա���")
Msg2Player("ѧ�����̽��书����ħ��ꡱ��")
Msg2Player("ѧ�����̽��书������������")
end;


function find()
end;


function redo()
Say("ϵͳ���������ڷ�����������ѩ�´���������", 0)
Msg2Player("����ѡ�������ڷ�����������ѩ�´���������")
SetTask(4, 30)
DelItem("��Ѫ��")
DelItem("������")
DelItem("��ĸ��")
DelItem("������")
end;