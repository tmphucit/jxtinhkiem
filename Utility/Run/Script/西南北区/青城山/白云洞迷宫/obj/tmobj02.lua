--description: ����30������ ���ɽ���ƶ�����
--author: yuanlan	
--date: 2003/3/11


function main()

UTask_tm = GetTask(2);

if (UTask_tm == 33) then 
	if ( HaveItem("Կ��һ") == 1) then					--�õ�Կ��һ
		DelItem("Կ��һ")
		AddEventItem("������") 
		Msg2Player("�õ��������ס���")
		SetTask(2, 35)
	else
		Say("û��Կ�ף������˱��䡣", 0)		
	end
return		
end;

if (UTask_tm > 33) then 
	Say("�����ѿա�", 0)
return
end

Say("δ�����񣬴򲻿����䡣", 0)

end;
	   	





