--description: ���������ƴ�30������
--author: yuanlan	
--date: 2003/3/5



function emnpc09_UTask_30()

Say("���ƴȣ�������<color=Red>���<color>�����ˣ��漱�����ˣ����ܰ���������", 2, "����Ѱ��/accept", "ûʱ��/refuse");
DelItem("���");				--��ֹ�ؽ��������Ҽ����������

end;


function accept()

Say("���ƴȣ�̫���ˣ��鷳�㵽<color=Red>��ɽ����<color>���ҿ���Ŷ��������ˣ�������<color=Red>����<color>������ü������������������������İ�����ߵġ�", 0);
SetTask(1, 35);

end;


function refuse()
end;


   








