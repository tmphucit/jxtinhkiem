--description: ����������ʦ̫50������
--author: yuanlan	
--date: 2003/3/6



function emnpc01_UTask_50()

Say("����ʦ̫��Ϊʦ��<color=Red>�ɶ�������<color>��ס��<color=Red>�Ⱥ���ʦ<color>�Ƿ���֪���������´�������쾵۴�ҵ��䣬����������ʮ���ꡣΪ����ף�����´��µĴ�����ӣ�Ϊʦ׼���͸�������һ����������<color=Red>�����������վ���<color>��Ϊ������Ը�����ȥ����ݺ�����", 2, "Ը��/accept", "���ѵ��˴���/refuse");
DelItem("���������վ�");						--��ֹ�ؽ��������Ҽ����������

end;

function accept()
Say("����ʦ̫��<color=Red>�Ⱥ���ʦ<color>�չض��꣬Ѱ��������ͣ��������ȥ������ʦ��<color=Red>���Ʒ�ʦ<color>��", 1, "�õ���վ�/get");
end;

function refuse()
Say("����ʦ̫����Ϊʦ�������˰ɡ�",0);
end;

function get()
AddEventItem("���������վ�");
Msg2Player("�õ������������վ�����");
SetTask(1, 55);
end;


