--description: �䵱�ɳ�ʦ���� �䵱ɽ����1
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
	if (UTask_wdsub02 == 0) then 
		Say("���䣺���ǰ���ξ�Ӫ��<color=Red>����<color>���ӣ���Ҫ��<color=Red>������<color>����<color=Red>ҩ���ϰ�<color>��æ�����", 0)
		Msg2Player("���ǰ���ξ�Ӫ���������ӣ���Ҫ������������ҩ���ϰ��æ�����")
		SetTask(17, 2)	
	return	
	end
	if (UTask_wdsub02 > 0) and (UTask_wdsub02 < 8)then 
		Say("���䣺<color=Red>����<color>���������С���", 0)
		Msg2Player("���߻��������С���")
	return	
	end
	if (UTask_wdsub02 == 8) then 
		AddEventItem("�����澭")
		Say("<color=Red>����<color>�ѳ����򿪱��䣬����һ��<color=Red>�������澭��<color>��", 0)
		Msg2Player("�����ѳ����õ��������澭��һ����")
		SetTask(17, 10)
		if (UTask_wdsub03 == 10) and (UTask_wdsub04 == 10) then 		
			SetTask(5, 65)	
		end
	return	
	end
	if (UTask_wdsub02 == 10) then 
		Say("�����ѿա�", 0)		
	end
end

if (UTask_wd > 62) then	
Say("�����ѿա�", 0)
end;

end;

  	





