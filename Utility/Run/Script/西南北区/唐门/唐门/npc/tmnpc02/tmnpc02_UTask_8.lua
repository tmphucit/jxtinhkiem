--description: ������ͨ���� �����س��� ��������
--author: yuanlan	
--date: 2003/3/10



function tmnpc02_UTask_8()

if ( HaveItem("��ɫ����") == 1) and ( HaveItem("��ɫ����") == 1) and ( HaveItem("��ɫ����") == 1) then
	Say("����ׯ�������Ѿ�˳��ͨ�أ�����Ժ����ͬ���ֵ��ˣ�", 1, "����ʦ��/ok")
return	
end;

if ( HaveItem("��ɫ����") == 0) then
	Say("ϵͳ������⣡�㲻С�İ���ɫ���ȸ�Ū���ˣ����Ҫͨ�������أ������õ���ɫ���ȣ�����ֻ�����¹��ء�", 2, "��������/find", "���´�������/redo1")
return		
end;

if ( HaveItem("��ɫ����") == 0) then
	Say("ϵͳ������⣡�㲻С�İѰ�ɫ���ȸ�Ū���ˣ����Ҫͨ�������أ������õ���ɫ���ȣ�����ֻ�����¹��ء�", 2, "��������/find", "���´�������/redo2")
return		
end;

if ( HaveItem("��ɫ����") == 0) then
	Say("ϵͳ������⣡�㲻С�İ���ɫ���ȸ�Ū���ˣ����Ҫͨ�������أ������õ���ɫ���ȣ�����ֻ�����¹��ء�", 2, "��������/find", "���´�������/redo3")
return		
end;

end;


function ok()
DelItem("��ɫ����")	
DelItem("��ɫ����")
DelItem("��ɫ����")
SetFaction("����")				
SetRank(25)
SetCamp(3)
SetCurCamp(3)
AddMagic(45)
--SetPos(3840, 5422)							--����Ҵ��ͳ��Թ�
SetRevPos(15)								--����������
SetTask(2, 10)	
Msg2Player("��ϲ��������ţ��ȴ���������ɣ�")
Msg2Player("ѧ�������ؼ�������������")
end;


function find()
end;

function redo1()
Say("ϵͳ������������������ڴ���������", 0)
Msg2Player("����ʧ�ܣ�����������������ڴ���������")
DelItem("��ɫ����")
DelItem("��ɫ����")
SetTask(2, 0)
end;

function redo2()
Say("ϵͳ������������������ڴ���������", 0)
Msg2Player("����ʧ�ܣ�����������������ڴ���������")
DelItem("��ɫ����")
DelItem("��ɫ����")
SetTask(2, 0)
end;

function redo3()
Say("ϵͳ������������������ڴ���������", 0)
Msg2Player("����ʧ�ܣ�����������������ڴ���������")
DelItem("��ɫ����")
DelItem("��ɫ����")
SetTask(2, 0)
end;