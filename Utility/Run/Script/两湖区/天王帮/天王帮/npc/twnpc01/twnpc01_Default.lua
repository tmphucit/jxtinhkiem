--description: �������ڷ�����Ի�
--author: yuanlan	
--date: 2003/4/24


function twnpc01_Default()

UTask_tw = GetTask(3);

if (UTask_tw < 10) then 					--��δ����
	Say("����죺��Ū��һ̳�þ���˵����˵<color=Red>�����صľƹ�<color>����һ�����ƽ�<color=Red>����������<color>�����Ǿ�����Ʒ����",0) 
else
	if (UTask_tw < 70) then   				--�Ѿ����ţ���δ��ʦ
		Say("����죺���ֵܣ��п��۸����úú��ϼ�����", 0)
	else							--�Ѿ���ʦ
		Say("����죺û�¶������˻�������Ⱦƣ�", 0)
	end
end;	

end;



