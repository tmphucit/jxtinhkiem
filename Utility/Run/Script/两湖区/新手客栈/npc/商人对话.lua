--������ ���ֿ�ջ ���˶Ի�

function main(sel)

if (GetCurCamp()==0) and (GetCamp()==0)	then			--������Ӫ
	UTask_world12 = GetTask(40);
	UTask_world13 = GetTask(41);
	UTask_world14 = GetTask(42);
	UTask_world15 = GetTask(43);
	UTask_world16 = GetTask(44);
	UTask_world17 = GetTask(45);
	
	if (UTask_world15 == 0) then				--��һ�ε��
		SetTask(43, 1)
		if (UTask_world12 == 1) and (UTask_world13 == 1) and (UTask_world14 == 1) and (UTask_world16 == 1) and (UTask_world17 == 1) then					--�����һ�������
			Talk(2, "select", "���ˣ��������̵ģ��ɵľ��ǵ�����������⡣���ϴ���Ҳ���ⲻ�˵ġ�������ʵ�ˣ���СҲû����ʲô�������������������������Ķ�����վ������ֻҪ����վ�ĳ���˵���������ܴ��㵽������ȥ���ĳ������ȫ���㣬�����շ�Ҳ���ˡ�", "����һ���˳��Źֿ����ģ�������������һЩ�ò��ϵ�װ����һ�������ӣ�����ȥʹ�ɣ�")
			if (GetSeries() == 0) then		--��ϵ
				--AddItem(0, 0, 4, 1, 0, 0)
				--AddItem(0, 2, 4, 1, 0, 0)
				--Earn(100)
			end
			if (GetSeries() == 1) then		--ľϵ
				if (GetSex() == 0) then 	--��
					--AddItem(0, 1, 1, 1, 1, 0)
					--AddItem(0, 2, 4, 1, 1, 0)
					--Earn(100)
				else				--Ů
					--AddItem(0, 1, 2, 1, 1, 0)
					--AddItem(0, 2, 7, 1, 1, 0)
					--Earn(100)
				end										
			end
			if (GetSeries() == 2) then		--ˮϵ
				--AddItem(0, 0, 5, 1, 2, 0)
				--AddItem(0, 2, 7, 1, 2, 0)
				--Earn(100)				
			end
			if (GetSeries() == 3) then		--��ϵ
				if (GetSex() == 0) then 	--��
					--AddItem(0, 0, 2, 1, 3, 0)
					--AddItem(0, 2, 4, 1, 3, 0)
					--Earn(100)
				else				--Ů
					--AddItem(0, 0, 3, 1, 3, 0)
					--AddItem(0, 2, 7, 1, 3, 0)
					--Earn(100)
				end										
			end
			if (GetSeries() == 4) then		--��ϵ
				if (GetSex() == 0) then 	--��
					--AddItem(0, 0, 1, 1, 4, 0)
					--AddItem(0, 2, 4, 1, 4, 0)
					--Earn(100)
				else				--Ů
					--AddItem(0, 0, 0, 1, 4, 0)
					--AddItem(0, 2, 7, 1, 4, 0)
					--Earn(100)
				end										
			end
		else						--�������һ���������
			Say("���ˣ��������̵ģ��ɵľ��ǵ�����������⡣���ϴ���Ҳ���ⲻ�˵ġ�������ʵ�ˣ���СҲû����ʲô�������������������������Ķ�����վ������ֻҪ����վ�ĳ���˵���������ܴ��㵽������ȥ���ĳ������ȫ���㣬�����շ�Ҳ���ˡ�", 0)
		end
	return		
	end;


	if (UTask_world15 == 1) then				--�ǵ�һ�ε��
	Say("���ˣ�ֻҪ����վ�ĳ���˵���������ܴ��㵽������ȥ���ĳ������ȫ���㣬�����շ�Ҳ���ˡ�", 0)
	end;

else								--��������Ӫ
	Say("���ˣ�ֻҪ����վ�ĳ���˵���������ܴ��㵽������ȥ���ĳ������ȫ���㣬�����շ�Ҳ���ˡ�", 0)
end;

end;


function select()
--Msg2Player("�õ�һ�������Ӻ���������װ����")
end;