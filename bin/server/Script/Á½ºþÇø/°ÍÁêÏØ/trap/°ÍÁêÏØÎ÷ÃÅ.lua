--������ ���������� ս��״̬�л�Trap
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)
ngay = tonumber(date("%d"))
h,m,s = GetTimeNew()

if check() == 0 then
checkruapk()
if ( GetFightState() == 0 ) then	-- ��Ҵ��ڷ�ս��״̬�����ڳ���
	
	if ngay == 1 and h < 9 then
		Talk(1,"","Hi�n t�i v�n ch�a b�t ��u s� ki�n, kh�ng th� ra ngo�i !")
		Msg2Player("Th�i gian c�n l�i: <color=yellow>"..(8-h).." gi� "..(59-m).." ph�t "..(59-s).." gi�y !")
		SetPos(1542, 3116)		-- �����߳�Trap�㣬Ŀ�ĵ��ڳ���	
	SetFightState(0)		-- ת��Ϊ��ս��״̬
	else
	SetPos(1539, 3112)		-- �����߳�Trap�㣬Ŀ�ĵ��ڳ���	
	SetFightState(1)		-- ת��Ϊս��״̬
	end	
else			       		-- ��Ҵ���ս��״̬�����ڳ���

	SetPos(1542, 3116)		-- �����߳�Trap�㣬Ŀ�ĵ��ڳ���	
	SetFightState(0)		-- ת��Ϊ��ս��״̬
end;
	AddStation(10)			-- ��¼��ɫ��������������
doimaump()
else
xuly()
end
end
