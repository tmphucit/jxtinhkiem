function main(sel)
h = tonumber(date("%H"))
m = tonumber(date("%M"))
s = tonumber(date("%S"))
if (GetGlbMissionV(60) == 1500 or GetGlbMissionV(60) == 2000) then
if GetTask(12) == 1 then 
timehientai = m*60 + s
if timehientai > GetTaskTemp(99) then
SetTaskTemp(99,0)
k = random(1,getn(mangtoado))
toadox = mangtoado[k][1]
toadoy = mangtoado[k][2]
SetDeathScript("\\script\\tongkim\\boss\\tongtu.lua");
SetFightState(1)
SetCreateTeam(0);
SetPKState(1)
BlockPKState(1)
SetCamp(1)
SetCurCamp(1)

SetTempRevPos(61,1635*32,3158*32)
SetTask(117,3*18) -- bat dau bat tu
Msg2Player("Bπn nhÀn Æ≠Óc trπng th∏i b t tˆ 3 gi©y !")




SetPunish(1);
SetLogoutRV(1)
Msg2Player("Bπn Æ∑ tham gia trÀn chi’n. H∑y cË gæng lÀp c´ng nh– !")
NewWorld(61, toadox, toadoy);
else
	timeconlai = GetTaskTemp(99) - timehientai
	Talk(1,"","Bπn c„ th” ra ngoµi chi’n tr≠Íng sau <color=red>"..timeconlai.."<color> gi©y !")
	SetPos(1660,3135)
end
else
	Talk(1,"","Error: Ng≠Íi lµ ng≠Íi b™n Kim sao lπi xu t hi÷n Æ≠Óc Î Æ©y !")
	SetPos(1660,3135)
end
else
	Talk(1,"","Error: Hi÷n tπi tËng kim Æπi chi’n ch≠a bæt Æ«u !")
	SetPos(1660,3135)
end
end;

mangtoado = {
{1708,3061},
{1699,3045},
{1709,3032},
{1732,3032},
{1742,3040},
{1729,3064},
{1717,3074},
{1720,3046},
{1695,3029}
}


