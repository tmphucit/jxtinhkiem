--������ ���������� ս��״̬�л�Trap
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)
if check() == 0 then
checkruapk()
if ( GetFightState() == 0 ) then	-- ��Ҵ��ڷ�ս��״̬�����ڳ���
	SetFightState(1)
	SetPos(1728, 3257)
	Msg2Player("Trap 41")
else			       		-- ��Ҵ���ս��״̬�����ڳ���
	SetPos(1721, 3248)
	SetFightState(0)	
	Msg2Player("Trap 42")	-- ת��Ϊ��ս��״̬
end;
	doimaump()
else
xuly()
end
end;