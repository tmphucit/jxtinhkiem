--description: ��ԭ���� ���̽�����3to���̽�ʥ��1 ���̳̽�ʦ����
--author: yuanlan	
--date: 2003/5/20
--Trap ID����ԭ���� 5


function main(sel)

UTask_tr = GetTask(4);

if (UTask_tr <= 60) then
	Msg2Player("���������̽�ʥ����δ�����߲��ý��롣")
	SetPos(1749, 3081)						--�����߳�Trap��
end	

if (UTask_tr > 60) and (UTask_tr < 65) then
	Msg2Player("û����ѶϽ����޷�����ʥ����")
	SetPos(1749, 3081)						--�����߳�Trap��
end	

if (UTask_tr == 65) then
	if (HaveItem("�Ͻ������ա�") == 1 and HaveItem("�Ͻ�����ˮ��") == 1 and HaveItem("�Ͻ���ת�ǡ�") == 1 and HaveItem("�Ͻ���ȥа��") == 1 and HaveItem("�Ͻ�����ꡱ") == 1) then 
		DelItem("�Ͻ������ա�")
		DelItem("�Ͻ�����ˮ��")
		DelItem("�Ͻ���ת�ǡ�")
		DelItem("�Ͻ���ȥа��")
		DelItem("�Ͻ�����ꡱ")
		NewWorld(51, 1666, 3291)
		SetFightState(1)						--���ת����ս��״̬
		SetTask(4, 66)
	else
		SetPos(1749, 3081)						--�����߳�Trap��
		if (HaveItem("�Ͻ������ա�") == 0) then
			Msg2Player("û�жϽ������ա����޷�����ʥ��������Ѱ�ҶϽ������ա���")
			SetTask(4, 62)
			SetTask(24, 0)
		end	
		if (HaveItem("�Ͻ�����ˮ��") == 0) then
			Msg2Player("û�жϽ�����ˮ�����޷�����ʥ��������Ѱ�ҶϽ�����ˮ����")
			SetTask(4, 62)
			SetTask(25, 0)
		end
		if (HaveItem("�Ͻ���ת�ǡ�") == 0) then
			Msg2Player("û�жϽ���ת�ǡ����޷�����ʥ��������Ѱ�ҶϽ���ת�ǡ���")
			SetTask(4, 62)
			SetTask(26, 0)
		end
		if (HaveItem("�Ͻ���ȥа��") == 0) then
			Msg2Player("û�жϽ���ȥа�����޷�����ʥ��������Ѱ�ҶϽ���ȥа����")
			SetTask(4, 62)
			SetTask(27, 0)
		end		
		if (HaveItem("�Ͻ�����ꡱ") == 0) then
			Msg2Player("û�жϽ�����ꡱ���޷�����ʥ��������Ѱ�ҶϽ�����ꡱ��")
			SetTask(4, 62)
			SetTask(28, 0)
		end
	return	
	end	
end	

if (UTask_tr > 65) then
	NewWorld(51, 1666, 3291)
	SetFightState(1)						--���ת����ս��״̬
end	

end;