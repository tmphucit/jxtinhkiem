--description: ��������ʹ���������Ի�
--author: yuanlan	
--date: 2003/4/25


function twnpc03_Default()

UTask_tw = GetTask(3);

if (UTask_tw < 20) then								--��δ��20������
Say("����������������������⣬������Щ��С֮��ð�䱾����ӣ�������Ϊ��������", 0)
end;				

if (UTask_tw > 20) and (UTask_tw < 28) then					--�Ѿ��ӵ�20��������δ���
Say("������ǰ�<color=Red>����<color>������<color=Red>����ɽ����<color>��<color=Red>��ˮ��<color>������û��", 0)
end;				

if (UTask_tw > 28) and (UTask_tw < 70) then					--�Ѿ����20��������δ��ʦ
Say("������������������ϰ��մ�����������Ҫ��ס�������������书��������ѹ���յ��о���������", 0)
end;				

if (UTask_tw >= 70) then							--�Ѿ���ʦ
Say("��������ļ�������ֻҪ����̹�����������εض���������գ������ĵ��������ߵ����ﶼ���˼�������", 0)
end;				

end;



