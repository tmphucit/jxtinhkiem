--description: �䵱��Ҧʯ��20������
--author: yuanlan	
--date: 2003/7/2



function wdnpc04_UTask_23()

if ( HaveItem("���Ƶ���ϵ���") == 1) then
	Talk(2, "", "Ҧʯ�ţ�����⣬���۸�����ҧ���ˣ��������Ǻã�", "��ң�����������������ӻ�����ģ���ȥ<color=Red>����<color>��<color=Red>�ӻ����ϰ�<color>����취��")
	SetTask(5, 24)
else
	Say("ϵͳ������⣡�㲻С�İѲ��Ƶ���ϵ��۸�Ū���ˣ��������ô�죿", 2, "��������/find", "����ȥ���Ƕ��������/redo")	
end

end;


function find()
end;

function redo()
Say("ϵͳ��������ȥ���Ƕ�Ѱ�ҵ��ۡ�", 0)
Msg2Player("����ѡ������ȥ���Ƕ�Ѱ�ҵ��ۡ�")
SetTask(5, 22)
end;




