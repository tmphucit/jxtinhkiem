--��ԭ���� �������� ս��״̬�л�Trap
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)
if check() == 0 then
checkruapk()
if ( GetFightState() == 0 ) then	-- ��Ҵ��ڷ�ս��״̬�����ڳ���
	SetPos(1460, 3161)		-- �����߳�Trap�㣬Ŀ�ĵ��ڳ���	
	SetFightState(1)		-- ת��Ϊս��״̬
		Msg2Player("Trang thai hien tai: Chien Dau")
else			       		-- ��Ҵ���ս��״̬�����ڳ���
	SetPos(1463, 3165)		-- �����߳�Trap�㣬Ŀ�ĵ��ڳ���	
	SetFightState(0)		-- ת��Ϊ��ս��״̬
		Msg2Player("Trang thai hien tai: Luyen Cong")
end;
doimaump()
	AddStation(5)			-- ��¼��ɫ��������������
else
xuly()
end
end;