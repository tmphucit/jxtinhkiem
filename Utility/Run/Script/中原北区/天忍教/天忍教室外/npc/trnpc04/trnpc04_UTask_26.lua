--description: ���̽�С�к�20������
--author: yuanlan	
--date: 2003/5/18



function trnpc04_UTask_26()
if ( HaveItem("С�ƹ�") == 1 and  HaveItem("С��¿") == 1 ) then	
	Say("С�к�������С�ƣ�С�ң�����̫�����ˣ��´β��������ˣ������������ӼȲ��ܳ��ֲ��ܴ������˺ÿ�����һ����Ҳû�У�ֻ��������Щɵ�ϲŰ������ɱ�����������ɣ�", 1, "��лС�ܵ�/ok")
return
end;

if ( HaveItem("С�ƹ�") == 0 and  HaveItem("С��¿") == 1 ) then	
	Say("ϵͳ������⣡�㲻С�İ�С�ƹ�Ū���ˣ����Ҫ��������˫�֣������õ�С�ƹ���", 2, "��������/find", "����Ѱ��С�ƹ�/redo1")	
return
end

if ( HaveItem("С�ƹ�") == 1 and  HaveItem("С��¿") == 0 ) then	
	Say("ϵͳ������⣡�㲻С�İ�С��¿Ū���ˣ����Ҫ��������˫�֣������õ�С��¿��", 2, "��������/find", "����Ѱ��С��¿/redo2")	
return
end

if ( HaveItem("С�ƹ�") == 0 and  HaveItem("С��¿") == 0 ) then	
	Say("ϵͳ������⣡�㲻С�İ�С�ƹ���С��¿Ū���ˣ����Ҫ��������˫�֣������õ�С�ƹ���С��¿��", 2, "��������/find", "����Ѱ��С�ƹ���С��¿/redo3")	
return
end

end;



function ok()
DelItem("С�ƹ�")
DelItem("С��¿")
AddEventItem("����˫��")
Msg2Player("�õ�����˫�֡�")
SetTask(4, 28)
end;


function find()
end;


function redo1()
Say("ϵͳ����������ȥѰ��С�ƹ���", 0)
Msg2Player("����ѡ������Ѱ��С�ƹ���")
SetTask(4, 25)
end;


function redo2()
Say("ϵͳ����������ȥѰ��С��¿��", 0)
Msg2Player("����ѡ������Ѱ��С��¿��")
SetTask(4, 25)
end;


function redo3()
Say("ϵͳ����������ȥѰ��С�ƹ���С��¿��", 0)
Msg2Player("����ѡ������Ѱ��С�ƹ���С��¿��")
SetTask(4, 25)
end;