--������ ���ֿ�ջ ��С���Ի�

function main(sel)

if (GetCurCamp()==0) and (GetCamp()==0)	then			--������Ӫ
	UTask_world12 = GetTask(40);
	UTask_world13 = GetTask(41);
	UTask_world14 = GetTask(42);
	UTask_world15 = GetTask(43);
	UTask_world16 = GetTask(44);
	UTask_world17 = GetTask(45);
	
	if (UTask_world13 == 0) then				--��һ�ε��
		SetTask(41, 1)
		if (UTask_world12 == 1) and (UTask_world14 == 1) and (UTask_world15 == 1) and (UTask_world16 == 1) and (UTask_world17 == 1) then					--�����һ���������
			Talk(5, "select", "��С�����͹���ʲô�Ը���", "��ң�����һ�£��⸽������ʲô��ȥ����", "��С�����٣���Բ����Ҳ������ôһ����ջ�ˣ�������Ҫ�����Ĵ�����Ҳ�У������ţ�ֻҪ��һ��TAB�������ϸ����ĵ�ͼ�������ﰡʲô�Ķ���ʾ�����ˡ�", "��Ҫ����С��Ҳ�У��ٰ�һ��TAB���ԣ��������ӵĵ������Ͼ�һ������ˣ�����ú��ģ�", "��Ҫ�����������������е�װ���������͸�����ϣ���������а�����")
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
			Talk(4, "", "��С�����͹���ʲô�Ը���", "��ң�����һ�£��⸽������ʲô��ȥ����", "��С�����٣���Բ����Ҳ������ôһ����ջ�ˣ�������Ҫ�����Ĵ�����Ҳ�У������ţ�ֻҪ��һ��TAB�������ϸ����ĵ�ͼ�������ﰡʲô�Ķ���ʾ�����ˡ�", "��Ҫ����С��Ҳ�У��ٰ�һ��TAB���ԣ��������ӵĵ������Ͼ�һ������ˣ�����ú��ģ�")
		end
	return		
	end;

	if (UTask_world13 == 1) then				--�ǵ�һ�ε��	
	Say("��С������Բ���������ôһ�ҿ�ջ����Ҫ�����Ĵ����ߣ�ֻҪ��һ��TAB�������ϸ����ĵ�ͼ�������ﰡʲô�Ķ���ʾ�����ˣ���Ҫ����С��Ҳ�У��ٰ�һ��TAB���ԣ��������ӵĵ������Ͼ�һ������ˣ�����ú��ģ�", 0)
	end;

else								--��������Ӫ
	Say("��С�����͹�Ҫʲô�Ը���", 0)
end;

end;



function select()
--Msg2Player("�õ�һ�������Ӻ���������װ����")
end;