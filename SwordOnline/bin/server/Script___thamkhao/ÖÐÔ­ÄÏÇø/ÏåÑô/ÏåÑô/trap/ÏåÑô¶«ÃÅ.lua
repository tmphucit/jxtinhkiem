--��ԭ���� �������� ս��״̬�л�Trap
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)
if check() == 0 then
checkruapk()
if ( GetFightState() == 0 ) then	-- ��Ҵ��ڷ�ս��״̬�����ڳ���
	SetPos(1621, 3417)		-- �����߳�Trap�㣬Ŀ�ĵ��ڳ���	
	SetFightState(1)		-- ת��Ϊս��״̬
	Msg2Player("Trang thai hien tai: Chien Dau")
else			       		-- ��Ҵ���ս��״̬�����ڳ���
	SetPos(1618, 3413)		-- �����߳�Trap�㣬Ŀ�ĵ��ڳ���	
	SetFightState(0)		-- ת��Ϊ��ս��״̬
	Msg2Player("Trang thai hien tai: Luyen Cong")
end;
	AddStation(5)			-- ��¼��ɫ��������������
doimaump()
else
xuly()
end
end;