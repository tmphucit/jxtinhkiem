--description: ��ɱ������ ���̽�10������ս������
--author: yuanlan	
--date: 2003/5/18



function trenemy02_7_UTask_15()

--if ( HaveItem("������Ƭ��") == 0) then				--ȡ����������Ʒ���޵��жϣ��Ա���������
	AddEventItem("������Ƭ��")
	Msg2Player("�õ�������Ƭ�ߡ�")
	if (HaveItem("������Ƭһ") == 1 and HaveItem("������Ƭ��") == 1 and HaveItem("������Ƭ��") == 1 and HaveItem("������Ƭ��") == 1 and HaveItem("������Ƭ��") == 1 and HaveItem("������Ƭ��") == 1) then 		
		SetTask(4, 18)
	end
--end

end;