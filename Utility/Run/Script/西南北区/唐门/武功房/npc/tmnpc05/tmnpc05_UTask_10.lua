--description: �����ƺ� 10������
--author: yuanlan	
--date: 2003/3/10



function tmnpc05_UTask_10()

Say("�ƺף����ձ���������<color=Red>�ɶ���<color>���µ�ʱ�򣬲�С�ı�����͵���˱��ŵĶ��Ű���<color=Red>ħ����<color>������������Ŵ�������˭Ҫ���ܰﱾ���һ�ħ���룬�����������ͣ�", 2, "����Ѱ��/accept", "��������/refuse");
DelItem("ħ����")							--��ֹ�ؽ��������Ҽ����������

end;


function accept()
Say("�ƺף�<color=Red>ħ����<color>����<color=Red>�ɶ���<color>��ʧ�ģ�������ȵ����ﰵ�д���һ�������ˣ��㻹û�м���<color=Red>ħ����<color>�ɣ�����һ��������һ����ϸ�룬ͨ����ڡ�", 0)
SetTask(2, 12);
end;


function refuse()
Say("�ƺף����Ű�����ʧ������ô��˵���������أ�", 0)
end;



	


