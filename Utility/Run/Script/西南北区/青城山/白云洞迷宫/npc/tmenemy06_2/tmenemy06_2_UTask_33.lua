--description: ����30������ ���ɽ���ƶ�����ս������
--author: yuanlan	
--date: 2003/3/11



function tmenemy06_2_UTask_33()

--Task0003 = GetTaskTemp(3)

--if (Task0003 == 1) then	
	if ( HaveItem("Կ��һ") == 0) then					--û��Կ��һ
		i = random(0,2)							--����Ϊ33%
		if (i == 0) then 
			AddEventItem("Կ��һ") 
			Msg2Player("�õ�һ��Կ�ס�")
		end;			
	end;	

--end;
	
end;


