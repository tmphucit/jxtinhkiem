--description: ������ˮ��40������
--author: yuanlan	
--date: 2003/4/28



function twnpc07_UTask_45()

UTask_twsub02 = GetTask(14);

if (UTask_twsub02 == 4) then 
	if ( HaveItem("��������") == 0) then				--������ʧ����
		Say("ϵͳ������⣡�㲻С�İ��渾��ɩ�͵ļ�����Ū���ˣ����Ҫ���������������м�����", 2, "��������/find", "����ȥ�Һ�ɩ/redo")	
	else
		Talk(3, "", "ˮ���������±�����ˣ������Ҽ�̫����𼦵���", "��ң�С���ѣ��������������������͸���ɣ�", "ˮ��������Ȼ�������˵�����ܰ��ñ��˵Ķ����������ɣ��Ұ�����������͸����档")
		DelItem("��������")
		AddEventItem("�������")
		Msg2Player("�õ�������򾡣")
		SetTask(14, 6)	
	end
return	
end;	
	
Say("ˮ���������㳤�󣬳���Ϳ���ѧ�����ޣ�", 0)
	
end;


function find()
end;

function redo()
DelItem("����")
SetTask(14, 0)
end;	