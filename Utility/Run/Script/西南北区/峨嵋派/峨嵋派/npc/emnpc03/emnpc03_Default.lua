--description: ���������з������Ի�
--author: yuanlan	
--date: 2003/3/3


function emnpc03_Default()

UTask_em = GetTask(1);

if (UTask_em == 4) then 					--���ǰ����
	Say("���з磺�����㵹����һ�����ˣ�������Ҫ<color=Red>����Ʈ<color>ʦ�ÿ����㣬�����������<color=Red>��ɽ��<color>����ȥ�����ɣ�", 0)
return	
end;

if (UTask_em < 10) then 					--��δ����
	Say("���з磺Ҫ����뱾�ɣ�������ͨ��������Ŀ��飬Ȼ���ٴ������µõ��������⣬�㶼��������", 0)
else
	if (UTask_em < 70) then   				--�Ѿ����ţ���δ��ʦ
		Say("���з磺ʦ�ã��п�����һ���д�������Σ�", 0)
	else							--�Ѿ���ʦ
		Say("���з磺�������¸����١�֪���٣��Ҷ���˭����", 0)
	end
end;	

end;



