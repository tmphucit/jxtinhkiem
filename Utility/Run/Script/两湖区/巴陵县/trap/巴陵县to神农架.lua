--������ ������to��ũ��
--TrapID�������� 83
function main(sel)

if (GetLevel() >= 10) then						--�ȼ��ﵽʮ��
	NewWorld(74, 2040 ,3259)
else
	Msg2Player("�Բ���û��ʮ�������ֲ��ܳ��塣")	
	SetPos(1338, 3353)						--�߳�Trap��
end

AddTermini(46)

end;