--description: �䵱�ɵ�˼��50������
--author: yuanlan	
--date: 2003/5/16



function wdnpc08_UTask_50()
Say("��˼�ϣ����ɵ����������������£���Ϊ�䵱���ӣ���Ӧ����һ�ơ����<color=Red>��ţɽ���Ķ�<color>������һȺ���ˣ�Ϊ�׵Ľ�<color=Red>����<color>������ר���������������ã���Ը��ȥΪ�������", 2, "�岻�ݴ�/yes", "���ѵ�������/no");
end;


function yes()
Say("��˼�ϣ��ܺã�����Ҫ��ס�����õ�<color=Red>����<color>Ҫȫ�����<color=Red>������<color>�������ϰ��ա�", 0);
SetTask(5, 52);	
end;

function no()
Say("��˼�ϣ������������ҵ�ϰ��֮���岻�ݴǵ����Σ���ι����ѣ�", 0);
end;




