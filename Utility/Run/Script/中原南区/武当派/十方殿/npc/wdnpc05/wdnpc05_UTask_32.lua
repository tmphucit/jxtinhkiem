--description: �䵱�������30������
--author: yuanlan	
--date: 2003/5/14



function wdnpc05_UTask_32()

UTask_wdsub01 = GetTask(16);
	
if (UTask_wdsub01 == 1) then 						--��ʱ�ѵ�	
	Say("����������Ѿ�����ʱ���ˣ�������ʧ��������ƽʱ�ǲ���͵������ȭ�����֣�������ڣ�һ��Ҫ�ڼ���ϰ���У�ʲôʱ��׼�����ˣ������������ҡ�", 0)
	DelItem("��ü��")
	DelItem("��ü��")
	DelItem("��ü��")
	DelItem("��ü��")
	DelItem("��ü��")
	SetTaskTemp(15, 0)
	SetTask(5, 30)
	SetTask(16, 0)
else									--��ʱδ��
	Say("���������ɵ����껭ü������ʣ�µ�ʱ��ɲ����ˣ���Ҫץ������", 0)		
end

end;

