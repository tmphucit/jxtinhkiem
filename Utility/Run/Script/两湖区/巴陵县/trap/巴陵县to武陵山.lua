--������ ������to����ɽ
--TrapID�������� 81

function main(sel)

if (GetLevel() >= 10) then						--�ȼ��ﵽʮ��
	NewWorld(70, 1608 ,3230)
else
	Msg2Player("�Բ���û��ʮ�������ֲ��ܳ��塣")	
	SetPos(1334, 3306)						--�߳�Trap��
end

AddTermini(47)

end;