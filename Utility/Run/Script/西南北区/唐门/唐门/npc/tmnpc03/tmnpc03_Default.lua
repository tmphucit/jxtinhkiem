--description: ������ͨ���� �񺣵ڶ��� ������Ի�
--author: yuanlan	
--date: 2003/3/10


function tmnpc03_Default()

UTask_tm = GetTask(2);

if (UTask_tm == 0) then	
Say("����ׯ����������������ڴ���������", 0)
end;

if (UTask_tm > 0) and (UTask_tm < 6) then			--��δ��ǰһ��
Say("����ׯ�����õ�����ɫ�����������ҡ�", 0)
end;				

if (UTask_tm >= 6) then						--�Ѿ���������
Say("����ׯ����Ҫ��˳�����أ�����������������ȣ�Ȼ�󽻸����ڵ��ˡ�", 0)
end;				

end;


