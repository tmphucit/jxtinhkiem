--description: �����������µ�������ս������
--author: yuanlan	
--date: 2003/3/4



function emenemy01_UTask_enroll()

if ( HaveItem("��������") == 0) then					--û�а�������
	AddEventItem("��������") 
	Msg2Player("�õ���������")
	SetTask(1, 8)							--��ʱ����
end;

end;