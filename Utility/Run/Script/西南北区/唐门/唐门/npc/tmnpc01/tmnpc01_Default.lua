--description: ������ͨ���� ��������� ������Ի�
--author: yuanlan	
--date: 2003/3/7


function tmnpc01_Default()

UTask_tm = GetTask(2);

if (UTask_tm > 0) and (UTask_tm < 10) then			--��δ����
--Say("����ׯ����ֻ���ҵ�������������Ⱥ���أ����ܼ��뱾�š�����������˳����´��ٽ��������ؾͱ������¿�ʼ�������Ҫ������", 2, "��/yes", "��/no")
Say("����ׯ������һ��<color=Red>��ɫ����<color>��Ҫ��ܵ�һ�����<color=Red>�����<color>���ܵõ�����õ�<color=Red>��ɫ����<color>�����ȥ�ڶ�����һ��<color=Red>ׯ��<color>�����һ��<color=Red>��ɫ����<color>�ڵ����ص�<color=Red>ׯ��<color>���ϡ��õ��������Ⱥ󽻸�<color=Red>���ڵ�ׯ��<color>���������ǹ��ء�", 0)
end;				

if (UTask_tm >=10) and (UTask_tm < 70) then			--�Ѿ����ţ���δ��ʦ
Say("����ׯ������Ҷ���ͬ���ֵܣ��㲻���ٴ���������������ˣ�", 0)
end;				

if (UTask_tm >=70) then						--�Ѿ���ʦ
Say("����ׯ���������԰���������������£�������˭Ҳ����С�������ǣ��պ����߽������ɲ�Ҫ���˱��ŵ����磡", 0)
end;				

end;


--function yes()
--SetPos(3626, 5745);						--����Ҵ��ͳ��Թ�
--SetTask(2, 0);							--���״̬
--if ( HaveItem("��ɫ����") == 1) then DelItem("��ɫ����") end;	--�����Ʒ	
--if ( HaveItem("��ɫ����") == 1) then DelItem("��ɫ����") end;
--if ( HaveItem("��ɫ����") == 1) then DelItem("��ɫ����") end;
--end;	


--function no()
--end;