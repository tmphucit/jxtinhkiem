--description: ���̽��һ���Ү�ɱ��������Ի�
--author: yuanlan	
--date: 2003/5/19


function trnpc07_Default()

UTask_tr = GetTask(4);

if (UTask_tr < 10) then								--��δ����
Say("�һ���Ү�ɱ��룺����ʲô�ˣ��ѵ�����ԭ�ļ�ϸ��", 0)
end;

if (UTask_tr >= 10) and (UTask_tr < 40) then					--��δ��40������
Say("�һ���Ү�ɱ��룺����ǧ�գ�����һʱ��ֻҪȫ��ȫ��Ϊ����Ч�������̲��������ģ�", 0)
end;				

if (UTask_tr > 40) and (UTask_tr < 45) then					--�Ѿ��ӵ�40��������δ���
Say("�һ���Ү�ɱ��룺�ݱ�<color=Red>����<color>�����Ѿ�����<color=Red>�������<color>��<color=Red>���ƶ�<color>������һ�����θ��ӣ�����Ի���Ǯ��<color=Red>��̳��<color>����ȥ, ��ȥ�ٻأ�", 0)
end;				

if (UTask_tr >= 50) and (UTask_tr < 70) then					--�Ѿ����40��������δ��ʦ
Say("�һ���Ү�ɱ��룺���ѱ����ߣ��ٺ٣����ǻ������������ܣ��������ã�", 0)
end;				

if (UTask_tr >= 70) then							--�Ѿ���ʦ
Say("�һ���Ү�ɱ��룺�����û�У������ڴ˵أ�����������ԭ��", 0)
end;				


end;



