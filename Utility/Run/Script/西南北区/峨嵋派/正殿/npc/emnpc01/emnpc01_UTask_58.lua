--description: ����������ʦ̫50������
--author: yuanlan	
--date: 2003/3/6


function emnpc01_UTask_58()

Say("����ʦ̫������������úܺã������ʴ�ӱ��ֻҪ����Ŭ��������һ����ѧ�����ɡ�", 1, "��лʦ���̻�/ok2");

end;


function ok2()
SetRank(18);
SetTask(1, 60);
AddMagic(91);
AddMagic(92);
AddMagic(93);
Msg2Player("��ϲ�㣡������Ϊ������ɢ����Ů��");
Msg2Player("ѧ���书��������ա���");
Msg2Player("ѧ���书�����Ĵ��ӡ���");
Msg2Player("ѧ���书���Ⱥ��նɡ���");
end;