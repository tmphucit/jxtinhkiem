--description: �����ɻ��ˮ���������ս������
--author: yuanlan	
--date: 2003/3/5



function emenemy03_UTask_35()

if ( HaveItem("���") == 0) then					--û�л��
	i = random(0,1)							--�õ�����ĸ�����50%
	if (i == 0) then  
		if ( HaveItem("����") == 0) then			--û�м���
			Msg2Player("�ҵ����������û�м��ȣ�������ϸ�İ�����ߡ�")
		else							--�м���		
			DelItem("����")
			AddEventItem("���") 
			Msg2Player("�ȳ������")
			SetTask(1, 38)
		end			
	end
end;

end;