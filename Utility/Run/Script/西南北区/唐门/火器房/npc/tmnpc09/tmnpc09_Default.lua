--description: �������� ������Ի�
--author: yuanlan	
--date: 2003/3/11


function tmnpc09_Default()

UTask_tm = GetTask(2);

if (UTask_tm < 40) then								--��δ���30������
Say("���ƣ�С�����ҿ����ĺ��ӡ����˳�˺ޣ�һ�첻�����������Ŀ��", 0)
end;				

if (UTask_tm >= 40) and (UTask_tm < 70) then					--�Ѿ����30��������δ��ʦ
Say("���ƣ�����ұ��˴����˵����Ҫʲô����ȫ�����㡣", 0)
end;				

if (UTask_tm >= 70) then							--�Ѿ���ʦ
Say("���ƣ�������թ�������һ�����߽�����Ҫ���С�ģ�", 0)
end;				

end;


