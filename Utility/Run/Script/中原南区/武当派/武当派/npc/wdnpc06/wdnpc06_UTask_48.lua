--description: �䵱������Ȫ40������
--author: yuanlan	
--date: 2003/5/15



function wdnpc06_UTask_48()

if ( HaveItem("����Ļ���") == 1) then					--������Ļ���
	Talk(2, "", "��ң���ʦ�֣������Ѿ������͵�����������Ļ��š�", "����Ȫ���������ˣ���������ȥ�������Űɣ�")
else									--��ʧ����
	Say("ϵͳ������⣡�㲻С�İ�����Ļ��Ÿ�Ū���ˣ����Ҫ������������������Ļ��š�", 2, "��������/find", "�������������/redo")	
end;

end;


function find()
end;


function redo()
Say("ϵͳ��������������Ȫ��������", 0)
Msg2Player("����ѡ������������Ȫ��������")
SetTask(5, 40)
SetTaskTemp(16, 0)
SetTaskTemp(17, 0)
SetTaskTemp(18, 0)
SetTaskTemp(19, 0)
SetTaskTemp(20, 0)
end;