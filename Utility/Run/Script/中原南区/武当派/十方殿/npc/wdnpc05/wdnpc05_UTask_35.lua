--description: �䵱�������30������
--author: yuanlan	
--date: 2003/5/14



function wdnpc05_UTask_35()

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
	if ( HaveItem("��ü��") == 1) then				--û�л�ü��
		if ( GetItemCount("��ü��") >= 5 ) then			--��ü����ĿΪ5
			StopTimer()					--������ʱ
			Say("���������������书��Ȼ�������ٰ�����ϲ�ɺأ�", 1, "��лʦ��佱/ok")
			
		else
			Say("ϵͳ������⣡�㲻С�İѲɵ��Ļ�ü��Ū���ˣ����Ҫ������������õ����껭ü�ݡ�����ʱ����δ�����������ȥ��ţɽ�ɡ�", 2, "��������/find", "��ȥ��ţɽ��/redo")					
		end
	else
		Say("ϵͳ������⣡�㲻С�İѲɵ��Ļ�ü��Ū���ˣ����Ҫ������������õ����껭ü�ݡ�����ʱ����δ�����������ȥ��ţɽ�ɡ�", 2, "��������/find", "��ȥ��ţɽ��/redo")			
	end
end;	

end;


function ok()
DelItem("��ü��")
DelItem("��ü��")
DelItem("��ü��")
DelItem("��ü��")
DelItem("��ü��")
SetRank(10)
SetTask(5, 40)
AddMagic(158)
AddMagic(159)
AddMagic(160)
Msg2Player("��ϲ�㣡���Ѿ���ΪѲɽ�����ˣ�")
Msg2Player("ѧ���䵱���书�����ɾ��족��")
Msg2Player("ѧ���䵱��������")
Msg2Player("ѧ���䵱���书�������ݡ���")
end;


function find()
end;


function redo()					--��ʣ��ʱ��������л�ü�ݵĻ����ϣ����²ɵ���ü��
Say("ϵͳ������ʣ�µ�ʱ����ȥ��ţɽ���²ɻػ�ü�ݡ�", 0)
Msg2Player("����ѡ�����Ϸ�ţɽ�ɻ�ü�ݡ�")
SetTaskTemp(15, 0)
SetTask(5, 32)
end;