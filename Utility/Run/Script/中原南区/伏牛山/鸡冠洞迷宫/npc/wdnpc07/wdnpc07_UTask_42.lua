--description: �䵱������ 40������
--author: yuanlan	
--date: 2003/5/15



function wdnpc07_UTask_42()

Task0016 = GetTaskTemp(16)
Task0017 = GetTaskTemp(17)
Task0018 = GetTaskTemp(18)
Task0019 = GetTaskTemp(19)
Task0020 = GetTaskTemp(20)
if (Task0016 == 1) and (Task0017 == 1) and (Task0018 == 1) and (Task0019 == 1) and (Task0020 == 1) then  
	if ( HaveItem("�䵱��������") == 1) then
		Talk(3, "", "����ߣ��䵱�ɵ��书��Ȼ��ͬ���찡�����Ҽ��������������¶��������ˣ���һ�϶�����ʲô�ˣ�", "��ң���һ������������ʦ����Ҫ������������ֽ�������", "�����һ�϶��̳����ĵ��ӵ��м��ֻ��������أ������ҿ�������ԭ����Ҳ֪���Բ����ң���֪��ˣ��αص������հհգ���������ĵ��ӣ���Ҳ����Ϊ���㡣��Ҳ��һ����Ҫ������һ���žͷ������ɽ����б�������ҵ����ɣ���") 
		DelItem("�䵱��������")
		SetTask(5, 45)
	else
		Say("ϵͳ������⣡�㲻С�İ����ŵ����Ÿ�Ū���ˣ����Ҫ������������������ŵ����š�", 2, "��������/find", "�������������/redo")
	end
else
	Say("����Ƽ�������ֻ�������б��´�������ǣ���������˵����", 0)
end;	
	
end;


function find()
end;

function redo()
Say("ϵͳ�������»��䵱ɽ������Ȫ������", 0)
Msg2Player("����ѡ�����»��䵱ɽ������Ȫ������")
SetTask(5, 40)
SetTaskTemp(16, 0)
SetTaskTemp(17, 0)
SetTaskTemp(18, 0)
SetTaskTemp(19, 0)
SetTaskTemp(20, 0)
end;




	


