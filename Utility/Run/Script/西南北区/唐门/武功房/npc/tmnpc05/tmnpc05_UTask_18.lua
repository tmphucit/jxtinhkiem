--description: �����ƺ� 10������
--author: yuanlan	
--date: 2003/3/10



function tmnpc05_UTask_18()

if ( HaveItem("ħ����") == 1) then
	Say("�ƺף����Ȼ��Щ���£��ܰﱾ���һ�ħ���룬�ã������ͽ��㼸�У������ˣ�", 1, "��л����/ok")
else
	Say("ϵͳ������⣡�㲻С�İ�ħ�����Ū���ˣ����Ҫ��ɴ����������õ�ħ���롣", 2, "��������/find", "�������������/redo")
end;

end;


function ok()
DelItem("ħ����")
SetRank(26)
SetTask(2, 20)
AddMagic(43)
AddMagic(44)
--AddMagic(46)
Msg2Player("��ϲ�㣡������Ϊ����ׯ����")
Msg2Player("ѧ�����Ű�����")
Msg2Player("ѧ�����ŵ�����")
end;	


function find()
end;

function redo()
Say("ϵͳ�����������ƺ״���������", 0)
SetTask(2, 10)	
end;