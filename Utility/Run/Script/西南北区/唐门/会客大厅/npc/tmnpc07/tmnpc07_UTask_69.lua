--description: �����Ƴ� ��ʦ����
--author: yuanlan	
--date: 2003/6/17



function tmnpc07_UTask_69()

Talk(3, "select3", "�Ƴ���Ҫ�����Ǿ������أ�", "����", "�Ƴ�����˾���������Ʊ����ջ�����ô���������ʦ�أ�˵������һ�����Ϊ�˸�������棬�����ѱ��ţ�")
	
end;


function select3()
Say("���Ŵ�ŭ����Ӧ����ô���أ�", 2, "Ǯ�ѵ���Ҳ����/a", "��������ԭ��/b")
end;


function a()
Say("�Ƴ𣺺ߣ������������ˣ���ԶҲ�����ʦ�ˣ�", 0)
if (GetCash() >= 10000) then
	Pay(10000)
else
	Pay(GetCash())	
end
end;
	
	
function b()
Say("�Ƴ𣺿�����Ļڹ����Ҿ��ٸ���һ�λ��ᣬ������ٴ�һ����˿����ȡ�����Ǿ�������", 0)
if (GetCash() >= 10000) then
	Pay(10000)
else
	Pay(GetCash())	
end
SetTask(2, 62)
end;


