--description: ��������ʹ���20������
--author: yuanlan	
--date: 2003/4/25


function twnpc03_UTask_25()

if ( HaveItem(92) == 1 ) then		
	Say(11697 , 0)
	DelItem(92)
	SetRank(45)
	SetTask(3, 30)
	AddMagic(31)
	AddMagic(32)
	AddMagic(33)
	Msg2Player("��ϲ�㣡���Ѿ���Ϊ��կ�����ˣ�")
	Msg2Player("ѧ���������书�����ƾ�����")
	Msg2Player("ѧ���������书������ն����")
	Msg2Player("ѧ���������书�����ľ�����")
else								
	Say(11698 , 0)
end

end;
