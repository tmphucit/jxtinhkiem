--description: ��ԭ���� ���̽�ʥ��1to���̽�ʥ��2 ���̳̽�ʦ����
--author: yuanlan	
--date: 2003/5/20
--Trap ID����ԭ���� 7

function main(sel)

UTask_tr = GetTask(4);

if (UTask_tr == 66) then
	Task0021 = GetTaskTemp(21)
	Task0022 = GetTaskTemp(22)
	Task0023 = GetTaskTemp(23)
	Task0024 = GetTaskTemp(24)
	if (Task0021 == 1) and (Task0022 == 1) and (Task0023 == 1) and (Task0024 == 1) then	
		NewWorld(52, 1729, 3225)
		SetTask(4, 67)
	else
		Msg2Player("û�еõ�������<color=Red>�ľ����<color>���޷�����ʥ���ڶ��㡣")
		SetPos(1767, 3186)						--�����߳�Trap��
	end	
end	

if (UTask_tr > 66) then
	NewWorld(52, 1729, 3225)					
end	


end;