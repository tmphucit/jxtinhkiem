--���ϱ��� �ɶ��� ��վ��ٶԻ� ������������

function main(sel)

--����

UTask_world29 = GetTask(57);
UTask_world32 = GetTask(60);

if (UTask_world29 == 1) then 
	if ( HaveItem("���������ɶ��Ĺ���") == 1) then				
		DelItem("���������ɶ��Ĺ���")
		        
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
        	
        	Msg2Player("�ͳ����������Ĺ��ģ��õ�������")
        	SetTask(57, 0)
	end
end;	
	
if (UTask_world32 == 1) then 
	if ( HaveItem("���������ɶ��Ĺ���") == 1) then				--����
		DelItem("���������ɶ��Ĺ���")
		        
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
        	
        	Msg2Player("�ͳ����ݴ����Ĺ��ģ��õ�������")
        	SetTask(60, 0)
	end
end;	
	
	
--����   

UTask_world24 = GetTask(52);
UTask_world25 = GetTask(53);

if (UTask_world24 == 1) and (UTask_world25 == 1) then 		--��ȫ�����ܵ���
Say("��٣����Ķ��͵�����", 0)
end;

if (UTask_world24 == 1) and (UTask_world25 == 0) then 		--û���õ������꾩����
Say("��٣����⻹����Ҫ�����꾩�Ĺ��ģ���Ը������", 2, "Ը��/b", "�һ��б����/no")
end;

if (UTask_world24 == 0) and (UTask_world25 == 1) then 		--û���õ������ٰ�����
Say("��٣����⻹����Ҫ�����ٰ��Ĺ��ģ���Ը������", 2, "Ը��/a", "�һ��б����/no")
end;

if (UTask_world24 == 0) and (UTask_world25 == 0) then 		--û���õ��κ���
Say("��٣����ս��Ƶ�ԣ����ķ��࣬��վ�����ŵ����ֲ�������Ը���æ������ÿ�����Ŷ����г����ġ�",  2, "�ðɣ��Ҿ���һ��/yes", "���»��б����/no")
end;
	
end;


function yes()
Say("��٣�����ֻҪ�������ص���پͿ����ˣ���ѡ��ص㣺",  2, "�����ٰ��Ĺ���/a", "�����꾩�Ĺ���/b");
end;


function no()
end;


function a()
AddEventItem("�ɶ������ٰ��Ĺ���") 
Msg2Player("�õ�һ�������ٰ��Ĺ��ġ�")
SetTask(52, 1)
end;

function b()
AddEventItem("�ɶ������꾩�Ĺ���") 
Msg2Player("�õ�һ�������꾩�Ĺ��ġ�")
SetTask(53, 1)
end;