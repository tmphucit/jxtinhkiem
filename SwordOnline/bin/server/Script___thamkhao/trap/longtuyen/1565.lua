
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
--if ngay == 21 then
--	if gio < 10 then
--		Msg2Player("S� ki�n �ua Top L�n 2 V� L�m T�nh Ngh�a s� b�t ��u v�o l�c 10h00. Th�i gian c�n l�i: "..(9-gio).." gi� "..(59-phut).." ph�t "..(59-giay).." gi�y !")
--		SetPosU(1569, 3179)
--		return
--	end
--else
--		Msg2Player("S� ki�n �ua Top L�n 2 V� L�m T�nh Ngh�a s� b�t ��u v�o l�c 10h00. Th�i gian c�n l�i: "..((21-ngay)*24+9-gio).." gi� "..(59-phut).." ph�t "..(59-giay).." gi�y !")
--		SetPosU(1569, 3179)
--		return
--end



if check() == 0 then
checkruapk()
if ( GetFightState() == 0 ) then	
	SetFightState(1)	
	SetPosU(1559, 3171)
else			       	
	SetFightState(0)		
	SetPosU(1569, 3179)
end;
	AddStation(10)			
doimaump()
else
xuly()
end
end;

-- cua 3h