--description: �������һ����� ���̽�30������ս������
--author: yuanlan	
--date: 2003/5/19



function trenemy03_3_UTask_32()

--if ( HaveItem("��ĸ��") == 0) then						--ȡ����������Ʒ���޵��жϣ��Ա���������
	AddEventItem("��ĸ��")
	Msg2Player("�õ���ʯ��ĸ�̡�")
	if (HaveItem("��Ѫ��") == 1 and HaveItem("������") == 1 and HaveItem("������") == 1) then 		
		SetTask(4, 35)
	end
--end;

end;






