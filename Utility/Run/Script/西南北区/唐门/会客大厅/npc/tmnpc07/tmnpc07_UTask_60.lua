--description: �����Ƴ� ��ʦ����
--author: yuanlan	
--date: 2003/3/13



function tmnpc07_UTask_60()

Say("�Ƴ����ڱ���ѧ�ն�ʱ��ΪʦҪ��һ���㣬�����������һ��<color=Red>��˿��<color>��������ܹ���<color=Red>��˿��<color>��ȡ��һ��<color=Red>���Ǿ�����<color>���Ϳ���˳����ʦ�ˡ�", 2, "���ܿ���/accept", "�ݲ�����/refuse");
DelItem("���Ǿ�����")							--��ֹ�ؽ��������Ҽ����������
end;


function accept()
SetTask(2, 62);
end;


function refuse()
end;




	


