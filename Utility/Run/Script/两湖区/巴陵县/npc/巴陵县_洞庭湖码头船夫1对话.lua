--������ ������ ��ͥ����ͷ����1�Ի�

function main(sel)
Say("�����Ҵ�С���ں��߳�����үү���ҵ����������ⶴͥ������û���Ҳ���ĵط�����Ҫ������", 2, "ȥ������/yes", "����/no");
end;

function yes()
if (GetLevel() >= 10) then						--�ȼ��ﵽʮ��
	if (GetFaction() == "������") then				--����������������ӣ���������Ǯ
		Say("����ԭ������������ֵܣ����ĺ��ˣ���������ֵ�ȥ��", 1, "��л��/ok1")
	else	
		Say("����Ӵ���ǿɲ���Ѱ����ȥ�ĵط���ȥ���ԣ���ö��Щ���ӡ�", 1, "�ð�/ok2")
	end
else		
	Say("���򣺶Բ���û��ʮ�������ֲ����������塣", 0)
end
end;


function no()
end;


function ok1()
NewWorld(59, 1425, 3472)
SetFightState(0)					--ת��Ϊ��ս��״̬
end;


function ok2()
if (GetCash() >= 100) then							--�ο�ֵ
	Pay(100)
	NewWorld(59, 1425, 3472)
	SetFightState(0)							--ת��Ϊ��ս��״̬	
else
	Say("�����ҿɲ��ܰ���һ�δ���", 0)		
end
end;