--description: �䵱�ɵ�˼��50������
--author: yuanlan	
--date: 2003/5/16



function wdnpc08_UTask_58()
Talk(2, "select", "��ң������Ѿ����ӵ��˴���������ȫ���͸����ϰ��ա�", "��˼�ϣ����úܺã����ǵ��ģ��������䵱���ӱ�ɫ��")
end;


function select()
SetRank(12)
SetTask(5, 60)
AddMagic(164)
AddMagic(165)
AddMagic(166)
Msg2Player("��ϲ�㣡���Ѿ���Ϊ�ƾ����ˣ�")
Msg2Player("ѧ���䵱���书��������������")
Msg2Player("ѧ���䵱���书�������޽�����")
Msg2Player("ѧ���䵱���书��̫���񹦡���")
end;
