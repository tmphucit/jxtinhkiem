--description: ������ǰ�� ����10������
--author: yuanlan	
--date: 2003/4/24



function twnpc02_UTask_10()

Say("�����������¼��뱾����ֵܰɣ�Ҫ����Ϊ�����������������ȥ<color=Red>�����������ɽ��<color>�õ�<color=Red>������Ѫʯ<color>�����е������������ս��", 2, "��Ȼ��/yes", "�����书��΢/no");

end;

function yes()
Say("�������ܺã��������ӣ�ȥ<color=Red>�����������ɽ��<color>�õ�<color=Red>������Ѫʯ<color>���������Ұɣ�", 0)
SetTask(3, 12)    			
end;

function no()
end;