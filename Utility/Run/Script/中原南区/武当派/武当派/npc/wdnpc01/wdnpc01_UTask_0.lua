--description: �䵱��С��ʿ�����������
--author: yuanlan	
--date: 2003/5/14



function wdnpc01_UTask_0()

if (GetSeries() ~= 4) then							--�����Ҳ�������ϵ
	Say("С��ʿ��磺������ɽ���������������ʦѧ�գ�����ĸ���������̫�ʺ������ɵĹ���", 0)
else	if (GetFaction() ~= "") then						--�������Ѿ�������ϵ����һ����
		Say("С��ʿ��磺ԭ���������ɵĴ�����������������", 0)
	else									
		Say("С��ʿ��磺�ҸղŴ�ˮ��ʱ��С�Ľ�Ͱ��Ū���ˣ����<color=Red>ľͰ<color>������<color=Red>��<color>�����ˮ����ȥһ���ᱻʦ������ġ���Ը�����ȡ��<color=Red>ľͰ<color>��", 2, "Ը��/yes", "�Ұﲻ����/no")
	end
end;

end;


function yes()
Say("С��ʿ��磺����ã�<color=Red>ľͰ<color>�͵����Ǹ�<color=Red>��<color>�", 1, "������¾�������/ok");
DelItem("ľͰ")									--��ֹ�ؽ��������Ҽ����������
end;


function no()
Say("С��ʿ��磺�����ұ��˰�æ�ɡ�", 0);
end;


function ok()
SetTask(5, 5);    			
NewWorld(82, 1593, 3193);
end;