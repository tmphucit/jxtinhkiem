--description: �䵱��Ҷ����������Ի�
--author: yuanlan	
--date: 2003/5/14


function wdnpc03_Default()

UTask_wd = GetTask(5);

if (UTask_wd < 12) then								--��δ��10������
Say("Ҷ��������ʶ�����¾����������䵱���ӣ�", 0)
end;				

if (UTask_wd >= 20) and (UTask_wd < 70) then					--�Ѿ����10��������δ��ʦ
Say("Ҷ�����������ж������¾�����", 0)
end;				

if (UTask_wd >= 70) then							--�Ѿ���ʦ
Say("Ҷ��������������ô�����ʱ��Ҳ���������ɣ����֪�������죬�������ˡ������Ǳ��ɵĳ�ʦ���ӣ���Ҳ��ҪС�������ˣ�������ǫ���棬�ԹŽ�Ȼ��", 0)
end;					

end;



