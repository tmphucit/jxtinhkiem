--description: �䵱��40������ ��ţɽ���ڶ���ͨ���� ����ս������
--author: yuanlan	
--date: 22003/5/15



function wdenemy04_6_UTask_45()

--if ( HaveItem("����Ļ���") == 0) then					--ȡ����������Ʒ���޵��жϣ��Ա���������
	i = random(0, 1)							--����Ϊ50%
	if (i == 0) then 
		AddEventItem("����Ļ���")
		Msg2Player("�ҵ�����Ļ��š�")
		SetTask(5, 48)
	end
--end

end;