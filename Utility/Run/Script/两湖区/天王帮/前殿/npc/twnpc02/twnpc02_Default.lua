--description: ������ǰ�� ����������Ի�
--author: yuanlan	
--date: 2003/4/24


function twnpc02_Default()

UTask_tw = GetTask(3);

if (UTask_tw < 10) then								--��δ��10������
Say("���������������Ϸ������Ů��һ�������۷���ʲô�£��Ϸ򶼻ᾡȫ����������", 0)
end;				

if (UTask_tw > 10) and (UTask_tw < 15) then					--�Ѿ��ӵ�10��������δ���
Say("������ȥ<color=Red>�����������ɽ��<color>�õ�<color=Red>������Ѫʯ<color>���������Ұɣ�", 0)
end;				

if (UTask_tw >= 15) and (UTask_tw < 70) then					--�Ѿ����10��������δ��ʦ
Say("�����������ֵܶ�������̹���ĺú����Ϸ����������Щ͵��������ث�֣�", 0)
end;				

if (UTask_tw >= 70) then							--�Ѿ���ʦ
Say("���������Ӻ����ɷ����߽�����Ҫ�������أ����������һЩΥ������������£��Ϸ���Ĳ����㣡", 0)
end;				

end;



