--description: ��ԭ���� ������ ҩ���ϰ�Ի� �䵱�ɳ�ʦ����
--author: yuanlan	
--date: 2003/5/17

function main(sel)

UTask_wd = GetTask(5);
UTask_wdsub02 = GetTask(17);
	
if (UTask_wd == 62) then
	
	if (UTask_wdsub02 == 2) then 
		Talk(2, "", "��ң����ǰ��ս���������ӣ�������ʲô�ð취�أ�", "ҩ���ϰ壺����������Ҫ����ҩ�ģ�<color=Red>���顢�ϻ������Ρ���������ɰ<color>��������ҩ��������<color=Red>��ţɽ�Ķ���<color>��ֻҪ����������ҩ�ģ��Ƴ�ҩ�裬�Ϳ����������ߡ�")
		SetTask(17, 5)	
	return
	end
	
	if (UTask_wdsub02 == 5) then 
		if ( HaveItem("����") == 1 and HaveItem("�ϻ�") == 1 and HaveItem("����") == 1 and HaveItem("����") == 1 and HaveItem("��ɰ") == 1) then
			Talk(2, "", "��ң����Ѿ������������ߵ�����ҩ�ģ������Ͽ��Ƴ�ҩ�裬�����ٸ���������Ӫ��", "ҩ���ϰ壺����������ƥ���������ҷ��ģ���һ���������һƥҩ������ǰ�ߡ�")
			DelItem("����")
			DelItem("�ϻ�")
			DelItem("����")
			DelItem("����")
			DelItem("��ɰ")
			SetTask(17, 8)
		else
			Say("ҩ���ϰ壺����������Ҫ����ҩ�ģ�<color=Red>���顢�ϻ������Ρ���������ɰ<color>��ȱһ���ɡ�������ҩ�Ķ�������<color=Red>��ţɽ�Ķ���<color>��", 2, "����/yes", "������/no")
		end
	return
	end		

end

Say("ҩ���ϰ壺���������Ƹ��ִ��ˡ����ˡ�ײ�ˡ����ˡ����ˡ����˵�ҩ�ȱ𴦶���ȫ������Ҫ��ô��ҩ��", 2, "����/yes", "������/no");

end;


function yes()
Sale(12);  			--�������׿�
end;


function no()
end;


