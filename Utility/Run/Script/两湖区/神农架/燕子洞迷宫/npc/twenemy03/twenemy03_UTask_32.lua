--description: ��ũ�� ���Ӷ�����30������ս������
--author: yuanlan	
--date: 2003/4/25



function twenemy03_UTask_32()

if ( HaveItem("������") == 0) then	
	i = random(0,1)							--����Ϊ50%
	if (i == 0) then 
		AddEventItem("������")
		Msg2Player("���ǿ������������")
		SetTask(3, 35)
	end
end

end;