--description: ����������ʦ̫������Ի�
--author: yuanlan	
--date: 2003/3/6


function emnpc01_Default()

UTask_em = GetTask(1);

if (UTask_em < 8) then 						--��δ����
Say("����ʦ̫���Ҷ���һ�ɣ��������գ����а��꣬�����ڶ࣬�����Ե�������Ƿ������ǽ���ϵ�ɽ����������Ե�ˡ�", 0)
end;

if (UTask_em > 8) and (UTask_em < 50) then   			--�Ѿ����ţ���50��������ǰ
Say("����ʦ̫���ҷ�ȱ����������ţ�������Ź档�������ѧ�գ���Ҫ������Ϊʦ��������", 0)
end;

if (UTask_em > 50) and (UTask_em < 60) then   			--�Ѿ��ӵ�50��������δ���
	if (UTask_em == 55) then
		Say("����ʦ̫��<color=Red>�Ⱥ���ʦ<color>�չض��꣬Ѱ��������ͣ��������ȥ������ʦ��<color=Red>���Ʒ�ʦ<color>��", 0)
	else		
		Say("����ʦ̫������վ����͵�����", 0)
	end	
end;

if (UTask_em > 60) and (UTask_em < 70) then   			--�Ѿ����50��������δ��ɳ�ʦ����
Say("����ʦ̫��<color=Red>����ָ��<color>��������֮�����������⣬ʵ���Ʋߡ���˵���<color=Red>���<color>��<color=Red>����Դͷ<color>����������Ҫһ��С�ģ�", 0)
end;
				
if (UTask_em >= 70) then   					--��ɳ�ʦ����
Say("����ʦ̫�����ѳ�ʦ���պ����߽�������ؽ����԰����м��мǣ�", 0)
end;	

end;



