



Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)
ngay = tonumber(date("%d"))
h,m,s = GetTimeNew()

if check() == 0 then
doimaump()
checkruapk()
if ( GetFightState() == 0 ) then
	if ngay == 32 and h < 10 then
		Talk(1,"","Hi�n t�i v�n ch�a b�t ��u s� ki�n, kh�ng th� ra ngo�i !")
		Msg2Player("Th�i gian c�n l�i: <color=yellow>"..(9-h).." gi� "..(59-m).." ph�t "..(59-s).." gi�y !")
	       		
	SetPos(1720, 3233)	
	SetFightState(0)
	else
	SetPos(1732, 3249)		
	SetFightState(1)
	end		
else			       		
	SetPos(1720, 3233)	
	SetFightState(0)		
end;
	AddStation(10)			
else
xuly()
end
end;