--description: ������ػ����ĳϷ�����Ի�
--author: yuanlan	
--date: 2003/4/28


function twnpc09_Default()

UTask_tw = GetTask(3);

if (UTask_tw < 50) then								--��δ��50������
Say("�ĳϣ����������ϳ����������â����֪�����Ǽ�����", 0)
end;				

if (UTask_tw > 50) and (UTask_tw < 55) then					--�Ѿ��ӵ�50��������δ���
Say("�ĳϣ��кü����˿���<color=Red>ˮ��<color>����<color=Red>����<color>�ĺ����û����������ͷ�����и�<color=Red>ͨ����ͥ���׵�ɽ��<color>���һ��ɶ����йŹ֡�", 0)
end;				

if (UTask_tw > 55) and (UTask_tw < 70) then					--�Ѿ����50��������δ��ʦ
Say("�ĳϣ�������¾��Ʒ��ң���Ը���ӱ��", 0)
end;				

if (UTask_tw >= 70) then							--�Ѿ���ʦ
Say("�ĳϣ�һ��Ϊ�ֵܣ����������㣬��Ҫ�ౣ�أ�", 0)
end;				

end;



