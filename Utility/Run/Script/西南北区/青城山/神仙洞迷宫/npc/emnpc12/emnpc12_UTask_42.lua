--description: �����ɸ���40������
--author: yuanlan	
--date: 2003/3/5



function emnpc12_UTask_42()

Task0002 = GetTaskTemp(2)

if (Task0002 == 1) then						--�Ѿ���ܹ���BOSS
	Say("���ˣ���Ҫ���ף��û�������<color=Red>��ܽ�ؽ���ͼ��<color>�������˻�������<color=Red>�ɶ���̫ƽ�ھ�<color>����б������������", 0)
	SetTask(1, 44)
else								--��δ��ܹ���BOSS
	Say("���ˣ���ʲô�£��ȴ��������<color=Red>����<color>��˵��", 0)
end;


end;


   








