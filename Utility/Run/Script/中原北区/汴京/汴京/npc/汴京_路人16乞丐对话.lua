--description: ��ԭ���� �꾩�� ·��16��ؤ�Ի� ���̳̽�ʦ����
--author: yuanlan	
--date: 2003/5/19



function main(sel)

UTask_tr = GetTask(4);

if (UTask_tr == 62) then

	UTask_trsub08 = GetTask(28)

	if (UTask_trsub08 == 0) then 
		Say("��ؤ���ͼ���СǮ�ɣ�", 2, "��/yes1", "����/no")
		DelItem("�Ͻ�����ꡱ")			--�����ؽ��������Ҽ���������ߵ����
		return
	end
	
	if (UTask_trsub08 == 2) then 
		Say("��ؤ���ͼ���СǮ�ɣ�", 2, "��/yes2", "����/no")
		return
	end
	
	if (UTask_trsub08 == 4) then 
		Say("��ؤ���ͼ���СǮ�ɣ�", 2, "��/yes3", "����/no")
		return
	end

	if (UTask_trsub08 == 10) then 
		Say("��ؤ�������㵹����һ������������α��֮�����ã�С�л�������������ѡ�", 0)
		return
	end
end

Say("��ؤ���������о�����������һ�ھƺȰɣ��ҿ���û���ԣ��ɲ���û�ƺȰ���",0)

end;


function yes1()
if (GetCash() >= 10) then
	Pay(10)
	Say("��ؤ��ֻ����ô�㰡���ߣ���ôС����", 0)
	SetTask(28, 2)
else
	Say("��ң�������˼���Ҵ���Ǯ������", 0)		
end
end;


function yes2()
if (GetCash() >= 50) then
	Pay(50)
	Say("��ؤ���ߣ�����Ϊ������ؤ�ͺô򷢣�", 0)
	SetTask(28, 4)
else
	Say("��ң����Ѿ�ûǮ����", 0)		
end
end;


function yes3()
if (GetCash() >= 100) then
	Pay(100)
	Say("��ؤ���ۣ���ĺ������Ǻð��������㲻��һ������������α��֮�����ã�С�л�������������ѣ���ѶϽ����͸���ɡ�", 0)
	AddEventItem("�Ͻ�����ꡱ")
	Msg2Player("�õ��Ͻ�����ꡱ��")
	SetTask(28, 10)
	if (HaveItem("�Ͻ������ա�") == 1 and HaveItem("�Ͻ�����ˮ��") == 1 and HaveItem("�Ͻ���ת�ǡ�") == 1 and HaveItem("�Ͻ���ȥа��") == 1) then 		
		SetTask(4, 65)
	end		
else
	Say("��ң���Ҳ��������������㰡��", 0)		
end
end;


function no()
Say("��ؤ��������Ϊ����������డ��", 0);
end;