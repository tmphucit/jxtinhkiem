--������ ���������� ս��״̬�л�Trap
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)
if check() == 0 then
checkruapk()
if ( GetFightState() == 0 ) then	-- ��Ҵ��ڷ�ս��״̬�����ڳ���
	SetFightState(1)
	Msg2Player("Trap 21")
else			       		-- ��Ҵ���ս��״̬�����ڳ���
	SetFightState(0)		-- ת��Ϊ��ս��״̬
	Msg2Player("Trap 22")
end;
doimaump()	
else
xuly()
end
end;