--description: �䵱ɽ ���Ƕ��Թ�����20������ս������
--author: yuanlan	
--date: 22003/5/14



function wdenemy02_2_UTask_25()

--if ( HaveItem("���") == 0) then					--ȡ����������Ʒ���޵��жϣ��Ա���������
	AddEventItem("���")
	Msg2Player("�ȳ�һ�������ǵ����Ĳ�ɣ�к������͸���һֻ��������м���")
	if ( HaveItem("���Ƶ���ϵ���") == 1) then 			--�õ���Ϻ��ж���û�в��Ƶ���ϵ���
		SetTask(5, 25)	
	end		
--end

end;