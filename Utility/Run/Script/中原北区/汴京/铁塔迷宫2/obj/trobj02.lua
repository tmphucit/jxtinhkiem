--description: �꾩���������㱦�� ���̽�50������
--author: yuanlan	
--date: 2003/5/19


function main()

UTask_tr = GetTask(4);

if (UTask_tr == 52) then
	if (HaveItem("����Կ�׶�") == 1) then
		Msg2Player("�򿪵ڶ������ء�")
		DelItem("����Կ�׶�")
		SetTask(22, 1)	
		UTask_trsub01 = GetTask(21)
		UTask_trsub03 = GetTask(23)
		if (UTask_trsub01 == 1) and (UTask_trsub03 == 1) then 	
			Say("���������ȫ���򿪣��ȳ���������ķ����硣", 0)	
			Msg2Player("���������ȫ���򿪣��ȳ���������ķ����硣")
			SetTask(4, 55)	
		end
	else	
		Msg2Player("û�еڶ���Կ�ף��򲻿�������ĵڶ�����ء�")	
	end
return	
end


if (UTask_tr < 52) then
Msg2Player("û�����񣬴򲻿����䡣")
end;

if (UTask_tr > 52) then
Msg2Player("������Ļ����Ѵ򿪡�")
end;

end;

  	





