--������ ������to������
--TrapID�������� 80

function main(sel)

if (GetLevel() >= 10) then						--�ȼ��ﵽʮ��
	NewWorld(54, 1471 ,2992)
else
	Msg2Player("�Բ���û��ʮ�������ֲ��ܳ��塣")	
	SetPos(1808, 3456)						--�߳�Trap��
end

end;