
function main(sel)
local w,x,y = GetWorldPos()

if ( GetFightState() == 0 ) then	-- ��Ҵ��ڷ�ս��״̬�����ڳ���
	SetPos(floor(x/32)+3,floor(y/32)+3)		-- �����߳�Trap�㣬Ŀ�ĵ��ڳ���	
	SetFightState(1)		-- ת��Ϊս��״̬
	else			       		-- ��Ҵ���ս��״̬�����ڳ���
	SetPos(floor(x/32)-2,floor(y/32)-2)		-- �����߳�Trap�㣬Ŀ�ĵ��ڳ���	
	SetFightState(0)		-- ת��Ϊ��ս��״̬
end;
end;