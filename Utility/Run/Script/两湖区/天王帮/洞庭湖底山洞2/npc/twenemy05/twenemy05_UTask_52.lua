--description: ������ ��ͥ���׵�2�����50������ս������
--author: yuanlan	
--date: 2003/4/28



function twenemy05_UTask_52()

if ( HaveItem("���ʯ") == 0) then	
	i = random(0,2)							--����Ϊ30%
	if (i == 0) then 
		AddEventItem("���ʯ")
		Msg2Player("���ˮ�֣��õ�һ�������Ҹ�����ƽ�������ʯ��")
		SetTask(3, 55)
	end
end;	

end;