--��ԭ���� ���ݸ� ��վ��ٶԻ� ������������

function main(sel)

--����

UTask_world27 = GetTask(55);
UTask_world30 = GetTask(58);

if (UTask_world27 == 1) then 
	if ( HaveItem("�����������ݵĹ���") == 1) then				
		DelItem("�����������ݵĹ���")
		        
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
        	
        	Msg2Player("�ͳ���������Ĺ��ģ��õ�������")
        	SetTask(55, 0)
	end
end;	
	
if (UTask_world30 == 1) then 
	if ( HaveItem("�꾩�������ݵĹ���") == 1) then				--����
		DelItem("�꾩�������ݵĹ���")
		        
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
        	
        	Msg2Player("�ͳ��꾩�����Ĺ��ģ��õ�������")
        	SetTask(58, 0)
	end
end;	
	
	
--����   

UTask_world32 = GetTask(60);
UTask_world33 = GetTask(61);

if (UTask_world32 == 1) and (UTask_world33 == 1) then 		--��ȫ�����ܵ���
Say("��٣����Ķ��͵�����", 0)
end;

if (UTask_world32 == 1) and (UTask_world33 == 0) then 		--û���õ������������
Say("��٣����⻹����Ҫ��������Ĺ��ģ���Ը������", 2, "Ը��/b", "�һ��б����/no")
end;

if (UTask_world32 == 0) and (UTask_world33 == 1) then 		--û���õ������ɶ�����
Say("��٣����⻹����Ҫ�����ɶ��Ĺ��ģ���Ը������", 2, "Ը��/a", "�һ��б����/no")
end;

if (UTask_world32 == 0) and (UTask_world33 == 0) then 		--û���õ��κ���
Say("��٣����ս��Ƶ�ԣ����ķ��࣬��վ�����ŵ����ֲ�������Ը���æ������ÿ�����Ŷ����г����ġ�",  2, "�ðɣ��Ҿ���һ��/yes", "���»��б����/no")
end;
	
end;


function yes()
Say("��٣�����ֻҪ�������ص���پͿ����ˣ���ѡ��ص㣺",  2, "�����ɶ��Ĺ���/a", "��������Ĺ���/b");
end;


function no()
end;


function a()
AddEventItem("���������ɶ��Ĺ���") 
Msg2Player("�õ�һ�������ɶ��Ĺ��ġ�")
SetTask(60, 1)
end;

function b()
AddEventItem("������������Ĺ���") 
Msg2Player("�õ�һ����������Ĺ��ġ�")
SetTask(61, 1)
end;



