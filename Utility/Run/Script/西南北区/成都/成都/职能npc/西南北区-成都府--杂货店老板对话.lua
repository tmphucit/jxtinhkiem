--���ϱ��� �ɶ��� �ӻ����ϰ�Ի� 
--author: yuanlan	
--date: 2003/5/23



function main(sel)

UTask_em = GetTask(1);
UTask_tm = GetTask(2);


if (UTask_em == 35) then 		--���������ƴ�30������
Say("�ӻ����ϰ壺�����������Ǹ����ϱ��ӻ�������������������ʲô�õ��ŵģ�", 3, "�м�������?/chicken", "����/yes", "������/no")
return
end;


if (UTask_em == 45) then 		--������40������
	UTask_emsub01 = GetTask(29)
	if (UTask_emsub01 == 2) then 
		Say("�ӻ����ϰ壺�����������Ǹ����ϱ��ӻ�������������������ʲô�õ��ŵģ�", 3, "����������?/hairpin", "����/yes", "������/no")
	else
		Say("�ӻ����ϰ壺�����������Ǹ����ϱ��ӻ�������������������ʲô�õ��ŵģ�", 2, "����/yes", "������/no")
	end
return
end;	
	

if (UTask_tm == 14) then		--��������10������
Say("�ӻ����ϰ壺�����������Ǹ����ϱ��ӻ�������������������ʲô�õ��ŵģ�", 3, "����觽�ָ����/ring", "����/yes", "������/no")
return
end;


Say("�ӻ����ϰ壺�����������Ǹ����ϱ��ӻ�������������������ʲô�õ��ŵģ�", 2, "����/yes", "������/no");

end;


function chicken()
Say("�ӻ����ϰ壺�ճ�¯�������ڵļ��ȣ������ü���Ŷ����ʮ������һֻ��Ҫ��Ҫ��", 2, "��/yes1", "����/no1");
end;


function hairpin()
Say("�ӻ����ϰ壺Ů�����۹⣬���������½��Ŀ�ʽ����֪������أ��Ŷ��������ӣ�����˰�����һֻ�ɣ�", 2, "��/yes2", "����/no1");
end;


function ring()
Say("�ӻ����ϰ壺������Ϻõ���觽�ָ�������������һֻ����Ȼ�ȽϹ󣬵��Ǿ����ﳬ��ֵ��", 2, "��/yes3", "����/no1");
end;


function yes1()
if (GetCash() >= 50) then
	Pay(50);
	AddEventItem("����");
	Msg2Player("�򵽼��ȡ�");
else
	Say("�ӻ����ϰ壺�ȴ湻������������ɣ��ȿ��������Ķ�����", 2, "����/yes", "������/no")		
end
end;


function yes2()
if (GetCash() >= 200) then
	Pay(200);
	AddEventItem("����");
	Msg2Player("��������");
	SetTask(29, 4);	
else
	Say("�ӻ����ϰ壺�ȴ湻������������ɣ��ȿ��������Ķ�����", 2, "����/yes", "������/no")		
end
end;


function yes3()
if (GetCash() >= 500) then
	Pay(500)
	AddEventItem("��觽�ָ")
	Msg2Player("����觽�ָ��")
else
	Say("�ӻ����ϰ壺�ȴ湻������������ɣ��ȿ��������Ķ�����", 2, "����/yes", "������/no")		
end
end;


function no1()
Say("�ӻ����ϰ壺Ҫ��Ҫ������Ķ�����", 2, "����/yes", "������/no");
end;


function yes()
Sale(14);  		--�������׿�
end;

function no()
end;