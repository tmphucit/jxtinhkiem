--description: ���̽�ʥ�����㱦�� ���̳̽�ʦ����
--author: yuanlan	
--date: 2003/5/20


function main()

UTask_tr = GetTask(4);

if (UTask_tr == 67) then
	if (HaveItem("ʥ��Կ��") == 1) then
		DelItem("ʥ��Կ��")
		AddEventItem("��Ƥ��")
		Msg2Player("�򿪱��䣬�õ���Ƥ��һ��")
		SetTask(4, 68)	
	else
		Msg2Player("û��Կ�ף��򲻿����䡣")	
	end
return	
end

if (UTask_tr > 67) then
	Msg2Player("�����ѿա�")	
end;

end;

  	





