--description: �䵱�ɳ�ʦ���� �䵱ɽ����3
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
	if (UTask_wdsub04 == 0) then 
		Say("���䣺<color=Red>��������<color>���<color=Red>�ؽ�<color>����ֻ֪������Ƶأ���ѹ���գ��ϰ���Թ���ص����˵�<color=Red>����<color>����ɲ�����", 0)
		Msg2Player("������������ؽ�����ֻ֪������Ƶأ���ѹ���գ��ϰ���Թ���ص����˵ȱ�������ɲ�����")
		SetTask(19, 2)	
	return	
	end
	if (UTask_wdsub04 > 0) and (UTask_wdsub04 < 5)then 
		Say("���䣺�����ǵİ��ջ�������<color=Red>���������ؽ�<color>��<color=Red>����<color>֮�¡���", 0)
		Msg2Player("�����ǵİ��ջ�����ˮ�����֮�С���")
	return	
	end
	if (UTask_wdsub04 == 5) then 
		AddEventItem("̫���澭")
		Say("����������ǵ�<color=Red>����<color>���򿪱��䣬����һ��<color=Red>��̫���澭��<color>��", 0)
		Msg2Player("����������ǵı������õ���̫���澭��һ����")
		SetTask(19, 10)
		if (UTask_wdsub02 == 10) and (UTask_wdsub03 == 10) then 		
			SetTask(5, 65)	
		end
	return	
	end
	if (UTask_wdsub04 == 10) then 
		Say("�����ѿա�", 0)		
	end		
end

if (UTask_wd > 62) then	
Say("�����ѿա�", 0)
end;

end;

  	





