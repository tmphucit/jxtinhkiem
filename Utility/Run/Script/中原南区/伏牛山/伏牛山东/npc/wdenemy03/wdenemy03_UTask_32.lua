--description: ��ţɽ�������䵱��30������ս������
--author: yuanlan	
--date: 22003/5/15



function wdenemy03_UTask_32()

AddEventItem("��ü��")
Msg2Player("�õ�һ�껭ü�ݡ�")
if ( GetItemCount("��ü��") == 5 ) then			--��ü����ĿΪ5
	SetTask(5, 35)
end

end;