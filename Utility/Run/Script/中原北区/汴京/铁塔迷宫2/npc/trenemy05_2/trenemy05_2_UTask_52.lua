--description: �꾩������������� ���̽�50������ս������
--author: yuanlan	
--date: 2003/5/19



function trenemy05_2_UTask_52()

UTask_trsub02 = GetTask(22);

if ( UTask_trsub02 == 0) then	
	if ( HaveItem("����Կ�׶�") == 0) then	
		i = random(0,1)							--����Ϊ50%
		if (i == 0) then 
			AddEventItem("����Կ�׶�")
			Msg2Player("�õ��ڶ���Կ�ס�")
		end
	end		
end

end;