--description: �䵱������Ȫ40������
--author: yuanlan	
--date: 2003/5/15



function wdnpc06_UTask_40()

Say("����Ȫ�����ܰ���һ��æ������Ҫ��ǰ��<color=Red>��ţɽ���ڶ�<color>��<color=Red>һ����<color>�͸�һ����<color=Red>����<color>���ˣ�������ͻȻ�е㼱�£�����������һ������", 2, "û����/yes", "�Բ����һ��б����/no");
DelItem("�䵱��������")						--��ֹ�ؽ��������Ҽ����������
DelItem("����Ļ���")						--��ֹ�ؽ��������Ҽ����������
end;

function yes()
Say("����Ȫ����л��<color=Red>����<color>��ס��<color=Red>��ţɽ���ڶ�<color>���������պ��ˡ�", 0);
Msg2Player("�õ������͸������һ�����š�");
AddEventItem("�䵱��������");
SetTask(5, 42);	
end;

function no()
Say("����Ȫ�������ұ��˰�æ�ɡ�", 0);
end;