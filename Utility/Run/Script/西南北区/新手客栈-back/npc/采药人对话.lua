--���ϱ��� ���ֿ�ջ ��ҩ�˶Ի�

function main(sel)

if (GetCurCamp()==0) and (GetCamp()==0)	then			--������Ӫ
	UTask_world06 = GetTask(34);
	UTask_world07 = GetTask(35);
	UTask_world08 = GetTask(36);
	UTask_world09 = GetTask(37);
	UTask_world10 = GetTask(38);
	UTask_world11 = GetTask(39);

	if (UTask_world10 == 0) then				--��һ�ε��
		SetTask(38, 1)
		if (UTask_world06 == 1) and (UTask_world07 == 1) and (UTask_world08 == 1) and (UTask_world09 == 1) and (UTask_world011 == 1) then					--�����һ���������
			Talk(2, "", 10626, 10627)
			if (GetSeries() == 0) then		--��ϵ
				AddItem(0, 0, 4, 1, 0, 0)
				AddItem(0, 2, 4, 1, 0, 0)
				Earn(100)
			end
			if (GetSeries() == 1) then		--ľϵ
				if (GetSex() == 0) then 	--��
					AddItem(0, 1, 1, 1, 1, 0)
					AddItem(0, 2, 4, 1, 1, 0)
					Earn(100)
				else				--Ů
					AddItem(0, 1, 2, 1, 1, 0)
					AddItem(0, 2, 7, 1, 1, 0)
					Earn(100)
				end										
			end
			if (GetSeries() == 2) then		--ˮϵ
				AddItem(0, 0, 5, 1, 2, 0)
				AddItem(0, 2, 7, 1, 2, 0)
				Earn(100)				
			end
			if (GetSeries() == 3) then		--��ϵ
				if (GetSex() == 0) then 	--��
					AddItem(0, 0, 2, 1, 3, 0)
					AddItem(0, 2, 4, 1, 3, 0)
					Earn(100)
				else				--Ů
					AddItem(0, 0, 3, 1, 3, 0)
					AddItem(0, 2, 7, 1, 3, 0)
					Earn(100)
				end										
			end
			if (GetSeries() == 4) then		--��ϵ
				if (GetSex() == 0) then 	--��
					AddItem(0, 0, 1, 1, 4, 0)
					AddItem(0, 2, 4, 1, 4, 0)
					Earn(100)
				else				--Ů
					AddItem(0, 0, 0, 1, 4, 0)
					AddItem(0, 2, 7, 1, 4, 0)
					Earn(100)
				end										
			end
		else						--�������һ���������
			Say(10628 , 0)
		end	
	end;

	if (UTask_world10 == 1) then				--�ǵ�һ�ε��	
		Say(10629 , 0)
	end;

else								--��������Ӫ
	Say(10630 , 0)
end;

end;



