--���ϱ��� ���ֿ�ջ ���˶Ի�

function main(sel)

if (GetCurCamp()==0) and (GetCamp()==0)	then			--������Ӫ
	UTask_world06 = GetTask(34);
	UTask_world07 = GetTask(35);
	UTask_world08 = GetTask(36);
	UTask_world09 = GetTask(37);
	UTask_world10 = GetTask(38);
	UTask_world11 = GetTask(39);

	if (UTask_world09 == 0) then				--��һ�ε��
		SetTask(37, 1)
		if (UTask_world06 == 1) and (UTask_world07 == 1) and (UTask_world08 == 1) and (UTask_world10 == 1) and (UTask_world11 == 1) then					--�����һ���������
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


	if (UTask_world09 == 1) then				--�ǵ�һ�ε��
	Say("���ˣ�ֻҪ����վ�ĳ���˵���������ܴ��㵽������ȥ���ĳ������ȫ���㣬�����շ�Ҳ���ˡ�", 0)
	end;

else								--��������Ӫ
	Say("���ˣ�ֻҪ����վ�ĳ���˵���������ܴ��㵽������ȥ���ĳ������ȫ���㣬�����շ�Ҳ���ˡ�", 0)
end;

end;


function select()
--Msg2Player("�õ�һ�������Ӻ���������װ����")
end;