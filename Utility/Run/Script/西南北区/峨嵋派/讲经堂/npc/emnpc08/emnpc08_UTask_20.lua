--description: ����������20������
--author: yuanlan	
--date: 2003/3/4



function emnpc08_UTask_20()

Say("���磺���<color=Red>��ɽɽ��<color>����<color=Red>�ͻ�<color>��û���˺��˲�����ɽ����İ��գ�������Ϊ�����ӵܣ������ۿ��ͻ����˶���֮�����أ���Ը��ȥ�շ���Щ����", 2, "Ը��/accept", "��������/refuse");

end;


function accept()

Say("���磺��������������ֻҪ�շ���<color=Red>����<color>��������ͻ���Ȼ����Ϊ���������������ӣ�������շ���<color=Red>����<color>�����Ż�����������", 0);
SetTask(1, 25);

end;


function refuse()
end;


   








