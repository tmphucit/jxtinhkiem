--description: ����������������
--author: yuanlan	
--date: 2003/4/24



function twnpc01_UTask_8()

if ( HaveItem("������") == 1) then					--��������
	Say("����죺��������δ��������������˱ǣ���Ȼ�Ǻþƣ�����������������Ҳ�Ǹ��������ˣ���Ҿ�һ�𴳵������ɣ�", 1, "��������/ok")
else									--��ʧ������
	Say("ϵͳ������⣡�㲻С�İ���̳��������Ū���ˣ����Ҫ�����������������������", 2, "��������/find", "�������������/redo")	
end

end;


function ok()
DelItem("������")
SetFaction("������")    			
SetCamp(3)
SetCurCamp(3)
AddMagic(29)
SetRank(43)
SetRevPos(21)  							--����������
SetTask(3, 10)
Msg2Player("��ӭ�����������ȴ�һ��СС����������ɣ�")
Msg2Player("ѧ���������书��ն��������")
end;


function find()
end;

function redo()
Say("ϵͳ��������������촦��������", 0)
SetTask(3, 0)	
SetTask(13, 0)
end;