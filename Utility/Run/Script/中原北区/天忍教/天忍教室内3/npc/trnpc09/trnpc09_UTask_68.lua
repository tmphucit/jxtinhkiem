--description: ���̽̽������պ��ҳ�ʦ����
--author: yuanlan	
--date: 2003/5/19



function trnpc09_UTask_68()

if (HaveItem("��Ƥ��") == 1) then	
	Talk(2, "select", "�������պ��ң����Ȼ���Ǳ��̵�ʥ�飡�ã��ã��Ϸ򲻻ῴ���ˣ�����Ŀǰ���书�͵�ʶ������ʱ�գ��ػ���һ�����춯�صĴ���Ϊ��ϣ�����ʦ�Ժ󣬲����Ϊ�Ϸ�ĵ��ˣ�����������", "��ϲ���ճɳ�ʦ�����ѱ���Ϊ���̵̽������������ӽ��Ժ�����������߽������������ѡ����������ɼ���ѧ�գ�Ҳ����ȥ���������չ�Լ��Ľ����������ֻ�����һ�����п�Ҳ������������������ߺ�����ϣ�����ܴ�չȭ�ţ�һչ��ͼ��")
else									--��ʧ����						Say("ϵͳ������⣡�㲻С�İ���Ƥ��Ū���ˣ����Ҫ˳����ʦ�������õ���Ƥ�顣", 2, "��������/find", "�������������/redo")	
end

end;


function select()
DelItem("��Ƥ��")
Msg2Player("��ϲ���ճɳ�ʦ�����ѱ���Ϊ���̵̽�����������")
SetRank(71)
SetTask(4, 70)
SetFaction("")	
SetCamp(4)
SetCurCamp(4)
end;


function find()
end;


function redo()
Say("ϵͳ���������ڽ������պ��Ҵ���������", 0)
Msg2Player("����ѡ�������ڽ������պ��Ҵ���������")
SetTask(4, 60)
SetTask(24, 0)
SetTask(25, 0)
SetTask(26, 0)
SetTask(27, 0)
SetTask(28, 0)
SetTaskTemp(21,0)
SetTaskTemp(22,0)
SetTaskTemp(23,0)
SetTaskTemp(24,0)
end;