--description: ����50������ ���ɽ��ˮ������ ս������
--author: yuanlan	
--date: 2003/3/12



function tmenemy08_3_UTask_58()

if ( HaveItem("������") == 0) then					--û�а�����
	i = random(0,2)							--����Ϊ33%
	if (i == 0) then 
		AddEventItem("������") 
		Msg2Player("�õ������ס�")
	end
end;
	
end;


