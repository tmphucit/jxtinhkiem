--description: �������һ����� ���̽�30������ս������
--author: yuanlan	
--date: 2003/5/19



function trenemy03_2_UTask_32()

--if ( HaveItem("������") == 0) then						--ȡ����������Ʒ���޵��жϣ��Ա���������
	AddEventItem("������")
	Msg2Player("�õ���ʯ��������")
	if (HaveItem("��Ѫ��") == 1 and HaveItem("��ĸ��") == 1 and HaveItem("������") == 1) then 		
		SetTask(4, 35)
	end
--end;

end;






