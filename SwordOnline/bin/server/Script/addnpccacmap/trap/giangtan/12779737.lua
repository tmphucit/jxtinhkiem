--������ ���������� ս��״̬�л�Trap
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)
ngay = tonumber(date("%d"))
gio,phut,giay = GetTimeNew()
if ngay == 41 and gio < 10 then
		Talk(1,"","Hi�n t�i v�n ch�a b�t ��u s� ki�n, kh�ng th� ra ngo�i !")
		Msg2Player("Th�i gian c�n l�i: <color=yellow>"..(9-gio).." gi� "..(59-phut).." ph�t "..(59-giay).." gi�y !")

		SetPos(3493, 6243)
	     return
end

if check() == 0 then
doimaump()
checkruapk()
if ( GetFightState() == 0 ) then	-- ��Ҵ��ڷ�ս��״̬�����ڳ���
	SetPos(3483, 6251)		-- �����߳�Trap�㣬Ŀ�ĵ��ڳ���	
	SetFightState(1)		-- ת��Ϊս��״̬
else			       		-- ��Ҵ���ս��״̬�����ڳ���
	SetPos(3493, 6243)		-- �����߳�Trap�㣬Ŀ�ĵ��ڳ���	
	SetFightState(0)		-- ת��Ϊ��ս��״̬
end;
	AddStation(10)			-- ��¼��ɫ��������������
Msg2Player("Thay doi trang thai 4")
else
xuly()
end
end;