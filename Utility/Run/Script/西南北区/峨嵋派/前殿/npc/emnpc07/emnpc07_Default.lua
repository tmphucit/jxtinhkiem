--description: ����������������Ի�
--author: yuanlan	
--date: 2003/3/4


function emnpc07_Default()

UTask_em = GetTask(1);

if (UTask_em == 12) then 
Say("������<color=Red>�����ͭ��<color>����<color=Red>�๫<color>�Ƕ���������<color=Red>ɽ���µ�����<color>�", 0)
return
end;

if (UTask_em == 17) then 
Say("������ʦ�ã�������Ұ�����޲��õ�ͭ���������๫�������Ը��������꣬�������һ���ص�������ߣ����������������ҪǱ�����У������������½⡣", 0)
return
end;

if (UTask_em < 20) then   						--��δ���10������
	Say("���������棬�������������𷣵��ӣ���Ҫȥ������������", 0)
else									
	if (UTask_em < 70) then   					--�Ѿ����10��������δ��ʦ
		Say("������ʦ�ã����治֪����ôл�㣡", 0)
	else								--�Ѿ���ʦ
		Say("������ʦ�ã����Ҫ��ɽ���𣿶�ౣ�ء�", 0)
	end
end;	

end;




