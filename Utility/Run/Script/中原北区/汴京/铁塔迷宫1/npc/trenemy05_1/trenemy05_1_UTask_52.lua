--description: �꾩������һ����� ���̽�50������ս������
--author: yuanlan	
--date: 2003/5/19



function trenemy05_1_UTask_52()

UTask_trsub01 = GetTask(21);

if ( UTask_trsub01 == 0) then	
	if ( HaveItem("����Կ��һ") == 0) then	
		AddEventItem("����Կ��һ")
		Msg2Player("�õ���һ��Կ�ס�")
	end		
end

end;