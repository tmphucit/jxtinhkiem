--description: ������������40������
--author: yuanlan	
--date: 2003/4/28



function twnpc08_UTask_45()

UTask_twsub02 = GetTask(14);

if (UTask_twsub02 == 6) then 
	if ( HaveItem("�������") == 0) then				--��򾶪ʧ����
		Say("ϵͳ������⣡�㲻С�İ�ˮ���͵�����Ū���ˣ����Ҫ������������������򾡣", 2, "��������/find", "����ȥ�Һ�ɩ/redo")	
	else
		Talk(3, "", "�����̣���Ӵ���ҽ��������������񲻹�����ô�죿", "��ң��ϴ�ү���������м�����򾣬�͸���������ɡ�", "�����̣��ú��ӣ�лл�㣬�ҸղŲ�С�ĵ�����һֻ��ë�꣬���͸���ɡ�")
		DelItem("�������")
		AddEventItem("��ë��")
		Msg2Player("�õ���ë�ꡣ")
		SetTask(14, 10)	
		if ( HaveItem("��������Ƭ") == 1) then 		--�õ���ë����ж���û�л�������Ƭ���Ƿ�����ҩ�����õ�
			Say("����ҩ�������ҵ����Ͻ�ȥ��������·��Զ�ϻ����ɣ�", 0)
			SetTask(3, 48)	
		end			
	end
return	
end;	


Say("�����̣��Ϻ������춼��������㣬������㶼��ʶ������", 0)
	
	
end;	


function find()
end;

function redo()
DelItem("����")
DelItem("��������")
SetTask(14, 0)
end;