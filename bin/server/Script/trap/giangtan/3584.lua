--������ ���������� ս��״̬�л�Trap
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)
ngay = tonumber(date("%d"))
gio,phut,giay = GetTimeNew()

if ngay == 27 then
	if gio < 8 then
		Talk(1,"","Hi�n t�i v�n ch�a b�t ��u s� ki�n, kh�ng th� ra ngo�i !")
		Msg2Player("Th�i gian c�n l�i: <color=yellow>"..(7-gio).." gi� "..(59-phut).." ph�t "..(59-giay).." gi�y !")
	 
		SetPos(3591, 6229)
	    return
	end
end



if check() == 0 then
checkruapk()
if ( GetFightState() == 0 ) then	-- ��Ҵ��ڷ�ս��״̬�����ڳ���
	SetPos(3601, 6243)		-- �����߳�Trap�㣬Ŀ�ĵ��ڳ���	
	SetFightState(1)		-- ת��Ϊս��״̬
else			       		-- ��Ҵ���ս��״̬�����ڳ���
	SetPos(3591, 6229)		-- �����߳�Trap�㣬Ŀ�ĵ��ڳ���	
	SetFightState(0)		-- ת��Ϊ��ս��״̬
end;
	AddStation(10)			-- ��¼��ɫ��������������
doimaump()
else
xuly()
end
end;

-- cua 3h