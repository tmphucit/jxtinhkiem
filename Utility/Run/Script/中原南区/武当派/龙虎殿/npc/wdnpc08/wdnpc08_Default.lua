--description: �䵱�ɵ�˼�Ϸ�����Ի�
--author: yuanlan	
--date: 2003/5/16


function wdnpc08_Default()

UTask_wd = GetTask(5);

if (UTask_wd < 50) then								--��δ��50������
Say("��˼�ϣ����·��ң����ǳ�Ⱥ���������ˣ��ǻ�ʵ�࣡�ҵ�ѧ��֮�ˣ���������һ��֮�����Ȱ�����ˮ�������ԡ����塱���֣�", 0)
end;				

if (UTask_wd > 50) and (UTask_wd < 55) then					--�Ѿ��ӵ�50��������δ���
Say("��˼�ϣ���Ⱥ���˵ĳ�Ѩ��<color=Red>��ţɽ���Ķ�<color>��Ϊ�׵Ľ�<color=Red>����<color>����סҪ���ӵ��˴����õ�<color=Red>����<color>��ȫ�����<color=Red>������<color>�������ϰ��ա�", 0)
end;				

if (UTask_wd >= 55) and (UTask_wd < 58) then					--�Ѿ��ӵ�50��������δ���
Say("��˼�ϣ���˵<color=Red>������<color>���������ס�ڳǱ���<color=Red>�˼�ɩ��<color>����Ѵӵ��˴����õ�<color=Red>ȫ������<color>�����͸����ɡ�", 0)
end;

if (UTask_wd >= 60) and (UTask_wd < 70) then					--�Ѿ����50��������δ��ʦ
Say("��˼�ϣ���ƽ����ϲ�ύ��Щ��������֮�ˣ����һ���ν������������壬�񲻿��գ�", 0)
end;				

if (UTask_wd >= 70) then							--�Ѿ���ʦ
Say("��˼�ϣ�����֮�£�ԭ��������࣬Ҳ����̫���˸С�����֮�󣬺δ�����������Ϊ��������ౣ�أ�", 0)
end;				


end;



