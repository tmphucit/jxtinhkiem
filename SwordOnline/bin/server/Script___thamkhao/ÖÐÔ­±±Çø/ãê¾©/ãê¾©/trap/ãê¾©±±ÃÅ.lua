--������ ���������� ս��״̬�л�Trap
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)
if check() == 0 then
checkruapk()
if ( GetFightState() == 0 ) then	-- ��Ҵ��ڷ�ս��״̬�����ڳ���
	SetFightState(1)
	SetPos(1893, 2900)
	Msg2Player("Trap 31")
else			       		-- ��Ҵ���ս��״̬�����ڳ���
	SetFightState(0)
	SetPos(1884,2912)
	Msg2Player("Trap 32")		-- ת��Ϊ��ս��״̬
end;
	doimaump()
else
xuly()
end
end;