--description: ��ԭ���� �꾩�� ·��3С���Ի� ���̳̽�ʦ����
--author: yuanlan	
--date: 2003/5/19



function main(sel)

UTask_tr = GetTask(4);

if (UTask_tr == 62) then
	UTask_trsub07 = GetTask(27)
	if (UTask_trsub07 == 2) then 
		Talk(2, "", "��ң�С���ԣ����ؼ�ȥ�ɣ��������������أ�", "С����Ŷ����������������һ������ܿ�ͻ�ȥ���������ġ�")
		SetTask(27, 4)
	return
	end
	if (UTask_trsub07 >= 4) then 
		Say("С����������һ������ܿ�ͻ�ȥ��", 0)
	return
	end	
end;	
		
Say("С������������ϵ����ı��Ǻ�«�ˣ������ﲻ�ϸ�����˵�Զ��˻��ֶ��ӡ�",0)

end;

