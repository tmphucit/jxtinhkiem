--description: ���̽�20������ С�ƹ�
--author: yuanlan	
--date: 2003/5/18



function trobj05_UTask_25()

--if ( HaveItem("С�ƹ�") == 0) then				--ȡ����������Ʒ���޵��жϣ��Ա���������
	SetPropState()
	AddEventItem("С�ƹ�")
	Msg2Player("�ҵ���ʧ��С�ƹ���")
	if ( HaveItem("С��¿") == 1 ) then 		
		SetTask(4, 26)
	end
--end

end;