--���ϱ��� �ɶ����� ս��״̬�л�Trap
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)
if check() == 0 then
checkruapk()
if ( GetFightState() == 0 ) then	-- ��Ҵ��ڷ�ս��״̬�����ڳ���
	SetPos(3011, 4945)		-- �����߳�Trap�㣬Ŀ�ĵ��ڳ���	
	SetFightState(1)		-- ת��Ϊս��״̬
else			       		-- ��Ҵ���ս��״̬�����ڳ���
	SetPos(3014, 4951)		-- �����߳�Trap�㣬Ŀ�ĵ��ڳ���	
	SetFightState(0)		-- ת��Ϊ��ս��״̬
end;
doimaump()
	AddStation(2)			-- ��¼��ɫ���������ɶ���
else
xuly()
end
end;