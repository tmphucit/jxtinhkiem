--description: ���ų�ʦ���� ��˿�������㱦��
--author: yuanlan	
--date: 2003/3/13


function main()

UTask_tm = GetTask(2);

if (UTask_tm == 66) then 
	Say(10696 , 2, "Ҫ/accept", "��Ҫ/refuse")
end;

end;



function accept()
AddEventItem(184); 
Msg2Player("�õ�һ����������");
SetTask(2, 69);
end;


function refuse()
end;

  	






