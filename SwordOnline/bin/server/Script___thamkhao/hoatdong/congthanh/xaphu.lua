function main()
SayNew("<color=green>Xa Phu<color>: Ng­¬i muèn ®i ®©u? ",2,
"Trë vÒ Ba L¨ng HuyÖn /trova",
"Tho¸t/no")
end

function no()

end

function trova()
SetFightState(0)
SetRevPos(19)
SetRank(1)
SetTask(80,0)
SetTask(10,0)
SetTask(128,0)
if GetTask(16) > 0 and GetTask(16) <= 4 then
SetCamp(GetTask(16))
SetCurCamp(GetTask(16))
NewWorld(53,200*8,200*16)
else
SetTask(16,2)
SetCurCamp(2)
SetCamp(2)
KickOutSelf()
end
Msg2Player("B¹n ®· trë vÒ Ba L¨ng HuyÖn ")
end
