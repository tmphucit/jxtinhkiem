--description: ���������з���������
--author: yuanlan	
--date: 2003/3/3



function emnpc03_UTask_enroll()

Say("���з磺���ɵ��ӽԾ��������黭��������������ɣ���������������֪Ƥë�������������㣺��֪��������һ���������������������", 3, "��������/False4", "��ɽ��ˮ/False4", "ʮ�����/True4");

end;


function False4()
Say("���з磺���ԡ�", 3, "��������/False4", "��ɽ��ˮ//False4", "ʮ�����/True4");
end;


function True4()
Say("���з磺�ţ�����ˡ��ڶ������⣺�����ĸ��������Ĵ����٣�", 3, "����/True5", "���/False5", "��β/False5");
end;


function False5()
Say("���з磺�𲻳�������", 3, "����/True5", "���/False5", "��β/False5");
end;


function True5()
Say("���з磺�ⶼ�Ѳ����㣿������Ҫ���������࿴�ˡ���֪������������ɢ����˭д����", 3, "����/False6", "����/True6", "��ԭ/False6");
end;


function False6()
Say("���з磺��֪���˰ɣ��ҿ��㻹��֪�Ѷ��˰ɣ�", 3, "����/False6", "����/True6", "��ԭ/False6");
end;


function True6()
Say("���з磺�����㵹����һ�����ˣ�������Ҫ<color=Red>����Ʈ<color>ʦ�ÿ����㣬�����������<color=Red>��ɽ��<color>����ȥ�����ɣ�", 0);
SetTask(1, 4);
end;