--description: ������ǰ�� ����10������
--author: yuanlan	
--date: 2003/4/24



function twnpc02_UTask_15()

if ( HaveItem("��Ѫʯ") == 1) then					--�õ���Ѫʯ
	if ( GetItemCount("��Ѫʯ") >= 3 ) then				--��Ѫʯ��Ŀ����Ϊ3
		Say("���������úã��Ϸ���������������������Ժ��кܶ࿼������㣬��Ҫ����Ŭ����", 1, "��лǰʹ/ok")
	else								--��Ѫʯ��Ŀ����
		Say("ϵͳ������⣡�㲻С�İѼ�ѪʯŪ���˼��������Ҫ������������������鼦Ѫʯ��", 2, "��������/find", "���»�ɽ��ȥ��/redo")	
	end
else									--û�м�Ѫʯ
	Say("ϵͳ������⣡�㲻С�İѼ�Ѫʯ��Ū���ˣ����Ҫ������������������鼦Ѫʯ��", 2, "��������/find", "���»�ɽ��ȥ��/redo")
end

end;


function ok()
DelItem("��Ѫʯ")
DelItem("��Ѫʯ")
DelItem("��Ѫʯ")
SetRank(44)
SetTask(3, 20)
AddMagic(23)
AddMagic(24)
AddMagic(26)
--AddMagic(27)
AddMagic(30)
Msg2Player("��ϲ�㣡���Ѿ���Ϊ�������ˣ�")
Msg2Player("ѧ������ǹ����")
Msg2Player("ѧ������������")
Msg2Player("ѧ������������")
Msg2Player("ѧ���������书���ط����㡱��")
end;


function find()
end;

function redo()
SetTask(3, 12)   
end;