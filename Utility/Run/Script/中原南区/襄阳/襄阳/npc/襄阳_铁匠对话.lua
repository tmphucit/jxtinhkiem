--description: ��ԭ���� ������ �����Ի� �䵱�ɳ�ʦ����
--author: yuanlan	
--date: 2003/5/17



function main(sel)

UTask_wd = GetTask(5);
UTask_wdsub03 = GetTask(18);
	
if (UTask_wd == 62) then
	
	if (UTask_wdsub03 == 2) then 
		Talk(2, "", "��ң����ǰ��ս���ս����ٱ���е���㣬���ܲ��ܾ������һ������ǰ�ߣ�", "������������˵�������ʱ��һֱ������ҹ���ƣ�������Ϊ�����޴����Կ�ʯ�Ŀ���Ѿ��������ˣ�<color=Red>������������ͳ�ͭ��<color>���Ѿ������ˣ����ܲ��ܵ�<color=Red>������������<color>�а���ŪһЩ��ʯ��")
		SetTask(18, 5)	
	return
	end
	
	if (UTask_wdsub03 == 5) then 
		if ( HaveItem("������") == 1 and HaveItem("������") == 1 and HaveItem("��ͭ��") == 1) then
			Talk(2, "", "��ң����Ѿ�������ʯ��ϣ����Щ��ʯ�ܹ��������õı���������ʿ���ǵ���������֡�", "�����������־�ɳǣ�һ�����Ը�����Щ���ǻ�����")
			DelItem("������")
			DelItem("������")
			DelItem("��ͭ��")
			SetTask(18, 8)
		else
			Say("�������ɸ���Ϊ����֮����û�п�ʯ����Ҳû�а취�����е�������ܲ��ܵ�<color=Red>������������<color>�а���ŪһЩ<color=Red>������������ͳ�ͭ��<color>��", 2, "����/yes", "������/no")
		end
	return
	end		

end

Say("������������ר��Ϊפ�����������æ�úܣ�����Ҫ��ô���������Լ��������", 2, "����/yes", "������/no");

end;


function yes()
Sale(10);  			--�������׿�
end;


function no()
end;





