--description: �������һ����� ���̽�30������ս������
--author: yuanlan	
--date: 2003/5/19



function trenemy03_1_UTask_32()

--if ( HaveItem("��Ѫ��") == 0) then						--ȡ����������Ʒ���޵��жϣ��Ա���������
	AddEventItem("��Ѫ��")
	Msg2Player("�õ���ʯ��Ѫ�졣")
	if (HaveItem("������") == 1 and HaveItem("��ĸ��") == 1 and HaveItem("������") == 1) then 		
		SetTask(4, 35)
	end
--end;

end;






