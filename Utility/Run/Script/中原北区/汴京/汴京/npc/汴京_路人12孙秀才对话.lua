--description: ��ԭ���� �꾩�� ·��12����ŶԻ� ���̳̽�ʦ����
--author: yuanlan	
--date: 2003/5/19



function main(sel)

UTask_tr = GetTask(4);

if (UTask_tr == 62) then

	UTask_trsub05 = GetTask(25)

	if (UTask_trsub05 == 0) then 
		Say("����ţ�С���м������գ���ڤ˼���벻����⣬��֪��²��µó�������ǰ���¹⡱�Ǹ�ʲô�֣�", 3, "��/no1", "��/yes1", "��/no1")
		DelItem("�Ͻ�����ˮ��")			--�����ؽ��������Ҽ���������ߵ����
		return
	end
	
	if (UTask_trsub05 == 2) then 
		Say("����ţ����нſ���� ��������� ��ˮ����� ���ݻ����š���ʲô���أ�", 3, "��/no2", "��/no2", "��/yes2")
		return
	end

	if (UTask_trsub05 == 4) then 
		Say("����ţ�������ֻΪ����������Ǹ�ʲô�֣�", 3, "ؤ/yes3", "��/no1", "��/no1")
		return
	end

	if (UTask_trsub05 == 6) then 
		Say("����ţ������ө���ս��ߡ����Ǹ�ʲô�֣�", 3, "��/no2", "��/yes4", "��/no2")
		return
	end
	
	if (UTask_trsub05 == 8) then 
		Say("����ţ���ͥǰ���¶�ӳ��Ӱ������һ�С�����ֿɾ��Ѳ�����", 3, "��/yes5", "��/no1", "��/no1")
		return
	end

	if (UTask_trsub05 == 10) then 
		Say("����ţ�����������", 0)
	end	

return	
end;

i = random(0,3);

if (i == 0) then
Say("����ţ�������ɽ���ڣ��Ǵ���ľ���ʱ�����ᣬ�ޱ����ġ�������������������",0)
return
end;

if (i == 1) then
Say("����ţ���������ˮ����ɳ��ҹ���ػ����Ƽҡ���Ů��֪�����ޣ������̳���ͥ�����������ɱ����ɱ���",0)
return
end;

if (i == 2) then
Say("����ţ�����ʱ���º�ʱ�أ����ﳤ����δ������ʹ���Ƿɽ��ڣ����̺������ɽ����������̾����̾��",0)
return
end;

if (i == 3) then
Say("����ţ����������ţ�������Ļ���β�ʮ���˼ҡ������غ����t��ѡ���������ӣ�ʮ��ɻ����������ɺް��ɺޣ��������������Ϊ���״ʣ����˿���Ҳ����������ְɣ�",0)
return
end;

end;



function yes1()
Say("����ţ����", 0);
SetTask(25, 2);
end;

function no1()
Say("����ţ����񲻶԰ɣ�", 0);
end;

function yes2()
Say("����ţ��԰���", 0);
SetTask(25, 4);
end;

function no2()
Say("����ţ���Ҳ��Ҳ��", 0);
end;

function yes3()
Say("����ţ�������������", 0);
SetTask(25, 6);
end;

function yes4()
Say("����ţ��ߣ�ʵ���Ǹߣ�", 0);
SetTask(25, 8);
end;

function yes5()
Say("����ţ�����������С�������⽻��������ѣ�С������������ϰ��֮�ˣ���С����һ��������ģ���������һ������������С����������һ�ѶϽ����������ò��ţ����͸���ɡ�", 0);
AddEventItem("�Ͻ�����ˮ��");
Msg2Player("�õ��Ͻ�����ˮ����");
SetTask(25, 10);
if (HaveItem("�Ͻ������ա�") == 1 and HaveItem("�Ͻ���ת�ǡ�") == 1 and HaveItem("�Ͻ���ȥа��") == 1 and HaveItem("�Ͻ�����ꡱ") == 1) then 		
	SetTask(4, 65)
end	
end;