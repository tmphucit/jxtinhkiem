--description: ��ɱ������ ���̽�10������ս������
--author: yuanlan	
--date: 2003/5/18



function trenemy02_1_UTask_15()

--if ( HaveItem("������Ƭһ") == 0) then			--ȡ����������Ʒ���޵��жϣ��Ա���������
	AddEventItem("������Ƭһ")
	Msg2Player("�õ�������Ƭһ��")
	if (HaveItem("������Ƭ��") == 1 and HaveItem("������Ƭ��") == 1 and HaveItem("������Ƭ��") == 1 and HaveItem("������Ƭ��") == 1 and HaveItem("������Ƭ��") == 1 and HaveItem("������Ƭ��") == 1) then 		
		SetTask(4, 18)
	end
--end

end;