--���ϱ��� �ɶ��� ·��14ѦС�öԻ�  ������40������
--author: yuanlan	
--date: 2003/5/23



function main(sel)

UTask_em = GetTask(1);
UTask_emsub01 = GetTask(29);

if (UTask_em == 45) then 

	if (UTask_emsub01 == 0) then 
		Talk(5, "", "ѦС�ã���λ��㣬���ϸ�ס�ң���ɶ�����", "������˼����Ϊ������������һ���������ζ�����ԡ���", "ѦС�ã�����������ŵ��������õ����������ң���������Ͽ��Ǵ����򴫹������أ�", "ԭ�����������ң��ѹ���ô�㣡���ӣ���ɲ����԰�����������������ң����м��á�", "ѦС�ã����ǲ����ģ���������˵������ӻ����������һ���¿������������һ֧���������һ��ɣ�")
		SetTask(29, 2)	
	return
	end
	
	if (UTask_emsub01 == 2) then 
		Say("ѦС�ã���Ҫ��������������һ֧���������һ��ɣ�", 0)
	return
	end
	
	if (UTask_emsub01 == 4) then 
		if (HaveItem("����") == 1) then
			Say("ѦС�ã���Ư����������������Ҿ��͸���ɣ�", 1, "�õ���������/get")
		else
			Say("ѦС�ã�����������",0)			
		end
	return					
	end
		
	if (UTask_emsub01 == 10) then 
		if (HaveItem("��������") == 1) then
			Say("ѦС�ã�����ɶ���£�", 0)
		else
			Say("ѦС�ã���û�����������ˣ��㻹��ɶ���£�",0)			
		end
	return					
	end	

end;
		
Say("ѦС�ã����ϸ�ס�ң��������ɶ���",0)

end;


function get()
DelItem("����")
AddEventItem("��������")
Msg2Player("�õ��������ҡ�")
SetTask(29, 10)	
end;