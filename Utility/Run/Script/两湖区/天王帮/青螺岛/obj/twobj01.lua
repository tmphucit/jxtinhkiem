--description: �������ʦ���� ���ݵ�����
--author: yuanlan	
--date: 2003/4/28


function main()

UTask_tw = GetTask(3);

if (UTask_tw == 62) then
	if ( HaveItem("������Կ��") == 1) then		
		DelItem("������Կ��")
		Say("�����ǿյģ�ԭ�����������顷�ѱ�ɽ�����ɱ�������õ���",0)
		SetTask(3, 64)
	else
		Say("û��Կ�ף��򲻿����䡣",0)
	end
else
	Say("�����ǿյġ�",0)	
end

end;

  	





