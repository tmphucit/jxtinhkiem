--description: ������������ 20������ս������
--author: yuanlan	
--date: 2003/3/11



function tmenemy05_UTask_24()

if ( HaveItem("����Ȧ") == 0) then					--û�н���Ȧ
	i = random(0,1)							--����Ϊ50%
	if (i == 0) then 
		AddEventItem("����Ȧ") 
		Msg2Player("�õ�����Ȧ��")
	end;
end;

end;