--description: ������л���ܷ�����Ի�
--author: yuanlan	
--date: 2003/3/3


function emnpc05_Default()

UTask_em = GetTask(1);

if (UTask_em < 6) then 							--��δ���ǰ����
	Say("л���ܣ�Ҫ����뱾�ɣ�������ͨ��������Ŀ��飬�㶼��������", 0)
end;

if (UTask_em == 7) then							
	Say("л���ܣ��õ�<color=Red>��������<color>�����ɽ�ϵĳ����뿪�����¡�", 0)
end;	

if (UTask_em == 8) then							--�������º�
	Say("����㽫<color=Red>��������<color>����<color=Red>����<color>���Ϳ��Լ��뱾���ˡ�������<color=Red>����<color>�", 0)
end;


if (UTask_em >= 10) and (UTask_em < 70) then   				--�Ѿ����ţ���δ��ʦ
	Say("л���ܣ����Ѿ��Ǳ��ɵ��ӣ������ٴ��������ˡ�", 0)
end;
	
if (UTask_em >= 70) then   						--�Ѿ���ʦ
	Say("л���ܣ��пճ������������ǰ���", 0)
end;	

end;



