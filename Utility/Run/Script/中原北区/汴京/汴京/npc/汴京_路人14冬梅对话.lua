--description: ��ԭ���� �꾩�� ·��14��÷�Ի� ���̳̽�ʦ����
--author: yuanlan	
--date: 2003/5/19


function main(sel)

UTask_tr = GetTask(4);

if (UTask_tr == 62) then
	UTask_trsub07 = GetTask(27)
	if (UTask_trsub07 == 0) then 
		Say("��÷���������Ǽ�С����������֪��Ұ��ʲô�ط����ȥ�ˣ����ܰ���������", 2, "�õ�/accept", "�һ��б����/refuse")
		DelItem("�Ͻ���ȥа��")			--�����ؽ��������Ҽ���������ߵ����	
		return
	end
	
	if (UTask_trsub07 == 2) then 
		Say("��÷���ҵ����Ǽ�С������", 0)
		return
	end
	
	if (UTask_trsub07 == 4) then 
		Talk(2, "", "��ң�С���ڹ㳡������أ�������ͻ�����", "��÷��̫лл���ˣ��Ҽ�С�������Ҫ������һ�붮�¾ͺ��ˣ���Ҳûʲô��ĺö�������ѶϽ������Ǽ�������ǽ��ģ�������һ��ϰ��֮�ˣ����͸���ɡ�")
		AddEventItem("�Ͻ���ȥа��")
		Msg2Player("�õ��Ͻ���ȥа����")
		SetTask(27, 10)
		if (HaveItem("�Ͻ������ա�") == 1 and HaveItem("�Ͻ�����ˮ��") == 1 and HaveItem("�Ͻ���ת�ǡ�") == 1 and HaveItem("�Ͻ�����ꡱ") == 1) then 		
			SetTask(4, 65)
		end	
		return
	end
	
	if (UTask_trsub07 == 10) then 
		Say("��÷��С���������ڼң��⺢���ֲ�����������",0)
	return
	end
		
end;
	
i = random(0,2)

if (i == 0) then
Say("��÷���������Ǽ�С����������֪��Ұ��ʲô�ط����ȥ�ˡ�",0)
return
end;

if (i == 1) then
Say("��÷��С���������ڼң���������ȫ���ң�ƫƫ������������",0)
return
end;

if (i == 2) then
Say("��÷������ʱ�ֲ��ã����������Ѱ���",0)
return
end;

end;


function accept()
Say("��÷��̫�鷳���ˣ�", 0);
SetTask(27, 2);	
end;


function refuse()
Say("��÷�������⺢�������˲��İ���", 0);
end;