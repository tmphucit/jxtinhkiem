--description: �䵱������ ������Ի�
--author: yuanlan	
--date: 2003/5/15


function wdnpc07_Default()

UTask_wd = GetTask(5);

if (UTask_wd < 42) then							--��δ�ӵ�40������
Say("������Ǻ��ˣ������ô���������ֱ��֪���", 0)
end;		

if (UTask_wd == 45) then						--�Ѿ�����廢����δ�õ�����
Say("����ҵĻ��žͷ������ɽ����б�������ҵ����ɣ���", 0)
end;			

if (UTask_wd >= 48) then						--�õ����ź�
Say("���ԭ����Ҳ֪���Բ����ң�������֪��ˣ��αص�����", 0)
end;				
		

end;


