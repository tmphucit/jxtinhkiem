--description: ������ͨ���� �񺣵ڶ��� ��������
--author: yuanlan	
--date: 2003/3/10



function tmnpc03_UTask_2()

if ( HaveItem("��ɫ����") == 1) then
	Say("����ׯ�����Ź����оŸ����ӣ�����ÿ�����������ʵ������֣����ܹ�ʹ�������ݺ�б�ǣ�ÿ����������Ӷ���ʮ�壬��֪����ô���𣿵�һ�У�", 3, "4��9��2/False1", "2��4��9/False1", "2��9��4/True1")
else
	Say("����ׯ�������ҵ�<color=Red>��ɫ����<color>�������ҡ�", 0)
end;

end;

	
function False1()
Say("����ׯ�������ԣ������ܵ�<color=Red>������Ұ��<color>�ɱ�������������Ƕ�֪���أ�", 0);
end;


function True1()
Say("����ׯ��������ˣ��ǵڶ����أ�", 3, "7��5��3/True2", "5��3��7/False2", "5��7��3/False2");
end;


function False2()
Say("����ׯ�������ԣ�����ȥ���������ܵ�<color=Red>������Ұ��<color>�ɣ�", 0);
end;


function True2()
Say("����ׯ�������������һ�и���ô�", 3, "6��8��1/False3", "8��1��6/False3", "6��1��8/True3");
end;	


function False3()
Say("����ׯ�������ԣ�Ϊʲô��ȥ���������ܵ�<color=Red>������Ұ��<color>�أ�", 0);
end;


function True3()
Say("����ׯ�����ܺã���ȫ������ˡ���ɫ���ȸ��㣬�ɱ�Ū���ˣ�ȥ����������һ��ׯ����<color=Red>��ɫ����<color>�ɡ�", 0);
AddEventItem("��ɫ����");
Msg2Player("�õ���ɫ���ȡ�");
SetTask(2, 6);
end;	

	


