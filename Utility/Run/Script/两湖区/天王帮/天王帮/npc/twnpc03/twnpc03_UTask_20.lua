--description: ��������ʹ���20������
--author: yuanlan	
--date: 2003/4/25


function twnpc03_UTask_20()

Say("�������̽�ӻر���˵<color=Red>����ɽ<color>���������һЩ<color=Red>����<color>��ð�����������ͷ��ҽ��ᣬ����Թ���ص����¹ر�����������Ը��ȥһ̽���˵ĳ�Ѩ��", 2, "���������Դ�/yes", "���ѵ�������/no");
DelItem("һ�����")					--��ֹ�ؽ��������Ҽ����������

end;

function yes()
Say("������ǰ�<color=Red>����<color>������<color=Red>����ɽ����<color>��<color=Red>��ˮ��<color>������û��", 0)
SetTask(3, 25)    			
end;

function no()
end;