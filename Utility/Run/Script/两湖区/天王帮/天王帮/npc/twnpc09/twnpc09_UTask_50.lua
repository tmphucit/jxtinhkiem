--description: ������ػ����ĳ�50������
--author: yuanlan	
--date: 2003/4/28


function twnpc09_UTask_50()

Say("�ĳϣ����ˮկ��ʢ����ͥ������<color=Red>ˮ��<color>�������˸���������񣬸�����Ļ̻̣���Ը��ȥ����һ���������", 2, "Ը��/yes", "����������/no");
DelItem("���ʯ")					--��ֹ�ؽ��������Ҽ����������

end;

function yes()
Say("�ĳϣ��кü����˿���<color=Red>ˮ��<color>����<color=Red>����<color>�ĺ����û����������ͷ�����и�<color=Red>ͨ����ͥ���׵�ɽ��<color>���һ��ɶ����йŹ֡�", 0)
SetTask(3, 52)    			
end;

function no()
end;