--description: ��ԭ���� �꾩�� ·��13�ŹѸ��Ի� ���̳̽�ʦ����
--author: yuanlan	
--date: 2003/5/19




function main(sel)

UTask_tr = GetTask(4);

if (UTask_tr < 62) then
	i = random(0,1)
	if (i == 0) then
		Say("�ŹѸ���������ǰ��ò����ˣ��Ҷ��ؿչ룬���Ƕ������갡��",0)
		return
	end;
	if (i == 1) then
		Say("�ŹѸ�������˵���Ǳ��ķ���̫Ϊ���Ǵ�δı����ɷ���������ʮ��ѣ�������̫�����ˣ�",0)
		return
	end;
end;
	

if (UTask_tr == 62) then
	
	UTask_trsub04 = GetTask(24)
	
	if (UTask_trsub04 < 2) then 
		i = random(0,1)
		if (i == 0) then
			Say("�ŹѸ���������ǰ��ò����ˣ��Ҷ��ؿչ룬���Ƕ������갡��",0)
			return
		end;
		if (i == 1) then
			Say("�ŹѸ�������˵���Ǳ��ķ���̫Ϊ���Ǵ�δı����ɷ���������ʮ��ѣ�������̫�����ˣ�",0)
			return
		end;
	end;
	
	if (UTask_trsub04 == 2) then 
		if (HaveItem("����") == 1) then
			Talk(2, "", "��ң���������ǳ���������������͸���ģ���һֱ���������⣬ֻ��û��������ף���֪�㡭��", "�ŹѸ�����ʵ����ʵ�Ҷ���Ҳ���кøУ�ֻ�ǡ�ֻ������һ���Ѹ�����ô���ȿ����أ���������������ַ��Ƶģ��鷳�������͸������͡�����������ɡ�")
			DelItem("����")
			AddEventItem("����")
			Msg2Player("�õ�һ�����ҡ�")
			SetTask(24, 4)
		else						--��ʧ����
			Say("ϵͳ������⣡�㲻С�İ�����Ū���ˡ�", 2, "��������/find", "����������/redo")		
		end
	return		
	end
	
	if (UTask_trsub04 > 2) then 
		Say("�ŹѸ�����л�����Һ�����ǣ�ߣ�Ҫ��Ȼ����ľ�Ҫ���������ˣ�", 0)
	return	
	end;

end;


if (UTask_tr > 62) then
Say("�ŹѸ�����л�����Һ�����ǣ�ߣ�Ҫ��Ȼ����ľ�Ҫ���������ˣ�", 0)
end;	


end;


function find()
end;


function redo()
Say("ϵͳ�����������꾩����������������", 0)
Msg2Player("����ѡ���������꾩����������������")
SetTask(24, 0)
end;
