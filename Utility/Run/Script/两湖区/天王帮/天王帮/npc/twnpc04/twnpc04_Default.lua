--description: ��������ʹ�Űط�����Ի�
--author: yuanlan	
--date: 2003/4/25


function twnpc04_Default()

UTask_tw = GetTask(3);

if (UTask_tw < 30) then								--��δ��30������
Say("�Űأ��𿴰����Ǹ�Ů��֮�������������������ʩ���ͷ�������������ж�ͦ��η���ġ�", 0)
end;				

if (UTask_tw > 30) and (UTask_tw < 35) then					--�Ѿ��ӵ�30��������δ���
Say("�Űأ�<color=Red>������<color>����<color=Red>�������Ӷ�<color>��ʧ�ģ�������ܰ����һ������ұ��������ƶ�ͷ�졣", 0)
end;				

if (UTask_tw > 35) and (UTask_tw < 70) then					--�Ѿ����30��������δ��ʦ
Say("�Űأ����ֵܣ���ɰ�����һ����æ����", 0)
end;				

if (UTask_tw >= 70) then							--�Ѿ���ʦ
Say("�Űأ�����������˳����������ֵ��ǣ�", 0)
end;				

end;



