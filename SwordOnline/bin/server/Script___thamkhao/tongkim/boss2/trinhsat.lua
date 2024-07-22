function main()
if (GetGlbMissionV(60) == 2000) then
		SayNew("<color=green>Trinh S∏t<color>: Chi’n tr≠Íng Æang r t ∏c li÷t, ng≠Íi muËn th∏m th›nh n¨i nµo ?",4,
		"CÊng Tr∏i /move",
		"CÊng Gi˜a/move",
		"CÊng Ph∂i/move",
		"Tho∏t./no")
else
	Talk(1,"","<color=green>Trinh S∏t<color>: Hi÷n tπi tËng kim Æπi chi’n ch≠a bæt Æ«u !")
end
end
function no()
end

function move(nsel)
if (GetGlbMissionV(60) == 2000) then
		i = nsel + 1
		if GetTask(12) == 1 then
			SetDeathScript("\\script\\tongkim\\boss2\\tongtu.lua");
			SetCamp(1)
			SetCurCamp(1)
			SetTempRevPos(37,1239*32, 3552*32)
			if i == 1 then
				toadox = 1338
				toadoy = 3352
			elseif i == 2 then
				toadox = 1380
				toadoy = 3378
			elseif i == 3 then
				toadox = 1377
				toadoy = 3471
			end
		elseif GetTask(12) == 2 then
			SetDeathScript("\\script\\tongkim\\boss2\\kimtu.lua");
			SetCamp(2)
			SetCurCamp(2)
			SetTempRevPos(37,1688*32, 3074*32)
			if i == 1 then
				toadox = 1596
				toadoy = 3280
			elseif i == 2 then
				toadox = 1497
				toadoy = 3277
			elseif i == 3 then
				toadox = 1501
				toadoy = 3172
			end
		end
		SetTaskTemp(99,0)
		SetFightState(1)
		SetCreateTeam(0);
		SetPKState(1)
		BlockPKState(1)
		AddSkillEffect(504,1,5*18)
		SetPunish(1);
		SetLogoutRV(1)
		Msg2Player("Bπn Æ∑ tham gia trÀn chi’n. H∑y cË gæng lÀp c´ng nh– !")
		NewWorld(37, toadox, toadoy);
else
	Talk(1,"","<color=green>Trinh S∏t<color>: Hi÷n tπi tËng kim Æπi chi’n ch≠a bæt Æ«u !")
end
end