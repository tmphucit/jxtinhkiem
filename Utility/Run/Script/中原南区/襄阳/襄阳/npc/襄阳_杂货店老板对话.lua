--description: ��ԭ���� ������ �ӻ����ϰ�Ի�	�䵱��20������
--author: yuanlan	
--date: 2003/5/14



function main(sel)

UTask_wd = GetTask(5);

if (UTask_wd == 24) then 
	if ( HaveItem("���Ƶ���ϵ���") == 1 ) then
		Talk(2, "", "��ң��ϰ壬���ܰ����޲������������", "�ӻ����ϰ壺�ҵĶ����䵱ɽ��ɣҶ��ʱ�򱻻��Ƕ����<color=Red>Ұ��<color>�������ˣ�˭�ܰ��ҾȻض��ӣ�ô���Ҷ���Ӧ����")
		SetTask(5, 25)
	else	
		Say("ϵͳ������⣡�㲻С�İѲ��Ƶ���ϵ��۸�Ū���ˣ��������ô�죿", 2, "��������/find", "����ȥ���Ƕ��������/redo")	
	end
return
end;

	
if (UTask_wd == 25) then 
	Say("�ӻ����ϰ壺�ҵĶ����䵱ɽ��ɣҶ��ʱ�򱻻��Ƕ����<color=Red>Ұ��<color>�������ˣ�˭�ܰ��ҾȻض��ӣ�ô���Ҷ���Ӧ����", 2, "����/yes", "������/no")
return	
end;	
	

if (UTask_wd == 26) then 	
	Say("�ӻ����ϰ壺�����Ҷ��ӵľ������ˣ���ʲôҪ��æ��ֻ�ܿ��ڡ�", 1, "��æ�޲�����/ok")
return
end;		

Say("�ӻ����ϰ壺����Ҫ���ô�£��ǳԵģ����ģ������õģ�", 2, "����/yes", "������/no");

end;



function ok()
if ( HaveItem("���Ƶ���ϵ���") == 1  and  HaveItem("���") == 1 ) then	
	Say("�ӻ����ϰ壺 �ӵ����⣬�����Ϊ�㲹��", 0) 
	DelItem("���Ƶ���ϵ���") 
	DelItem("���") 	
	AddEventItem("���õ���ϵ���")
	Msg2Player("�õ��޲��õ���ϵ��ۡ�")
	SetTask(5, 28)
return	
end;

if ( HaveItem("���Ƶ���ϵ���") == 0 ) then	
	Say("ϵͳ������⣡�㲻С�İѲ��Ƶ���ϵ��۸�Ū���ˣ��������ô�죿", 2, "��������/find", "����ȥ���Ƕ��������/redo1")
return	
end;	

if ( HaveItem("���Ƶ���ϵ���") == 1 and HaveItem("���") == 0 ) then	
	Say("ϵͳ������壡�㲻С�İ���ϸ�Ū���ˣ�û�����˿�����ۿ��޲����á�", 2, "��������/find", "����ȥ���Ƕ���һ������/redo2")
return	
end;	

end;	




function yes()
Sale(11);  			--�������׿�
end;


function no()
end;


function find()
end;


function redo()
Say("ϵͳ��������ȥ���Ƕ�Ѱ�ҵ��ۡ�", 0)
Msg2Player("����ѡ������ȥ���Ƕ�Ѱ�ҵ��ۡ�")
SetTask(5, 22)
end;

function redo1()
Say("ϵͳ��������ȥ���Ƕ�Ѱ�ҵ��ۡ�", 0)
Msg2Player("����ѡ������ȥ���Ƕ�Ѱ�ҵ��ۡ�")
DelItem("���")
SetTask(5, 22)
end;

function redo2()
Say("ϵͳ��������ȥ���Ƕ���һ���С��������", 0)
Msg2Player("����ѡ������ȥ���Ƕ���һ���С��������")
SetTask(5, 25)
end;