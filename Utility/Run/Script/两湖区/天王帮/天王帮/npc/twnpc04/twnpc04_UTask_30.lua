--description: ��������ʹ�Ű�30������
--author: yuanlan	
--date: 2003/4/25


function twnpc04_UTask_30()

Say("�Űأ�˵�������ǵ�ù����ǰЩ����ȥ��һ��<color=Red>�������Ӷ�<color>�������С�İ�<color=Red>������<color>��Ū���ˣ��������Ǳ����������䵽�����ϲ�������ϣ�����������롭��", 2, "����Ѱ��������/yes", "��������/no");
DelItem("������")						--��ֹ�ؽ��������Ҽ����������

end;


function yes()
Say("�Űأ�̫���ˣ�<color=Red>������<color>����<color=Red>�������Ӷ�<color>��ʧ�ģ�������ܰ����һ������ұ��������ƶ�ͷ�졣", 0)
SetTask(3, 32)    			
end;

function no()
end;