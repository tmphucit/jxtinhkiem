--description: �䵱�ɵ�һ���˳�ʦ����
--author: yuanlan	
--date: 2003/5/17



function wdnpc02_UTask_60()
Say("��һ���ˣ��ں�ɽ<color=Red>̫����<color>����<color=Red>��������<color>��ÿ�����䶼��һ�������ӡ�ţ����������ɷ�������ע�������񣬾Ϳ��Դ򿪱��䣬��������б��ɵ�<color=Red>��������<color>���ܹ�ȡ�ñ����߷��ܳ�ʦ��", 2, "��������/accept", "�ݲ���ʦ/refuse");
DelItem("�����澭")
DelItem("�����澭")
DelItem("̫���澭")						--��ֹ�ؽ��������Ҽ����������
end;

function accept()
Say("��һ���ˣ������򿪺�ɽ<color=Red>̫����<color>�ϵ�<color=Red>��������<color>���õ������<color=Red>��������<color>������˳����ʦ��", 0);
SetTask(5, 62);	
end;

function refuse()
Say("��һ���ˣ�Ҳ�ã���������䵱��ѧ��һ��ʱ�հɡ�", 0);
end;

