function main()
SayNew("<color=green>Xa Phu<color>: Ng��i mu�n �i ��u? ",2,
"Tr� v� Ba L�ng Huy�n /trova",
"Tho�t/no")
end

function trova()
if GetTaskTemp(22) == 0 then
trova1()
else
SayNew("<color=green>Xa Phu<color>: Hi�n t�i b�n �� b�o danh tham gia Li�n ��u. N�u tr� v� Ba L�ng Huy�n s� m�t quy�n thi ��u, b�n ch�c ch�n ch�? ",2,
"Ta ch�c ch�n/trova1",
"Tho�t./no")
end
end
function no()

end

function trova1()
if GetTaskTemp(22) == 1 then
SetGlbMissionV(12,GetGlbMissionV(12)-1)
end
SetTaskTemp(22,0)
SetFightState(0)
SetDeathScript("")
BlockPKState(0)
SetRevPos(19)
KickOutSelf()
NewWorld(53,200*8,200*16)

if GetTask(16) > 0 and GetTask(16) <= 4 then
SetCamp(GetTask(16))
SetCurCamp(GetTask(16))
else
SetTask(16,2)
SetCurCamp(2)
SetCamp(2)
KickOutSelf()
end
Msg2Player("B�n �� tr� v� Ba L�ng Huy�n ")
end
