
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))

if ngay == 19 and thang == 6 and gio < 19 then
		Msg2Player("S� ki�n �ua Top L�n 2 V� L�m H�i �c s� b�t ��u v�o l�c 19h00. Th�i gian c�n l�i: "..(18-gio).." gi� "..(59-phut).." ph�t "..(59-giay).." gi�y !")
		SetPosU(1661, 3316)	
		return
end


if ( GetFightState() == 0 ) then	
	SetFightState(1)	
	SetPosU(1666, 3321)
	Msg2Player("<color=green>Chien dau")
else			       	
	SetFightState(0)		
	SetPosU(1661, 3316)	
	Msg2Player("<color=yellow>luyen cong")
end;

end;

