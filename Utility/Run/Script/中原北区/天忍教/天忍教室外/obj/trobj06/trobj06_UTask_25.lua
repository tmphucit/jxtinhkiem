--description: ���̽�20������ С��¿
--author: yuanlan	
--date: 2003/5/18



function trobj06_UTask_25()

--if ( HaveItem("С��¿") == 0) then					--ȡ����������Ʒ���޵��жϣ��Ա���������
	SetPropState()
	AddEventItem("С��¿")
	Msg2Player("�ҵ���ʧ��С��¿��")
	if ( HaveItem("С�ƹ�") == 1 ) then 		
		SetTask(4, 26)
	end
--end

end;