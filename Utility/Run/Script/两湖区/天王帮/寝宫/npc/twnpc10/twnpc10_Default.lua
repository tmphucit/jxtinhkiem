--description: �������޹� ����������Ի�
--author: yuanlan	
--date: 2003/4/28


function twnpc10_Default()

UTask_tw = GetTask(3);

if (UTask_tw < 60) then								--��δ�ӳ�ʦ����
Say("���������˾����ϲ⣬һֱ��ͼ�߸�����ԭ���֣����������Լ��ֵܶ�����һ���ģ�����ô�ܻ��˵����أ�", 0)
end;				

if (UTask_tw > 60) and (UTask_tw < 66) then					--�Ѿ��ӵ���ʦ������δ���
Say("������<color=Red>���������顷<color>���ҷ���һ��<color=Red>����<color>�<color=Red>����<color>����<color=Red>���ݵ�����ĺ���<color>����Ҫ���ڵ����ҵ��򿪱����<color=Red>Կ��<color>����˿̾�����ȥ<color=Red>���ݵ�<color>����ȥ�ٻأ����С�ģ�", 0)
end;				

if (UTask_tw >= 70) then							--�Ѿ���ʦ
Say("�������뿪�����������Ժ����Ǹε����յĺ��ֵܣ�", 0)
end;				

end;



