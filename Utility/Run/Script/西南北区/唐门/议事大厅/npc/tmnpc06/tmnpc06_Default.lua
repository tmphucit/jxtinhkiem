--description: ������һ�� ������Ի�
--author: yuanlan	
--date: 2003/3/11


function tmnpc06_Default()

UTask_tm = GetTask(2);

if (UTask_tm == 54) then							--50������
Say("��һ������ʦ�ܸղŴҴ�ææȥ�����̽���������ľ˾ˣ���ʦ��Ҳ��ȥ�ˣ�����֪ȥ�����", 0)
return
end;				

if (UTask_tm < 20) then								--��δ��20������
Say("��һ���������¼���ĵ�����", 0)
end;				

if (UTask_tm > 20) and (UTask_tm < 30) then					--�Ѿ��ӵ�20��������δ���
Say("��һ�����������󣬹�ĸһֱס�ں�ɽ<color=Red>���Ĺ�<color>��һ��é������Ӳ����������ˣ���ȥ�˺ü��Σ���ֻ����<color=Red>�ſ�<color>�����밲����ξͰ������ˣ�", 0)
end;				

if (UTask_tm >= 30) and (UTask_tm < 70) then					--�Ѿ����20��������δ��ʦ
Say("��һ������л�㻯�����ҵ��͹�ĸ�Ķ�Թ��", 0)
end;				

if (UTask_tm >= 70) then							--�Ѿ���ʦ
Say("��һ�����������пջ����������ǡ�", 0)
end;				

end;


