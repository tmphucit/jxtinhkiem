--description: ��ԭ���� �꾩�� ����1�Ի� ���̳̽�ʦ����
--author: yuanlan	
--date: 2003/5/19



function main(sel)

UTask_tr = GetTask(4);

if (UTask_tr == 62) then

	UTask_trsub04 = GetTask(24)
	
	if (UTask_trsub04 == 0) then 
		Say("���������ҽ�����ʮ�ˣ���û��Ȣ��ϱ��������Ϊʲôû����ϲ�����أ�������˵����ʵ��ͦϲ���Ƕ����ŹѸ���������һֱ����������ף������������ҡ�", 2, "������������������/accept", "��������/refuse")
		DelItem("�Ͻ������ա�")
		DelItem("����")				
		DelItem("����")						--�����ؽ��������Ҽ���������ߵ����
	return
	end
	
	if (UTask_trsub04 == 2) then 
		Say("��������̫�鷳���ˣ����������͵�����", 0)
	return
	end

	if (UTask_trsub04 == 4) then 
		if ( HaveItem("����") == 1 ) then
			Talk(2, "", "��ң���ʵ�ŹѸ�����Ҳ�кøУ����������͸�������ҡ�", "��������̫лл���ˣ����û���㣬���ǲ�֪Ҫ�ȶ�ò������׶Է������⡣����һ�ѶϽ�����Ȼ��ֵʲôǮ����ȴ�����Ǽ��洫�ģ����͸�����Ϊл��ɡ�")
			DelItem("����")
			AddEventItem("�Ͻ������ա�")
			Msg2Player("�õ��Ͻ������ա���")
			SetTask(24, 10)
			if (HaveItem("�Ͻ�����ˮ��") == 1 and HaveItem("�Ͻ���ת�ǡ�") == 1 and HaveItem("�Ͻ���ȥа��") == 1 and HaveItem("�Ͻ�����ꡱ") == 1) then 		
				SetTask(4, 65)
			end
		else						--��ʧ����
			Say("ϵͳ������⣡�㲻С�İ�����Ū���ˡ�", 2, "��������/find", "���������������/redo")	
		end
	return
	end
	
	if (UTask_trsub04 == 10) then 				
		Say("����������л�����Һ��ŹѸ�����Ե��Ҫ��Ҫ����������ı��У�", 2, "����/yes", "������/no")
	end	

return
end;

Say("����������ǰ���������̵�����ɺ���ˣ�������ʿ���Ͷ�����������Ʊ��У�����񡭡���˵Ҳ�գ�Ҫ��Ҫ����������ı��У�", 2, "����/yes", "������/no");

end;


function accept()
Say("����������̫�鷳���ˣ���������������ִ��Ƶģ�������͸�������������ܣ��ͱ�����������Ҳ���ҡ�", 0);
AddEventItem("����");
Msg2Player("�õ�һ֧������");
SetTask(24, 2);	
end;


function refuse()
Say("��������Ҫ��Ҫ����������ı��У�", 2, "����/yes", "������/no");
end;


function yes()
Sale(7);  			--�������׿�
end;


function no()
end;


function find()
end;


function redo()
Say("ϵͳ�����������꾩����������������", 0)
Msg2Player("����ѡ���������꾩����������������")
SetTask(24, 0)
end;






