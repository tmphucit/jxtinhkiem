--�������� ���踮 ��վ��ٶԻ� ������������

function main(sel)

--����

UTask_world28 = GetTask(56);
UTask_world33 = GetTask(61);

if (UTask_world28 == 1) then 
	if ( HaveItem("������������Ĺ���") == 1) then				
		DelItem("������������Ĺ���")
		        
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
        	SetTask(56, 0)
	end
end;	
	
if (UTask_world33 == 1) then 
	if ( HaveItem("������������Ĺ���") == 1) then				--����
		DelItem("������������Ĺ���")
		        
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
        	SetTask(61, 0)
	end
end;	
	
	
--����   

UTask_world22 = GetTask(50);
UTask_world23 = GetTask(51);

if (UTask_world22 == 1) and (UTask_world23 == 1) then 		--��ȫ�����ܵ���
Say("��٣����Ķ��͵�����", 0)
end;

if (UTask_world22 == 1) and (UTask_world23 == 0) then 		--û���õ������ٰ�����
Say("��٣����⻹����Ҫ�����ٰ��Ĺ��ģ���Ը������", 2, "Ը��/b", "�һ��б����/no")
end;

if (UTask_world22 == 0) and (UTask_world23 == 1) then 		--û���õ������������
Say("��٣����⻹����Ҫ��������Ĺ��ģ���Ը������", 2, "Ը��/a", "�һ��б����/no")
end;

if (UTask_world22 == 0) and (UTask_world23 == 0) then 		--û���õ��κ���
Say("��٣����ս��Ƶ�ԣ����ķ��࣬��վ�����ŵ����ֲ�������Ը���æ������ÿ�����Ŷ����г����ġ�",  2, "�ðɣ��Ҿ���һ��/yes", "���»��б����/no")
end;
	
end;


function yes()
Say("��٣�����ֻҪ�������ص���پͿ����ˣ���ѡ��ص㣺",  2, "��������Ĺ���/a", "�����ٰ��Ĺ���/b");
end;


function no()
end;


function a()
AddEventItem("������������Ĺ���") 
Msg2Player("�õ�һ����������Ĺ��ġ�")
SetTask(50, 1)
end;

function b()
AddEventItem("���������ٰ��Ĺ���") 
Msg2Player("�õ�һ�������ٰ��Ĺ��ġ�")
SetTask(51, 1)
end;