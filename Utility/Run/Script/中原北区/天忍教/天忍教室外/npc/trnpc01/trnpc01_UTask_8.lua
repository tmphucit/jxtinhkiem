--description: ���̵̽�����������
--author: yuanlan	
--date: 2003/5/17



function trnpc01_UTask_8()

if ( HaveItem("������") == 1) then					--��������
	DelItem("������")
	Say("������ʿ�����汾�̶����������Ҫʲô�ʹ���", 2, "��ʦѧ��/yes", "����/no")
else									--��ʧ����
	Say("ϵͳ������⣡�㲻С�İ���������Ū���ˣ����Ҫ������������õ���������", 2, "��������/find", "�������������/redo")		
end

end;


function yes()

if (GetSeries() ~= 3) then							--�����Ҳ����ڻ�ϵ
	Say("������ʿ����ĸ����뱾��·�����ϣ���ǿΪ֮�к����档��Ȼ����������̣����Ǳ������Ա��ţ����Ȼ�汾�̶�ñ��������̾��������һǧ����Ϊ���ͣ�", 0)
	Msg2Player("�õ�����һǧ����")
	Earn(1000)
	SetTask(4, 9)
else	if (GetFaction() ~= "") then						--�������Ѿ����ڻ�ϵ����һ����
		Say("������ʿ������ؤ����ˣ��ߣ��ѵ�����������ϸ��������һǧ�����ӣ�������Ǯ����ߣ�", 0)
		Msg2Player("�õ�����һǧ����")
		Earn(1000)
		SetTask(4, 9)
	else									
		Say("������ʿ���ðɣ��������汾�̶�ñ����ķ��ϣ���������̰ɣ�", 1, "����ʦ��/ok")
	end
end;

end;


function no()
Say("������ʿ����������������ú��ˣ�", 0)
Msg2Player("�õ�����һǧ����")
Earn(1000)
SetTask(4, 9)
end;	


function ok()
SetFaction("���̽�")    				--��Ҽ������̽�
SetCamp(2)
SetCurCamp(2)
AddMagic(135)
SetRank(55)						--���óƺ�
SetRevPos(49, 28)  					--����������
SetTask(4, 10)		
Msg2Player("�������̣̽���Ϊ��һ��ɱ�֡�")
Msg2Player("ѧ�����̽��书��������Ѫ����")
end;


function find()
end;

function redo()
Say("ϵͳ����������������ʿ����������", 0)
Msg2Player("����ѡ��������������ʿ����������")
SetTask(4, 0)
end;