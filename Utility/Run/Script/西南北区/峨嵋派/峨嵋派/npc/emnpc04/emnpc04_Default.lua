--description: �����ɺ���Ʈ������Ի�
--author: yuanlan	
--date: 2003/3/3


function emnpc04_Default()

UTask_em = GetTask(1);

if (UTask_em == 6) then 					--���ǰ����
	Say("����Ʈ����ϲ�㣡���Ѿ�˳���������ؿ��飬������ȥ��<color=Red>л����<color>ʦ�ðɣ������ڰ�ɽ����<color=Red>���������<color>��", 0)
return	
end;

if (UTask_em < 10) then 					--��δ����
	Say("����Ʈ��Ҫ����뱾�ɣ�������ͨ��������Ŀ��飬Ȼ���ٴ������µõ��������⣬�㶼��������", 0)
else
	if (UTask_em < 70) then   				--�Ѿ����ţ���δ��ʦ
		Say("����Ʈ������������ͬ�źý����ˣ����濪�ģ�", 0)
	else							--�Ѿ���ʦ
		Say("����Ʈ�����ȥ�����������ɲ�Ҫ����������Щ����Ŷ��", 0)
	end
end;	

end;



