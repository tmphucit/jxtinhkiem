--description: �������커��·��Զ������Ի�
--author: yuanlan	
--date: 2003/4/26


function twnpc05_Default()

UTask_tw = GetTask(3);

if (UTask_tw < 40) then								--��δ��40������
Say("·��Զ��С����������Ϊ��������ǳ���������ǰ�ˣ�������Щ��ͷ�Ӷ��������ޣ���������", 0)
end;				

if (UTask_tw == 42) then								--�Ѿ��ӵ�40��������δ���
Say("·��Զ��<color=Red>����ҽ<color>����<color=Red>������<color>�����ȥ��أ�", 0)
end;

if (UTask_tw > 42) and (UTask_tw < 48) then					--�Ѿ��ӵ�40��������δ���
Say("·��Զ����ý�ҩ����", 0)
end;				

if (UTask_tw > 48) and (UTask_tw < 70) then					--�Ѿ����40��������δ��ʦ
Say("·��Զ�����⺢�Ӳ����书�����ĵ�Ҳ���õģ���ͷ���Һ�ϲ����", 0)
end;				

if (UTask_tw >= 70) then							--�Ѿ���ʦ
Say("·��Զ��ʱ����Ӣ�ۣ��������Ⱥ�۲����˲żüã��������Ϊ֮�������ɾ�һ�����춯�ص���Ϊ��", 0)
end;				

end;



