--���ϱ��� ��˿��һ��to��˿������
--Trap ID�����ϱ��� 7

function main(sel)

UTask_tm = GetTask(2);

if (UTask_tm == 0) then				--�������ŵ���
	SetPos(1603, 3210)
	Say("�㲻�����ŵ��ӣ����ܽ�����˿���ڶ��㡣", 0)
end;

if (UTask_tm > 0) and (UTask_tm < 62) then	--���ŵ��ӣ�δ����ʦ����
	SetPos(1603, 3210)
	Say("��Ŀǰ�޷�������˿���ڶ��㡣", 0)
end;

if (UTask_tm == 62) then			--���ŵ��ӣ��ӵ���ʦ����û��Կ��
	if ( HaveItem("Կ�׶�") == 1) then	--Կ�׶��������´�֣������ּ�������ǰ��Կ��
		DelItem("Կ�׶�")
		NewWorld(27, 1522, 3205)
		SetTask(2, 65)
	else	
		SetPos(1603, 3210)
		Say("��û�н�����˿���ڶ����Կ�ס�", 0)
	end	
end;

if (UTask_tm == 64) then			--���ŵ��ӣ��ӵ���ʦ�����õ�Կ��
	if ( HaveItem("Կ�׶�") == 1) then
		DelItem("Կ�׶�")
		NewWorld(27, 1522, 3205)
		SetTask(2, 65)
	else		
		SetPos(1603, 3210)
		Say("���Կ�׵��ˣ�û��Կ�׽����˵ڶ��㡣", 2, "������/find", "�����ٴ�/redo")	
	end
end;	
	
if (UTask_tm > 64) then					
	NewWorld(27, 1522, 3205)
end;

end;


function find()
end;

function redo()
SetTask(2, 62)
end;