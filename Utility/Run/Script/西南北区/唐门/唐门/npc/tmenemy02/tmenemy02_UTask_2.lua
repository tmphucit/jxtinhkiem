--description: �����񺣵ڶ��ص��� ����ս������
--author: yuanlan	
--date: 2003/3/10



function tmenemy02_UTask_2()

i = random(0,4)							
if (i == 0) then 
	Say("����Ϊ��", 0) 
	Msg2Player("�õ��ھ�������Ϊ�硱��")
return	
end
if (i == 1) then 
	Say("����Ϊ��", 0) 
	Msg2Player("�õ��ھ�������Ϊ�㡱��")
return	
end
if (i == 2) then 
	Say("��������", 0) 
	Msg2Player("�õ��ھ����������ߡ���")
return	
end
if (i == 3) then 
	Say("������һ", 0) 
	Msg2Player("�õ��ھ���������һ����")
return	
end
if (i == 4) then 
	Say("�������", 0)
	Msg2Player("�õ��ھ���������롱��")
return	
end

end;