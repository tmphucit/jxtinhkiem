--description: �꾩������һ�㱦�� ���̽�50������
--author: yuanlan	
--date: 2003/5/19


function main()

UTask_tr = GetTask(4);

if (UTask_tr == 52) then
	if (HaveItem("����Կ��һ") == 1) then
		Msg2Player("�򿪵�һ�����ء�")
		DelItem("����Կ��һ")
		SetTask(21, 1)	
		UTask_trsub02 = GetTask(22)
		UTask_trsub03 = GetTask(23)
		if (UTask_trsub02 == 1) and (UTask_trsub03 == 1) then 	
			Say("���������ȫ���򿪣��ȳ���������ķ����硣", 0)	
			Msg2Player("���������ȫ���򿪣��ȳ���������ķ����硣")
			SetTask(4, 55)	
		end
	else
		Msg2Player("û�е�һ��Կ�ף��򲻿�������ĵ�һ����ء�")		
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

  	





