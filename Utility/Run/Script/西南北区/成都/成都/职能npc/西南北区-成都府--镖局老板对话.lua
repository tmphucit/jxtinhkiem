--description: ���ϱ����ɶ����ھ��ϰ� 
--author: yuanlan	
--date: 2003/3/5


function main(sel)

UTask_em = GetTask(1);

if (UTask_em == 44) then 							--������40������
Talk(6, "", "��ң���˵���ھֲ���һ���λ��ڵ�<color=Red>��ܽ�ؽ���ͼ��<color>������������Ҫ�������ӣ�", "�ھ��ϰ壺�ô�Ŀ�������֪���Ƿ�ͼ�ļ�ֵ�𣿶�������Ҳ������", "��ң������л����ڵ���Ҫһ������ʲô�������ø��Ұɣ�Ҫʲô����ֻ�ܿ��ڣ�", "�ھ��ϰ壺�㵹��ˬ�죬�ã�ֻҪ����Ϊ�����������������ҾͰѡ�ܽ�ؽ���ͼ���������ã�", "��ң�������������", "�ھ��ϰ壺<color=Red>��������<color>��<color=Red>ӥ�������<color>��<color=Red>������ָ<color>��ȫ�Ǳ�����������˳���ļ�����������������ɲ������Ŷ��")
SetTask(1, 45)
return
end;		


if (UTask_em == 45) then 							--������40������
	UTask_emsub01 = GetTask(29)
	UTask_emsub02 = GetTask(30)
	UTask_emsub03 = GetTask(31)
	if ( UTask_emsub01 == 10  and  UTask_emsub02 == 10  and  UTask_emsub03 == 10 ) then	
		if (HaveItem("��������")== 1  and  HaveItem("ӥ�������")== 1  and  HaveItem("������ָ")== 1) then	
			Say("�ھ��ϰ壺���߽�����������Ϊ�ȣ���ԭ��ֻ������֪�Ѷ��ˣ�û�뵽�����Ū�����������������ã��ҾͰѡ�ܽ�ؽ���ͼ���͸��㣡", 1, "�õ�ܽ�ؽ���ͼ/get")
		return
		end
			--��ʧ								
		if (HaveItem("��������")== 0  and  HaveItem("ӥ�������")== 0  and  HaveItem("������ָ")== 0) then				Say("ϵͳ������⣡�㲻С�İ����ҡ�������ͽ�ָ����Ū���ˣ����Ҫ�õ���ܽ�ؽ���ͼ�����������������������", 2, "��������/find", "���µõ���Ʒ/redo1")
		return
		end
		
		if (HaveItem("��������")== 1  and  HaveItem("ӥ�������")== 0  and  HaveItem("������ָ")== 0) then				Say("ϵͳ������⣡�㲻С�İѻ�����ͽ�ָ����Ū���ˣ����Ҫ�õ���ܽ�ؽ���ͼ�����������������������", 2, "��������/find", "���µõ���Ʒ/redo2")
		return
		end
		
		if (HaveItem("��������")== 0  and  HaveItem("ӥ�������")== 1  and  HaveItem("������ָ")== 0) then				Say("ϵͳ������⣡�㲻С�İ����Һͽ�ָ����Ū���ˣ����Ҫ�õ���ܽ�ؽ���ͼ�����������������������", 2, "��������/find", "���µõ���Ʒ/redo3")
		return
		end

		if (HaveItem("��������")== 0  and  HaveItem("ӥ�������")== 0  and  HaveItem("������ָ")== 1) then				Say("ϵͳ������⣡�㲻С�İ����Һͻ��������Ū���ˣ����Ҫ�õ���ܽ�ؽ���ͼ�����������������������", 2, "��������/find", "���µõ���Ʒ/redo4")
		return
		end		
		
		if (HaveItem("��������")== 1  and  HaveItem("ӥ�������")== 1  and  HaveItem("������ָ")== 0) then				Say("ϵͳ������⣡�㲻С�İѱ�����ָ��Ū���ˣ����Ҫ�õ���ܽ�ؽ���ͼ���������������������", 2, "��������/find", "���µõ���Ʒ/redo5")
		return
		end
					
		if (HaveItem("��������")== 1  and  HaveItem("ӥ�������")== 0  and  HaveItem("������ָ")== 1) then				Say("ϵͳ������⣡�㲻С�İ�ӥ���������Ū���ˣ����Ҫ�õ���ܽ�ؽ���ͼ���������������������", 2, "��������/find", "���µõ���Ʒ/redo6")
		return
		end
		
		if (HaveItem("��������")== 0  and  HaveItem("ӥ�������")== 1  and  HaveItem("������ָ")== 1) then				Say("ϵͳ������⣡�㲻С�İ��������Ҹ�Ū���ˣ����Ҫ�õ���ܽ�ؽ���ͼ���������������������", 2, "��������/find", "���µõ���Ʒ/redo7")
		return
		end
							
	else									--û��������������
		Say("�ھ��ϰ壺������<color=Red>��������<color>��<color=Red>ӥ�������<color>��<color=Red>������ָ<color>��˵��", 0)					
	end
return			
end;					


Say("�ھ��ϰ壺���ھֵ���ʦ�Ǹ�������һ��ù��򣬱��ھֽӵ����⣬������˸Ҵ����⣬�ǽ����Բ�������",0)	

end;



function get()
DelItem("��������")
DelItem("ӥ�������")
DelItem("������ָ") 
AddEventItem("ܽ�ؽ���ͼ")
Msg2Player("�õ���ܽ�ؽ���ͼ����")
SetTask(1, 46)
end;


function find()
end;


function redo1()
SetTask(29, 0)
SetTask(30, 0)
SetTask(31, 0)
end;

function redo2()
SetTask(30, 0)
SetTask(31, 0)
end;

function redo3()
SetTask(29, 0)
SetTask(31, 0)
end;

function redo4()
SetTask(29, 0)
SetTask(30, 0)
end;

function redo5()
SetTask(31, 0)
end;

function redo6()
SetTask(30, 0)
end;

function redo7()
SetTask(29, 0)
end;