function main(sel)
h = tonumber(date("%H"))
m = tonumber(date("%M"))
s = tonumber(date("%S"))
if (GetGlbMissionV(60) == 500 or GetGlbMissionV(60) == 1000) then
if GetTask(12) == 1 then 
	timehientai = m*60 + s
if timehientai > GetTaskTemp(99) then
SetTaskTemp(99,0)
k = random(1,getn(mangtoado))
toadox = mangtoado[k][1]
toadoy = mangtoado[k][2]
SetFightState(1)
SetCreateTeam(0);
SetPKState(1)
BlockPKState(1)
SetCamp(1)
SetCurCamp(1)
SetTempRevPos(37,1239*32, 3552*32)

AddSkillEffect(504,1,5*18)
SetTask(117, 2*18)

SetPunish(1);
SetLogoutRV(1)
Msg2Player("Bπn Æ∑ tham gia trÀn chi’n. H∑y cË gæng lÀp c´ng nh– !")
NewWorld(33, toadox, toadoy);
SetDeathScript("\\script\\tongkim\\cuusat\\tongtu.lua");
else
	timeconlai = GetTaskTemp(99) - timehientai
	Talk(1,"","Bπn c„ th” ra ngoµi chi’n tr≠Íng sau <color=red>"..timeconlai.."<color> gi©y !")
	SetPos(1252,3536)
end
else
	Talk(1,"","Error: Ng≠Íi lµ ng≠Íi b™n Kim sao lπi xu t hi÷n Æ≠Óc Î Æ©y !")
	SetPos(1252,3536)
end
else
	Talk(1,"","Error: Hi÷n tπi tËng kim Æπi chi’n ch≠a bæt Æ«u !")
	SetPos(1252,3536)
end
end;

mangtoado = {
{1303,3457},
{1314,3436},
{1338,3420},
{1353,3419},
{1349,3442},
{1340,3469},
{1309,3466},
{1331,3444}
}

