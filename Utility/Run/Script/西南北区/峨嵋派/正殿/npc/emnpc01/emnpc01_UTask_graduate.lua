--description: ����������ʦ̫��ʦ����
--author: yuanlan	
--date: 2003/3/6



function emnpc01_UTask_graduate()

Say("����ʦ̫����������<color=Red>����ָ��<color>�����Ǳ�����ʦ������������֮���������ڼ�ʮ��ǰ�����ɳ���һ����ͽ<color=Red>���<color>������Ϊʦ��ʦ�㣬��Ϊ��Ϊʦ�������Ų��������Ե�����<color=Red>����ָ��<color>����Ը��ﱾ�ɶ��<color=Red>����ָ��<color>��" , 2, "Ը��/accept2", "���ѵ��˴���/refuse2");
DelItem("����ָ��");							--��ֹ�ؽ��������Ҽ����������

end;


function accept2()
Say("����ʦ̫����˵���<color=Red>���<color>��<color=Red>����Դͷ<color>����������Ҫһ��С�ģ�", 0)
SetTask(1, 65);
end;


function refuse2()
Say("����ʦ̫������Ϊʦֻ�ܰ�������ν��������ˡ�", 0)
end;



