--description: ����ɽ ���������� ������40������ս������
--author: yuanlan	
--date: 2003/4/26



function twenemy04_UTask_45()

if ( HaveItem("��������Ƭ") == 0) then				--��û�еõ���������Ƭ
	i = random(0,1)						--����Ϊ50%
	if (i == 0) then 
		AddEventItem("��������Ƭ")
		Msg2Player("�õ����������Ƭ��")
		if ( HaveItem("��ë��") == 1) then 		--�õ���������Ƭ���ж���û����ë�꣬�Ƿ�����ҩ�����õ�
			Say("����ҩ�������ҵ����Ͻ�ȥ��������·��Զ�ϻ����ɣ�", 0)
			SetTask(3, 48)	
		end
	end
end;

end;