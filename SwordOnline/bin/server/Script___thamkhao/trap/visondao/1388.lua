
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))


if check() == 0 then		
checkruapk()
if ( GetFightState() == 0 ) then		
	SetFightState(1)		
	SetPos(1387, 2762)	
	SetLogoutRV(1)
	SetRevPos(24,60)
	SetPKState(1)
	BlockPKState(1)
	SetDeathScript("\\script\\visondao\\playerdie.lua");
	if GetItemCount(160) > 0 then
		DelItem(160)
		SetTask(117, 10 * 18)
		Msg2Player("Bπn Æ≠Óc b t tˆ 10 gi©y !")
	end	
else				
	SetFightState(0)       		
	SetPos(1390, 2768)		
	if GetTaskTemp(1) == 32154678 then
		SetTaskTemp(1, 0 )	
		Msg2World("<color=yellow>[Vi S¨n ß∂o] <color=red>"..GetName().." Æ∑ di chuy”n v“ thµnh, nhi÷m vÙ Qu∂ Hoµng Kim bﬁ hÒy !")
	end
end;
	AddStation(10)	
doimaump()
else
xuly()
end
end;

-- cua thanh thanh son