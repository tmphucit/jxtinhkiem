--description: ��ɽ���� ���̽���������ս������
--author: yuanlan	
--date: 2003/5/17



function trenemy01_2_UTask_5()

--if ( HaveItem("������") == 0) then			--ȡ����������Ʒ���޵��жϣ��Ա���������
	AddEventItem("������")
	Msg2Player("�õ���������")
	SetTask(4, 8)
--end

end;