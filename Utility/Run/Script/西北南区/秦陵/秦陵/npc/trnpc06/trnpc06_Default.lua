--description: ����ũ�� ������Ի�
--author: yuanlan	
--date: 2003/5/19


function trnpc06_Default()

UTask_tr = GetTask(4);

if (UTask_tr < 32) then								--��δִ��30������
Say("ũ������һ�����ʲôʱ�����ڸ���󷢴���أ�", 0)
end;				

if (UTask_tr > 35) then								--ִ����30������
Say("ũ���㻹Ҫʯͷ���´������ڵ��Ļ������˵������ㆪ��", 0)
end;				

end;



