--description: ������л������������
--author: yuanlan	
--date: 2003/3/3



function emnpc05_UTask_enroll()

Say("л���ܣ���Ȼǰ�����λʦ�㶼�Ѳ����㣬��ô'��'��һ��������ͨ���ˣ����ǻ�Ҫ��'��'�أ���һ���������ͨ��������ӭ���󣬲��ҵõ�<color=Red>��������<color>����Ҫ������", 2, "��/yes", "����/no");
DelItem("��������");		--��ֹ�ؽ��������Ҽ����������

end;


function yes()
--SetPos(1766, 5136);				--����Ҵ������Թ�
SetTask(1, 7);
end;


function no()
end;


