--description: ����������20������
--author: yuanlan	
--date: 2003/3/4



function emnpc08_UTask_28()

Say("���磺���ܹ����뻢Ѩ���շ��ͻ����治��Ϊ�Ҷ��ҵ��ӡ�", 1, "ʦ�������/ok");

end;


function ok()
SetRank(15);
SetTask(1, 30);
AddMagic(82);
AddMagic(83);
AddMagic(84);
Msg2Player("��ϲ�㣡������Ϊ�����ɽ����ᣡ");
Msg2Player("ѧ���书������ͬ�顱��");
Msg2Player("ѧ���书�����¡���");
Msg2Player("ѧ���书������Ʈ�㡱��");
end;




