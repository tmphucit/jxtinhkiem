--description: ���ų�ʦ���� ��˿�������㱦��
--author: yuanlan	
--date: 2003/3/13


function main()

UTask_tm = GetTask(2);

if (UTask_tm == 67) then 
	Say("һ�������ӡ�", 2, "Ҫ/accept", "��Ҫ/refuse")
end;

if (UTask_tm == 68) then 
	Say("���Ѵ�����һ�����䣬�����ٿ����˱��䡣", 0)
end;

if (UTask_tm == 69) then 
	Say("�����ѿա�", 0)
end;

end;



function accept()
Earn(10000); 
Msg2Player("�õ�һ�������ӡ�");
SetTask(2, 69);
end;


function refuse()
end;

  	





