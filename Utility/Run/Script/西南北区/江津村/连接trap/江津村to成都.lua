--���ϱ��� �����to�ɶ�
--Trap ID�����ϱ��� 55

function main(sel)

if (GetLevel() >= 10) then						--�ȼ��ﵽʮ��
	NewWorld(11, 3407, 5295)
	SetFightState(1)						--���ת����ս��״̬
else
	Msg2Player("�Բ���û��ʮ�������ֲ��ܳ��塣")	
	SetPos(3402, 6019)						--�߳�Trap��
end

end;