--description: ���ݵ�ɽ�����˳�ʦ����ս������
--author: yuanlan	
--date: 2003/4/28



function twenemy06_2_UTask_64()	

if ( HaveItem("��������") == 0) then	
	i = random(0,2)							--����Ϊ30%
	if (i == 0) then 
		AddEventItem("��������")
		Msg2Player("�ӽ���ɱ�ִ���ء��������顷��")
		SetTask(3, 66)
	end
end;	

end;