--��ԭ���� ������ ��վ��ٶԻ� ������������

function main(sel)

--����

UTask_world26 = GetTask(54);
UTask_world35 = GetTask(63);

if (UTask_world26 == 1) then 
	if ( HaveItem("�������������Ĺ���") == 1) then				
		DelItem("�������������Ĺ���")
		        
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
        	SetTask(54, 0)
	end
end;	
	
if (UTask_world35 == 1) then 
	if ( HaveItem("�ٰ����������Ĺ���") == 1) then				--����
		DelItem("�ٰ����������Ĺ���")
		        
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
        	SetTask(63, 0)
	end
end;	
	
	
--����   

UTask_world28 = GetTask(56);
UTask_world29 = GetTask(57);

if (UTask_world28 == 1) and (UTask_world29 == 1) then 		--��ȫ�����ܵ���
Say("��٣����Ķ��͵�����", 0)
end;

if (UTask_world28 == 1) and (UTask_world29 == 0) then 		--û���õ������ɶ�����
Say("��٣����⻹����Ҫ�����ɶ��Ĺ��ģ���Ը������", 2, "Ը��/b", "�һ��б����/no")
end;

if (UTask_world28 == 0) and (UTask_world29 == 1) then 		--û���õ������������
Say("��٣����⻹����Ҫ��������Ĺ��ģ���Ը������", 2, "Ը��/a", "�һ��б����/no")
end;

if (UTask_world28 == 0) and (UTask_world29 == 0) then 		--û���õ��κ���
Say("��٣����ս��Ƶ�ԣ����ķ��࣬��վ�����ŵ����ֲ�������Ը���æ������ÿ�����Ŷ����г����ġ�",  2, "�ðɣ��Ҿ���һ��/yes", "���»��б����/no")
end;
	
end;


function yes()
Say("��٣�����ֻҪ�������ص���پͿ����ˣ���ѡ��ص㣺",  2, "��������Ĺ���/a", "�����ɶ��Ĺ���/b");
end;


function no()
end;


function a()
AddEventItem("������������Ĺ���") 
Msg2Player("�õ�һ����������Ĺ��ġ�")
SetTask(56, 1)
end;

function b()
AddEventItem("���������ɶ��Ĺ���") 
Msg2Player("�õ�һ�������ɶ��Ĺ��ġ�")
SetTask(57, 1)
end;




