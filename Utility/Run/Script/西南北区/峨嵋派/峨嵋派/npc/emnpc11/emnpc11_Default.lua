--description: �����������๫������Ի�
--author: yuanlan	
--date: 2003/3/4


function emnpc11_Default()

UTask_em = GetTask(1);

if (UTask_em == 16) then 					--ͭ���Ѳ���
	Talk(2, "", "��ң���磬�������Ѿ���ͭ���޺��ˣ�", "�����๫��̫���ˣ����ȥ��ͭ�����������Ӱɣ�")
return	
end;

if (UTask_em == 18) then 					--ͭ���Ѳ���
	Say("�����๫���鷳����������ӣ���˵���꣬������ʮ�꣬��Ҳ�����ȥ�ģ�", 0)
return	
end;

if (UTask_em < 12) then   						
	Say("�����๫�����Ƿ���ʲôʱ����ܹ��ž��أ�", 0)
else									
	if (UTask_em < 17) then   					
		Say("�����๫���������ˣ�", 0)
	else								
		Say("�����๫����˵���꣬������ʮ�꣬��Ҳ�����ȥ�ģ�", 0)
	end
end;	

end;




