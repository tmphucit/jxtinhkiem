
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
	AddSkillEffect(504,1,5*18)
	SetDeathScript("\\script\\hoatdong\\visondao\\playerdie.lua");
else				
	SetFightState(0)       		
	SetPos(1390, 2768)		
	if GetTaskTemp(1) == 32154678 then
		SetTaskTemp(1, 0 )	
		Msg2World("<color=yellow>[Vi S�n ��o] <color=red>"..GetName().." �� di chuy�n v� th�nh, nhi�m v� Qu� Ho�ng Kim b� h�y !")
	end
end;
	AddStation(10)	
doimaump()
else
xuly()
end
end;

-- cua thanh thanh son