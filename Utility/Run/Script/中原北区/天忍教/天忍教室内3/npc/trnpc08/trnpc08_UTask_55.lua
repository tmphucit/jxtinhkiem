--description: ���̽��󻤷���ľ�50������
--author: yuanlan	
--date: 2003/5/19



function trnpc08_UTask_55()
Say("�󻤷���ľ�������һ���ĵ�����Ҳ���ǳ�������ˣ����̾���Ҫ���������ĵ����ɽ����һ��������Ϊ���ַ�ġ�", 1, "��л����/ok")
end;


function ok()
SetRank(60)
SetTask(4, 60)
AddMagic(148)
AddMagic(149)
AddMagic(150)
Msg2Player("��ϲ�����ڱ���Ϊ���̵̽Ļ���ʹ��")
Msg2Player("ѧ�����̽��书����ɱ��ȭ����")
Msg2Player("ѧ�����̽��书��ʴ��Ѫ�С���")
Msg2Player("ѧ�����̽��书����ħ���塱��")
end;