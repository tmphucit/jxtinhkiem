
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
if ngay == 21 and thang == 8 and gio < 19 then
		Msg2Player("S� ki�n �ua Top M�y Ch� Ph�t S�n s� b�t ��u v�o l�c 19h00 ng�y 21/08/2021. Th�i gian c�n l�i: <color=red>"..(18-gio).." gi� "..(59-phut).." ph�t "..(59-giay).." gi�y !")
		SetPosU(2036, 4485)
		return
end


if ( GetFightState() == 0 ) then	
	SetFightState(1)	
	SetPosU(2038, 4482)
else			       	
	SetFightState(0)		
	SetPosU(2036, 4485)
end;
end;
