--description: ���ų�ʦ���� ��˿����һ����� ս������
--author: yuanlan	
--date: 2003/3/13



function tmenemy09_1_UTask_62()

if ( HaveItem("Կ�׶�") == 0) then					--û��Կ�׶�
	i = random(0,1)							--����Ϊ50%
	if (i == 0) then 
		AddEventItem("Կ�׶�") 
		Msg2Player("�õ�Կ�׶���")
		SetTask(2, 64)
	end
end;
	
end;


