--description: ������ ������ɽ������10������ս������
--author: yuanlan	
--date: 2003/4/24



function twenemy01_UTask_12()

--i = random(0,1)							--����Ϊ50%
--if (i == 0) then 
	AddEventItem("��Ѫʯ")
	Msg2Player("�õ���Ѫʯһ�顣")
	if ( GetItemCount("��Ѫʯ") == 3 ) then			--��Ѫʯ��ĿΪ3
		SetTask(3, 15)
	end
--end

end;