--��ԭ���� �꾩�� ��վ��ٶԻ� ������������

function main(sel)

--����

UTask_world25 = GetTask(53);
UTask_world34 = GetTask(62);

if (UTask_world25 == 1) then 
	if ( HaveItem("�ɶ������꾩�Ĺ���") == 1) then				
		DelItem("�ɶ������꾩�Ĺ���")
		        
        	UTask_world02 = GetTask(12)			
		if (UTask_world02 >= 100) then				--����100�κ����¼������Ŵ���
			SetTask(12, 1)
		else							--�õ���ǰ���Ŵ���
			UTask_world02 = UTask_world02 + 1	
			SetTask(12, UTask_world02)			
		end
	
		UTask_world02 = GetTask(12)				--�������Ŵ����õ���ͬ����		
        	if (UTask_world02 < 20)  then Earn(10)  end
        	if (UTask_world02 >= 20) and (UTask_world02 < 60)  then Earn(100)  end
        	if (UTask_world02 >= 60) and (UTask_world02 < 100) then Earn(200)  end
        	if (UTask_world02 == 100) then Earn(500) end
        	
        	Msg2Player("�ͳ��ɶ������Ĺ��ģ��õ�������")
        	SetTask(53, 0)
	end
end;	
	
if (UTask_world34 == 1) then 
	if ( HaveItem("�ٰ������꾩�Ĺ���") == 1) then				--����
		DelItem("�ٰ������꾩�Ĺ���")
		        
        	UTask_world02 = GetTask(12)			
		if (UTask_world02 >= 100) then				--����100�κ����¼������Ŵ���
			SetTask(12, 1)
		else							--�õ���ǰ���Ŵ���
			UTask_world02 = UTask_world02 + 1	
			SetTask(12, UTask_world02)			
		end
	
		UTask_world02 = GetTask(12)				--�������Ŵ����õ���ͬ����		
        	if (UTask_world02 < 20)  then Earn(10)  end
        	if (UTask_world02 >= 20) and (UTask_world02 < 60)  then Earn(100)  end
        	if (UTask_world02 >= 60) and (UTask_world02 < 100) then Earn(200)  end
        	if (UTask_world02 == 100) then Earn(500) end
        	
        	Msg2Player("�ͳ��ٰ������Ĺ��ģ��õ�������")
        	SetTask(62, 0)
	end
end;	
	
	
--����   

UTask_world30 = GetTask(58);
UTask_world31 = GetTask(59);

if (UTask_world30 == 1) and (UTask_world31 == 1) then 		--��ȫ�����ܵ���
Say("��٣����Ķ��͵�����", 0)
end;

if (UTask_world30 == 1) and (UTask_world31 == 0) then 		--û���õ������������
Say("��٣����⻹����Ҫ��������Ĺ��ģ���Ը������", 2, "Ը��/b", "�һ��б����/no")
end;

if (UTask_world30 == 0) and (UTask_world31 == 1) then 		--û���õ��������ݵ���
Say("��٣����⻹����Ҫ�������ݵĹ��ģ���Ը������", 2, "Ը��/a", "�һ��б����/no")
end;

if (UTask_world30 == 0) and (UTask_world31 == 0) then 		--û���õ��κ���
Say("��٣����ս��Ƶ�ԣ����ķ��࣬��վ�����ŵ����ֲ�������Ը���æ������ÿ�����Ŷ����г����ġ�",  2, "�ðɣ��Ҿ���һ��/yes", "���»��б����/no")
end;
	
end;


function yes()
Say("��٣�����ֻҪ�������ص���پͿ����ˣ���ѡ��ص㣺",  2, "�������ݵĹ���/a", "��������Ĺ���/b");
end;


function no()
end;


function a()
AddEventItem("�꾩�������ݵĹ���") 
Msg2Player("�õ�һ���������ݵĹ��ġ�")
SetTask(58, 1)
end;

function b()
AddEventItem("�꾩��������Ĺ���") 
Msg2Player("�õ�һ����������Ĺ��ġ�")
SetTask(59, 1)
end;