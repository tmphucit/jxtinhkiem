--description: �꾩������������� ���̽�50������ս������
--author: yuanlan	
--date: 2003/5/19



function trenemy05_3_UTask_52()

UTask_trsub03 = GetTask(23);

if ( UTask_trsub03 == 0) then	
	if ( HaveItem("����Կ����") == 0) then	
		i = random(0,2)							--����Ϊ30%
		if (i == 0) then 
			AddEventItem("����Կ����")
			Msg2Player("�õ�������Կ�ס�")
		end
	end		
end

end;