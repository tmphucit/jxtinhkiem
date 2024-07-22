function main()
if (GetGlbMissionV(60) == 1000 or GetGlbMissionV(60) == 2000) then
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
if (GetGlbMissionV(60) == 1000 or GetGlbMissionV(60) == 2000) then
		idmap = 0
		if GetGlbMissionV(60) == 1000 then
		idmap = 33
		elseif GetGlbMissionV(60) == 2000 then
		idmap = 37
		end
		if idmap == 0 then 
		return 
		end
		
		i = nsel + 1
		if GetTask(12) == 1 then
			if GetGlbMissionV(60) == 1000 then
			SetDeathScript("\\script\\tongkim\\cuusat\\tongtu.lua");
			elseif GetGlbMissionV(60) == 2000 then
			SetDeathScript("\\script\\tongkim\\boss2\\tongtu.lua");	
			end
			SetCamp(1)
			SetCurCamp(1)
			SetTempRevPos(37,1239*32, 3552*32)
			if i == 1 then
				toadox = 1338
				toadoy = 3352
			elseif i == 2 then
				rnd = RandomNew(1,getn(MoveGiuaTong))
				toadox = MoveGiuaTong[rnd][1]
				toadoy = MoveGiuaTong[rnd][2]
			elseif i == 3 then
				toadox = 1377
				toadoy = 3471
			end
		elseif GetTask(12) == 2 then
			if GetGlbMissionV(60) == 1000 then
			SetDeathScript("\\script\\tongkim\\cuusat\\kimtu.lua");
			elseif GetGlbMissionV(60) == 2000 then
			SetDeathScript("\\script\\tongkim\\boss2\\kimtu.lua");
			end
			
			
			
			SetCamp(2)
			SetCurCamp(2)
			SetTempRevPos(37,1688*32, 3074*32)
			if i == 1 then
				toadox = 1596
				toadoy = 3280
			elseif i == 2 then
				rnd = RandomNew(1,getn(MoveGiuaKim))
				toadox = MoveGiuaKim[rnd][1]
				toadoy = MoveGiuaKim[rnd][2]
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
		SetTask(117, 2*18)
		--AddSkillEffect(504,1,5*18)
		SetPunish(1);
		SetLogoutRV(1)
		Msg2Player("B�n �� tham gia tr�n chi�n. H�y c� g�ng l�p c�ng nh� !")
		NewWorld(idmap, toadox, toadoy);
else
	Talk(1,"","<color=green>Trinh S�t<color>: Hi�n t�i t�ng kim ��i chi�n ch�a b�t ��u !")
end
end


MoveGiuaTong = {
{1346, 3424},
{1340, 3435},
{1331, 3444},
{1321, 3428},
{1355, 3447},
{1342, 3460},
{1320, 3456},
}

MoveGiuaKim = {
{1556, 3212},
{1571, 3198},
{1548, 3195},
{1573, 3229},
{1579, 3187},
{1562, 3208},
{1595, 3211},
}