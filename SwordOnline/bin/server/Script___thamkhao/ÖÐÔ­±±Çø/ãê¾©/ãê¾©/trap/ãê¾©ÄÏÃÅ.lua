--������ ���������� ս��״̬�л�Trap
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)
if check() == 0 then
if ( GetFightState() == 0 ) then	-- ��Ҵ��ڷ�ս��״̬�����ڳ���
	SetPos(1605,3227)
	SetFightState(1)
	Msg2Player("Trap 11")
	
else		
	SetPos(1612,3218)	       		-- ��Ҵ���ս��״̬�����ڳ���
	SetFightState(0)		-- ת��Ϊ��ս��״
	Msg2Player("Trap 12")
end;
	doimaump()
else
xuly()
end
end;