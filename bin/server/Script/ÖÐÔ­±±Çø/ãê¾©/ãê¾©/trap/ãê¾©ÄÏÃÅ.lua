--������ ���������� ս��״̬�л�Trap
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)
if check() == 0 then
if ( GetFightState() == 0 ) then	-- ��Ҵ��ڷ�ս��״̬�����ڳ���
	SetPos(1605,3227)
	SetFightState(1)
	
else		
	SetPos(1612,3218)	       		-- ��Ҵ���ս��״̬�����ڳ���
	SetFightState(0)		-- ת��Ϊ��ս��״
end;
	doimaump()
else
xuly()
end
end;