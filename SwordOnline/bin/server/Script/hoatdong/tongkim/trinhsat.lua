function main()
if (GetGlbMissionV(60) == 1000) then
		SayNew("<color=green>Trinh S�t<color>: Chi�n tr��ng �ang r�t �c li�t, ng��i mu�n th�m th�nh n�i n�o ?",4,
		"C�ng Tr�i /move",
		"C�ng Gi�a/move",
		"C�ng Ph�i/move",
		"Tho�t./no")
else
	Talk(1,"","<color=green>Trinh S�t<color>: Hi�n t�i t�ng kim ��i chi�n ch�a b�t ��u !")
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
	--Msg2Player("B�n nh�n ���c tr�ng th�i b�t t� 5 gi�y !")

		SetPunish(1);
		SetLogoutRV(1)
		Msg2Player("B�n �� tham gia tr�n chi�n. H�y c� g�ng l�p c�ng nh� !")
		NewWorld(33, toadox, toadoy);
else
	Talk(1,"","<color=green>Trinh S�t<color>: Hi�n t�i t�ng kim ��i chi�n ch�a b�t ��u !")
end
end