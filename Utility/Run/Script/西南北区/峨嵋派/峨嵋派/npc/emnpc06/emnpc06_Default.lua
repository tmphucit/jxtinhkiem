--description: �������������Ի�
--author: yuanlan	
--date: 2003/3/4


function emnpc06_Default()

UTask_em = GetTask(1);

if (UTask_em < 6) then 							--��δ���ǰ����
	Say("���Ҫ����뱾�ɣ�������ͨ��������Ŀ��飬�㶼��������", 0)
end;

if (UTask_em == 6) then 							--��δ���ǰ����
	Say("�������ͨ��������Ŀ��飬��������ȥ��<color=Red>л����<color>ʦ�ðɣ������ڰ�ɽ����<color=Red>���������<color>����", 0)
	--Say("�������ͨ��������Ŀ��飬�����������ͨ�������£����ҵõ��������⣬", 0)
end;
	
if (UTask_em == 8) then							--�õ���������֮��
	Say("����㽫<color=Red>��������<color>����<color=Red>����<color>���Ϳ��Լ��뱾���ˡ�������<color=Red>����<color>�", 0)
end;

if (UTask_em >= 10) and (UTask_em < 70) then   				--�Ѿ����ţ���δ��ʦ
	Say("������Ѿ��Ǳ��ɵ��ӣ������ٴ��������ˡ�", 0)
end;

if (UTask_em == 70) then   						--�Ѿ���ʦ
	Say("���ʦ�ã����Ҫ��ɽ�������ǻ�����ġ�", 0)
end;	

end;



