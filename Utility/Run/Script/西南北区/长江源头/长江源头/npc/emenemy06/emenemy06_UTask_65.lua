--description: ������ ����Դͷ��� ����ս������
--author: yuanlan	
--date: 2003/3/6



function emenemy06_UTask_65()

if ( HaveItem("����ָ��") == 0) then					--û������ָ��
	i = random(0,4)							--�õ�����ָ���ĸ�����20%
	if (i == 0) then  
		AddEventItem("����ָ��") 
		Msg2Player("�����ͣ��������ָ��")
		SetTask(1, 68)

	end
end;

end;