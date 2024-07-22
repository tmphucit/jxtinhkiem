function main()
if (GetGlbMissionV(60) == 1000) then
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
if (GetGlbMissionV(60) == 1000) then
		i = nsel + 1
		if GetTask(12) == 1 then
			SetDeathScript("\\\script\\hoatdong\\tongkim\\cuusat\\tongtu.lua");
			SetCamp(1)
			SetCurCamp(1)
			SetTempRevPos(33,1239*32, 3552*32)
			if i == 1 then
				toadox = 1338
				toadoy = 3352
			elseif i == 2 then
				toadox = 1368
				toadoy = 3391
			elseif i == 3 then
				toadox = 1377
				toadoy = 3471
			end
		elseif GetTask(12) == 2 then
			SetDeathScript("\\\script\\hoatdong\\tongkim\\cuusat\\kimtu.lua");
			SetCamp(2)
			SetCurCamp(2)
			SetTempRevPos(33,1688*32, 3074*32)
			if i == 1 then
				toadox = 1596
				toadoy = 3280
			elseif i == 2 then
				toadox = 1520
				toadoy = 3254
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
	--	SetTask(117,5*18) -- bat dau bat tu
	--Msg2Player("Bπn nhÀn Æ≠Óc trπng th∏i b t tˆ 5 gi©y !")

		SetPunish(1);
		SetLogoutRV(1)
		Msg2Player("Bπn Æ∑ tham gia trÀn chi’n. H∑y cË gæng lÀp c´ng nh– !")
		NewWorld(33, toadox, toadoy);
else
	Talk(1,"","<color=green>Trinh S∏t<color>: Hi÷n tπi tËng kim Æπi chi’n ch≠a bæt Æ«u !")
end
end