--description: �������� 30������
--author: yuanlan	
--date: 2003/3/11



function tmnpc09_UTask_35()

if (HaveItem("������") == 1) then
	Talk(2, "select", "��ң�����ʦ�壬���Ѿ��ҵ���Щ��ˣ����㱨�˳����Ƕ�صġ������ס���ֻҪ������������ţ��Ͳ����������ˡ�", "���ƣ������ء���������ȵ���һ���ˣ���˵����Ҫʲô����ȫ�����㡣")	
else
	Say("ϵͳ������⣡�㲻С�İѡ������ס���Ū���ˣ����Ҫ��ɴ����������õ��������ס���", 2, "��������/find", "�������������/redo")
end;

end;


function select()
DelItem("������")
SetRank(28)
SetTask(2, 40)
AddMagic(50)
AddMagic(51)
--AddMagic(52)
Msg2Player("��ϲ�㣡������Ϊ���Ž�ǰ������")
Msg2Player("ѧ������׷�ļ���")
Msg2Player("ѧ��������ľ����")
end;

	
function find()
end;

function redo()
Say("ϵͳ���������ڼ������Ʋ�Ⱦ����������", 0)
SetTask(2, 30)
SetTaskTemp(3, 0)
end;

