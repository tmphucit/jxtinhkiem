--���ϱ��� ���ֿ�ջ �ƹ�Ի�

function main(sel)

if (GetCurCamp()==0) and (GetCamp()==0)	then			--������Ӫ
	UTask_world06 = GetTask(34);
	UTask_world07 = GetTask(35);
	UTask_world08 = GetTask(36);
	UTask_world09 = GetTask(37);
	UTask_world10 = GetTask(38);
	UTask_world11 = GetTask(39);

	if (UTask_world06 == 0) then				--��һ�ε��
		SetTask(34, 1)
		if (UTask_world07 == 1) and (UTask_world08 == 1) and (UTask_world09 == 1) and (UTask_world10 == 1) and (UTask_world11 == 1) then					--�����һ���������
			Say("�ƹ񣺺Ǻǣ��͹ٿ����ǵ�һ�γ��Űɣ������������ս�����أ��㲻����Ҫ���飬������һ���׻�����װ�����У�����Ҳ�����٣�ûǮ�ɴ粽���а����������е�װ���������͸��㣬ϣ���������а�����", 1, "��л����/ok")
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
			Say("�ƹ񣺺Ǻǣ��͹ٿ����ǵ�һ�γ��Űɣ������������С�ط�����Ҳ�ǵش�Ҫ���������������˶���ȥ�ˣ�������է���ģ�û�¶�������ϵ������ģ�������ѧ�����ٶ����ء�", 0)
		end
	return				
	end;

	if (UTask_world06 == 1) then				--�ǵ�һ�ε��	
	Say("�ƹ������������С�ط�����Ҳ�ǵش�Ҫ���������������˶���ȥ�ˣ���û�¶�������ϵ������ģ�������ѧ�����ٶ����ء�", 0)
	end;

else								--��������Ӫ
	Say("�ƹ������������С�ط�����Ҳ�ǵش�Ҫ���������������˿ɶ���ȥ�ˡ�", 0)
end;

end;


function ok()
--Msg2Player("�õ�һ�������Ӻ���������װ����")
end;