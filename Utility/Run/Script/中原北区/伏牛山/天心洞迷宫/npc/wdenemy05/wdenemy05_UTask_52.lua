--description: ��ţɽ ���Ķ��Թ�����50������ս������
--author: yuanlan	
--date: 22003/5/16



function wdenemy05_UTask_52()

UTask_wdsub05 = GetTask(20);

if ( UTask_wdsub05 == 0) then						--�Ƿ��һ�εõ�����
	i = random(0,1)							--����Ϊ50%
	if (i == 0) then 
		Earn(10000)
		Msg2Player("��ܵ���ͷĿ�������õ������Ǵ������һ�������ӡ�")
		SetTask(20, 1)
		SetTask(5, 55)
	end
end

end;