--description: ���ų�ʦ���� ��˿���ڶ������ ս������
--author: yuanlan	
--date: 2003/3/13



function tmenemy09_2_UTask_65()

if ( HaveItem("Կ����") == 0) then					--û��Կ����
	i = random(0,4)							--����Ϊ20%
	if (i == 0) then 
		AddEventItem("Կ����") 
		Msg2Player("�õ�Կ������")
		SetTask(2, 66)
	end
end;
	
end;


