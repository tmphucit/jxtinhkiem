--description: �������渾��ɩ40������
--author: yuanlan	
--date: 2003/4/28



function twnpc06_UTask_45()

UTask_twsub02 = GetTask(14);

if (UTask_twsub02 == 0) then 
	DelItem("����")
	DelItem("��������")
	DelItem("�������")
	Say("�渾��ɩ�������˳������㣬�⼸���Ҫ�ؼ��ˣ���������������������ɼ�������Ӷ������ˣ���������æ��ϴ�£����ܰ���ȥ�������ӻ�����Щ���ӻ�����", 0)
	SetTask(14, 2)	
return	
end;	
	
if (UTask_twsub02 == 2) then 
	Say("�渾��ɩ�����ܰ���ȥ�������ӻ�����Щ���ӻ�����", 0)
return	
end;	
	
if (UTask_twsub02 == 3) then 
	if ( HaveItem("����") == 0) then				--���Ӷ�ʧ�Ĵ���
		Say("ϵͳ������⣡�㲻С�İ����������Ӹ�Ū���ˣ����Ҫ�������������������ӡ�", 2, "��������/find", "����ȥ�������ӻ�����/redo")
	else
		Say("�渾��ɩ��лл����������ӣ������������͸���ɡ�", 0)
		DelItem("����")
		AddEventItem("��������")
		Msg2Player("�õ�����������")
		SetTask(14, 4)	
	end
return	
end;	
	
Say("�渾��ɩ����������ô��û�л����أ�", 0)
	
end;	


function find()
end;

function redo()
SetTask(14, 2)
end;