--description: ����30������ ���ɽ���ƶ�����ս������
--author: yuanlan	
--date: 2003/3/11



function tmenemy06_2_UTask_32()

Task0003 = GetTaskTemp(3)

if (Task0003 == 1) then	
	if ( HaveItem(98) == 0) then					--û��Կ��һ
		i = random(0,2)							--����Ϊ33%
		if (i == 0) then 
			AddEventItem(98) 
			Msg2Player("�õ�һ��Կ�ס�")
		end;			
	end;	

end;
	
end;



