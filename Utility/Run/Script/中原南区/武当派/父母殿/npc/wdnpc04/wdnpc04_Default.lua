--description: �䵱��Ҧʯ�ŷ�����Ի�
--author: yuanlan	
--date: 2003/5/14


function wdnpc04_Default()

UTask_wd = GetTask(5);

if (UTask_wd < 20) then								--��δ��20������
Say("Ҧʯ�ţ�ʦ�����Ҷ�����ɽ���������ҵ�������ĸһ����", 0)
end;				

if (UTask_wd == 22)  then							--�Ѿ��ӵ�20��������δ���
Say("Ҧʯ�ţ��Ҽǵ�<color=Red>��ϵ���<color>����<color=Red>��ɽ���Ƕ�<color>Ū���ġ�", 0)
end;				

if (UTask_wd == 24)  then							--�Ѿ��ӵ�20��������δ���
Say("��ң���ȥ<color=Red>����<color>��<color=Red>�ӻ����ϰ�<color>����취��", 0)
end;

if (UTask_wd > 24) and (UTask_wd < 28) then					--�Ѿ��ӵ�20��������δ���
Say("Ҧʯ�ţ�û����ϵ��ۣ�����ʲô��ʦ�������˼Һ����أ�", 0)
end;				

if (UTask_wd >= 30) and (UTask_wd < 70) then					--�Ѿ����20��������δ��ʦ
Say("Ҧʯ�ţ���Խ��Խ����ʦ�������˼ҵ��书��ɲ⣬���Ⱳ��Ҳѧ���ꡣ", 0)
end;				

if (UTask_wd >= 70) then							--�Ѿ���ʦ
Say("Ҧʯ�ţ�ʦ����˵�����ɰٴ���������󣻱���ǧ�ͣ�������ա����ҾͰ���仰�͸���ɣ�", 0)
end;				


end;



