--���ϱ��� ���ֿ�ջ ���ͶԻ�

function main(sel)

if (GetCurCamp()==0) and (GetCamp()==0)	then			--������Ӫ
	UTask_world06 = GetTask(34);
	UTask_world07 = GetTask(35);
	UTask_world08 = GetTask(36);
	UTask_world09 = GetTask(37);
	UTask_world10 = GetTask(38);
	UTask_world11 = GetTask(39);

	if (UTask_world11 == 0) then				--��һ�ε��
		SetTask(39, 1)
		if (UTask_world06 == 1) and (UTask_world07 == 1) and (UTask_world08 == 1) and (UTask_world09 == 1) and (UTask_world10 == 1) then					--�����һ���������
			Talk(3, "select", "���ͣ���һ�δ������𣿺Ǻǣ���������񿴵��������һ����������ʢ��", "����Ľ������Ҳ����������֮ѡ��ֻ�ǽ���������ǳ�������̽�����ôװ�������ɣ��򿪵������Ϳ��Կ������װ���ˣ�����������ק���ֲ��Ϳ���װ���ˡ�", "��Ҷ��ǽ������ˣ�����潭������û�����ɲ�����ģ���������һЩװ���������͸��㣬��������պ�����������")
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
			Say("���ͣ���һ�δ������𣿺Ǻǣ���������񿴵��������һ����������ʢ������Ľ������Ҳ����������֮ѡ��ֻ�ǽ���������ǳ�������̽�����ôװ�������ɣ��򿪵������Ϳ��Կ������װ���ˣ�����������ק���ֲ��Ϳ���װ���ˡ�", 0)
		end
	return	
	end;

	if (UTask_world11 == 1) then				--�ǵ�һ�ε��	
	Say("���ͣ�����Ľ������Ҳ����������֮ѡ��ֻ�ǽ���������ǳ�������̽�����ôװ�������ɣ��򿪵������Ϳ��Կ������װ���ˣ�����������ק���ֲ��Ϳ���װ���ˡ�", 0)
	end;

else								--��������Ӫ
	Say("���ͣ�ͬ�����������ˣ����α�����ʶ��", 0)
end;

end;


function select()
--Msg2Player("�õ�һ�������Ӻ���������װ����")
end;