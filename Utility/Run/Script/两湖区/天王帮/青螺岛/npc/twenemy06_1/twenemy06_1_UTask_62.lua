--description: ���ݵ����˳�ʦ����ս������
--author: yuanlan	
--date: 2003/4/28



function twenemy06_1_UTask_62()	

if ( HaveItem("������Կ��") == 0) then	
	i = random(0,1)							--����Ϊ50%
	if (i == 0) then 
		AddEventItem("������Կ��")
		Msg2Player("�õ�һ��Կ�ס�")
	end
end;	

end;