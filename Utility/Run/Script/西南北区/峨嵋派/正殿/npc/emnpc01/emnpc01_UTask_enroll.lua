--description: ����������ʦ̫��������
--author: yuanlan	
--date: 2003/3/3



function emnpc01_UTask_enroll()

if ( HaveItem("��������") == 1) then					--�õ���������
	Say("����ʦ̫���ҷ�ȱ�����Ȼ��һ�����ϣ�ƶ�������Ϊͽ��ϣ�������ѧ�գ������Ź棬��Ҫ������Ϊʦ��������", 1, "����̻�/ok")
else									--�������ⶪʧ
	Say("ϵͳ������⣡�㲻С�İѰ��������Ū���ˣ����Ҫ���������������õ��������⡣", 2, "��������/find1", "���´�������/redo1")
end

end;


function ok()
DelItem("��������")
SetFaction("������")    			
SetCamp(1)
SetCurCamp(1)
SetRank(13)
AddMagic(80)
SetRevPos(13, 13)  					
SetTask(1, 10)
Msg2Player("��ӭ���������ɣ���Ϊ�����ᣡ")
Msg2Player("ѧ���书��Ʈѩ���ơ���")
end;


function find1()
end;

function redo1()
Say("ϵͳ�������������������л���ܴ���������", 0)
SetTask(1, 6)
end;