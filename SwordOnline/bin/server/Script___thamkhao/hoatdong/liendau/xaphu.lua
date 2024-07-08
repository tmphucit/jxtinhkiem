function main()
SayNew("<color=green>Xa Phu<color>: Ng≠¨i muËn Æi Æ©u? ",2,
"TrÎ v“ Ba L®ng Huy÷n /trova",
"Tho∏t/no")
end

function trova()
if GetTaskTemp(22) == 0 then
trova1()
else
SayNew("<color=green>Xa Phu<color>: Hi÷n tπi bπn Æ∑ b∏o danh tham gia Li™n ß u. N’u trÎ v“ Ba L®ng Huy÷n sœ m t quy“n thi Æ u, bπn chæc chæn ch¯? ",2,
"Ta chæc chæn/trova1",
"Tho∏t./no")
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
SetCreateTeam(1);
SetRevPos(19)
SetCurCamp(GetCamp())
NewWorld(53,1600,3200)
Msg2Player("Bπn Æ∑ trÎ v“ Minh Nguy÷t Tr n")
end
