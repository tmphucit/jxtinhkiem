function main(sel)
h = tonumber(date("%H"))
m = tonumber(date("%M"))
s = tonumber(date("%S"))
if (GetGlbMissionV(60) == 1500 or GetGlbMissionV(60) == 2000) then
if GetTask(12) == 2 then
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
SetCamp(2)
SetCurCamp(2)

SetTempRevPos(37,1688*32, 3074*32)
AddSkillEffect(504,1,5*18)



SetPunish(1);
SetLogoutRV(1)
Msg2Player("Bπn Æ∑ tham gia trÀn chi’n. H∑y cË gæng lÀp c´ng nh– !")
NewWorld(37, toadox, toadoy);
SetDeathScript("\\script\\tongkim\\boss2\\kimtu.lua");
else
	timeconlai = GetTaskTemp(99) - timehientai
	Talk(1,"","Bπn c„ th” ra ngoµi chi’n tr≠Íng sau <color=red>"..timeconlai.."<color> gi©y !")
	SetPos(1668,3095)
	
end
else
	Talk(1,"","Error: Ng≠Íi lµ ng≠Íi b™n TËng sao lπi xu t hi÷n Æ≠Óc Î Æ©y !")
	SetPos(1668,3095)
	
end
else
	Talk(1,"","Error: Hi÷n tπi tËng kim Æπi chi’n ch≠a bæt Æ«u !")
	SetPos(1668,3095)

end
end;

mangtoado = {
{1572,3172},
{1590,3175},
{1591,3202},
{1581,3218},
{1567,3233},
{1543,3232},
{1540,3207},
{1553,3187},
{1571,3199}
}

