function main()
SayNew("<color=green>Xa Phu<color>: Ng­¬i muèn ®i ®©u? ",2,
"Trë vÒ Ba L¨ng HuyÖn /trova",
"Tho¸t/no")
end

function trova()
if GetTaskTemp(22) == 0 then
trova1()
else
SayNew("<color=green>Xa Phu<color>: HiÖn t¹i b¹n ®· b¸o danh tham gia Liªn §Êu. NÕu trë vÒ Ba L¨ng HuyÖn sÏ mÊt quyÒn thi ®Êu, b¹n ch¾c ch¾n chø? ",2,
"Ta ch¾c ch¾n/trova1",
"Tho¸t./no")
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
Msg2Player("B¹n ®· trë vÒ Ba L¨ng HuyÖn ")
end
