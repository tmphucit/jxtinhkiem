--description: ������Ҷ���۷�����Ի�
--author: yuanlan	
--date: 2003/3/3


function emnpc02_Default()

UTask_em = GetTask(1);

if (UTask_em == 2) then 					--��ɵ�һ��
	Say("Ҷ���ۣ�����Լ�������Ŀ����ˣ���һλ��<color=Red>���з�<color>ʦ�ã�����<color=Red>ӭ��ʯ<color>����", 0)
return	
end;

if (UTask_em < 10) then 					--��δ����
	Say("Ҷ���ۣ�Ҫ����뱾�ɣ�������ͨ��������Ŀ��飬Ȼ���ٴ������µõ��������⣬�㶼��������", 0)
else
	if (UTask_em < 70) then   				--�Ѿ����ţ���δ��ʦ
		Say("Ҷ���ۣ�ʦ�ã��㰮�Ȳ���", 0)
	else							--�Ѿ���ʦ
		Say("Ҷ���ۣ�ʯ�����ɪɪ�������������Ϫ���������Ʒ����ʶ���жԲ辭����ˡ�", 0)
	end
end;	

end;



