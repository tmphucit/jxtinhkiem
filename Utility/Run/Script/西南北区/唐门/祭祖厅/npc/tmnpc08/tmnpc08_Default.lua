--description: �����Ʋ�Ⱦ ������Ի�
--author: yuanlan	
--date: 2003/3/11


function tmnpc08_Default()

UTask_tm = GetTask(2);

if (UTask_tm < 30) then								--��δ��30������
Say("�Ʋ�Ⱦ����������Ǳ��Űݼ��������ڵĵط���Ѱ���˵Ȳ������룡", 0)
end;				

if (UTask_tm > 30) and (UTask_tm < 40) then					--�Ѿ��ӵ�30��������δ���
Say("�Ʋ�Ⱦ�����Ѱ���̽������ǻ��˺��񾭳���û��<color=Red>���ɽ���߰��ƶ�<color>һ����", 0)
end;				

if (UTask_tm >= 40) and (UTask_tm < 70) then					--�Ѿ����30��������δ��ʦ
Say("�Ʋ�Ⱦ�����ܰ�����ʦ��ϴ��ԩ����������Ҫ�����Ŀ�࿴�ˣ�", 0)
end;				

if (UTask_tm >= 70) then							--�Ѿ���ʦ
Say("�Ʋ�Ⱦ����һֱ���ȥ���ߣ����ǵ����ǲ�ͬ�⡣", 0)
end;				

end;


