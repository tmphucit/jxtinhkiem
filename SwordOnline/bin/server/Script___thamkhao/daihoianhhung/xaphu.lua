function main()
SayNew("<color=green>Xa Phu<color>: Ng��i mu�n �i ��u? ",2,
"Tr� v� Ba L�ng Huy�n /trova",
"Tho�t/no")
end


function no()

end

function trova()
SetFightState(0)
SetDeathScript("")
BlockPKState(0)
SetCreateTeam(1);
SetRevPos(19)
SetCurCamp(GetCamp())
NewWorld(53,1600,3200)
Msg2Player("B�n �� tr� v� Ba L�ng Huy�n")
end
