--������ ������ �ӻ����ϰ�Ի�

function main(sel)

UTask_tw = GetTask(3);
UTask_twsub02 = GetTask(14);

if (UTask_tw == 45) then 		--������40������
	if (UTask_twsub02 == 2) then 
		Say("�ӻ����ϰ壺����ǰ�������ɵ��ģ�������һ�㱾Ǯ֮�󣬾��ڴ˵ذ����������������СС���ӻ��ꡣ", 3, "����������/lotus", "����/yes", "������/no")
	else			
		Say("�ӻ����ϰ壺����ǰ�������ɵ��ģ�������һ�㱾Ǯ֮�󣬾��ڴ˵ذ����������������СС���ӻ��ꡣ", 2, "����/yes", "������/no")
	end
return			
end

Say("�ӻ����ϰ壺����ǰ�������ɵ��ģ�������һ�㱾Ǯ֮�󣬾��ڴ˵ذ����������������СС���ӻ��ꡣ", 2, "����/yes", "������/no")

end;


function lotus()
Say("�ӻ����ϰ壺���ӿ�������������ز�������Ȼ������ֻҪʮ�����ӡ�", 2, "��/yes1", "����/no1");
end;


function yes1()
if (GetCash() >= 10) then
	Pay(10)
	AddEventItem("����")
	Msg2Player("�����ӡ�")
	SetTask(14, 3)	
else
	Say("�ӻ����ϰ壺�ȴ湻������������ɣ��ȿ��������Ķ�����", 2, "����/yes", "������/no")		
end
end;


function no1()
Say("�ӻ����ϰ壺Ҫ��Ҫ������Ķ�����", 2, "����/yes", "������/no");
end;


function yes()
Sale(38);  			
end;

function no()
end;