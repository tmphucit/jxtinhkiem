--description: ������ ������ �Ƶ��ϰ�Ի� 
--author: yuanlan	
--date: 2003/4/24


function main(sel)

UTask_tw = GetTask(3);

if (UTask_tw == 2) then 							--��������������
Talk(4, "", "��ң��ϰ壬������ʲô����ã�", "�Ƶ��ϰ壺������õľƷ�<color=Red>����������<color>Ī����ֻ���������־ƺܷѹ��򣬶���ԭ��Ҳ�����ң����Լ�Ǯ�����ˡ�", "��ң�ֻҪ�ƺþ��У�������һ̳��Ҫ�������ӣ�", "�Ƶ��ϰ壺�����ٶ�Ҳû�ã������Ѿ��ܾ�û���������־��ˣ���Ϊȱ��ԭ��<color=Red>��֥<color>��<color=Red>����<color>��<color=Red>������<color>���������Ū��������ԭ�ϣ��ҾͰ�������һ̳����˵������ҩ��������<color=Red>����ɽ�Ķ�����<color>��ֻ���������кܶ���˵Ĺ��ޣ�����û�˸�ȥ������")
SetTask(3, 4)
return
end;		


if (UTask_tw == 4) then 
	if ( HaveItem("��֥") == 0  or  HaveItem("����") == 0  or  HaveItem("������") == 0 ) then	--û����������ԭ��
		Say("�Ƶ��ϰ壺ֻҪ���ҵ�<color=Red>��֥<color>��<color=Red>����<color>��<color=Red>������<color>���ҾͰ�������һ̳<color=Red>������<color>����˵������ҩ��������<color=Red>����ɽ�Ķ�����<color>��ֻ���������кܶ���˵Ĺ��ޣ�����û�˸�ȥ������", 0)			
	else												--������������
		Talk(2, "", "��ң��ϰ壬���Ѿ����������������ԭ�ϣ�����Ϊ������'������'�ɡ�", "�Ƶ��ϰ壺�ã�������Ҫ��һ��ʱ�������á�") 
		DelItem("��֥") 
		DelItem("����") 
		DelItem("������") 
		SetTask(3, 6)
		SetTimer(14400, 1)									--������ʱ��
	end	
return	
end;		


if (UTask_tw == 6) then 
	UTask_twsub01 = GetTask(13);
	if (UTask_twsub01 == 1) then 									--ʱ�仹û��	
		AddEventItem("������")
		Msg2Player("�õ����ơ���������һ̳��")
		SetTask(3, 8)
	else
		Say("�Ƶ��ϰ壺ʱ��δ�����ƻ�û����ã��㻹Ҫ�ȣ�"..GetRestTime(), 0)		
	end
return	
end;


Say("�Ƶ��ϰ壺�������������������֮�磬�Ӳ��ḻ���͹�Ҫ�Ե�ʲô�ʻ����ȵ�ʲô�ƣ�",0);


end;






	
