--description: ������ �����º�Ժ�ص����� ����ս������
--author: yuanlan	
--date: 2003/3/6



function emenemy05_UTask_56()

if ( HaveItem("���������վ�") == 1) then
	i = random(0,2)							--�ȳ��Ⱥ����ɵĸ�����30%
	if (i == 0) then  
		Msg2Player("�����ɮͷĿ���ȳ������ĴȺ����ɣ��������������վ�����������")
		DelItem("���������վ�")
		SetTask(1, 58)
	end
else
	Say("ϵͳ������⣡�㲻С�İѡ����������վ�����Ū���ˣ����Ҫ�����������������С����������վ�����", 2, "��������/find", "�������������/redo")	
end;

end;


function find()
end;

function redo()
Say("ϵͳ�������»ض�������������ʦ̫����������", 0)
SetTask(1, 50)	
end;