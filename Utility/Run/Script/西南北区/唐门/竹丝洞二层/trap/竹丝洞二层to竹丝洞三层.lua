--���ϱ��� ��˿������to��˿������
--Trap ID�����ϱ��� 9

function main(sel)

UTask_tm = GetTask(2);

if (UTask_tm == 65) then			--���ŵ��ӣ��ӵ���ʦ����û��Կ��
	if ( HaveItem("Կ����") == 1) then	--Կ�׶��������´�֣������ּ�������ǰ��Կ��
		DelItem("Կ����")
		NewWorld(28, 1551, 3192)
		SetTask(2, 67)
	else
		SetPos(1606, 3207)
		Say("��û�н�����˿���������Կ�ס�", 0)
	end	
end;

if (UTask_tm == 66) then
	if ( HaveItem("Կ����") == 1) then
		DelItem("Կ����")
		NewWorld(28, 1551, 3192)
		SetTask(2, 67)
	else		
		SetPos(1606, 3207)
		Say("���Կ�׵��ˣ�û��Կ�׽����˵����㡣", 2, "������/find", "�����ٴ�/redo")
	end		
end;

if (UTask_tm > 66) then					
	NewWorld(28, 1551, 3192)
end;

end;


function find()
end;


function redo()
SetTask(2, 65)	
end;
