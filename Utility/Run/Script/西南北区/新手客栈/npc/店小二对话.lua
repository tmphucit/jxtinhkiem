--���ϱ��� ���ֿ�ջ ��С���Ի�

function main(sel)

if (GetCurCamp()==0) and (GetCamp()==0)	then			--������Ӫ
	UTask_world06 = GetTask(34);
	UTask_world07 = GetTask(35);
	UTask_world08 = GetTask(36);
	UTask_world09 = GetTask(37);
	UTask_world10 = GetTask(38);
	UTask_world11 = GetTask(39);

	if (UTask_world07 == 0) then				--��һ�ε��
		SetTask(35, 1)
		if (UTask_world06 == 1) and (UTask_world08 == 1) and (UTask_world09 == 1) and (UTask_world10 == 1) and (UTask_world11 == 1) then					--�����һ���������
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

	if (UTask_world07 == 1) then				--�ǵ�һ�ε��	
	Say("��С������Բ���������ôһ�ҿ�ջ����Ҫ�����Ĵ����ߣ�ֻҪ��һ��TAB�������ϸ����ĵ�ͼ�������ﰡʲô�Ķ���ʾ�����ˣ���Ҫ����С��Ҳ�У��ٰ�һ��TAB���ԣ��������ӵĵ������Ͼ�һ������ˣ�����ú��ģ�", 0)
	end;

else								--��������Ӫ
	Say("��С�����͹�Ҫʲô�Ը���", 0)
end;

end;


function select()
--Msg2Player("�õ�һ�������Ӻ���������װ����")
end;