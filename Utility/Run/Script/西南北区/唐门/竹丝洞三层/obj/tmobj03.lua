--description: ���ų�ʦ���� ��˿�������㱦��
--author: yuanlan	
--date: 2003/3/13


function main()

UTask_tm = GetTask(2);

if (UTask_tm == 67) then 
	Say("һ�����������������", 2, "Ҫ/accept", "��Ҫ/refuse")
end;

if (UTask_tm == 68) then 
	Say("�����ѿա�", 0)
end;

if (UTask_tm == 69) then 
	Say("���Ѵ�����һ�����䣬�����ٿ����˱��䡣", 0)
end;

end;



function accept()
AddEventItem("���Ǿ�����"); 
Msg2Player("�õ����Ǿ�������");
SetTask(2, 68);
end;


function refuse()
end;

  	





