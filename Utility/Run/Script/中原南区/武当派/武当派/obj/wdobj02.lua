--description: �䵱�ɳ�ʦ���� �䵱ɽ����2
--author: yuanlan	
--date: 2003/5/17


function main()

UTask_wd = GetTask(5);
UTask_wdsub02 = GetTask(17);
UTask_wdsub03 = GetTask(18);
UTask_wdsub04 = GetTask(19);

if (UTask_wd < 62) then	
Say("δ���������޷��򿪴˱��䡣", 0)
end;
	
if (UTask_wd == 62) then
	if (UTask_wdsub03 == 0) then 
		Say("���䣺�������ٱ���<color=Red>��е<color>���㣬<color=Red>����<color>���أ���Ҫ��<color=Red>������<color>����<color=Red>����<color>��æ�����", 0)
		Msg2Player("�������ٱ��ı�е���㣬��Ҫ������������������æ�����")
		SetTask(18, 2)	
	return	
	end
	if (UTask_wdsub03 > 0) and (UTask_wdsub03 < 8)then 
		Say("���䣺����<color=Red>��е<color>���㣬����ٱ���<color=Red>����<color>�����ڲ������ӡ���", 0)
		Msg2Player("���ڱ�е���㣬����ٱ������������ڲ������ӡ���")
	return	
	end
	if (UTask_wdsub03 == 8) then 
		AddEventItem("�����澭")
		Say("�����е�õ���ʱ������ǰ�߹ٱ���ս���������ǿ���򿪱��䣬����һ��<color=Red>�������澭��<color>��", 0)
		Msg2Player("�����е�õ���ʱ������ǰ�߹ٱ���ս���������ǿ���õ��������澭��һ����")
		SetTask(18, 10)
		if (UTask_wdsub02 == 10) and (UTask_wdsub04 == 10) then 		
			SetTask(5, 65)	
		end
	return	
	end
	if (UTask_wdsub03 == 10) then 
		Say("�����ѿա�", 0)		
	end	
end

if (UTask_wd > 62) then	
Say("�����ѿա�", 0)
end;

end;

  	





