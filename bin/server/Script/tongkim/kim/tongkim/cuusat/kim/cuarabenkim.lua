function main(sel)
h = tonumber(date("%H"))
m = tonumber(date("%M"))
s = tonumber(date("%S"))
if (GetGlbMissionV(60) == 500 or GetGlbMissionV(60) == 1000) then
if GetTask(12) == 2 then
	timehientai = m*60 + s
if timehientai > GetTaskTemp(99) then
SetTaskTemp(99,0)
k = random(1,getn(mangtoado))
toadox = mangtoado[k][1]
toadoy = mangtoado[k][2]
SetDeathScript("\\script\\tongkim\\cuusat\\kimtu.lua");
SetFightState(1)
SetCreateTeam(0);
SetPKState(1)
BlockPKState(1)
SetCamp(2)
SetCurCamp(2)

SetTempRevPos(33,1688*32, 3074*32)
SetTask(117,3*18) -- bat dau bat tu
Msg2Player("B¹n nhËn ®­îc tr¹ng th¸i bÊt tö 3 gi©y !")

if (GetGlbMissionV(60) == 1000) then
SetTaskTemp(18,timehientai)
else
SetTaskTemp(18,0)
end
Msg2Player("Tæng thêi gian ®· tham chiÕn:  "..floor(GetTask(118)/60).." phót "..mod(GetTask(118),60).." gi©y ! ")


SetPunish(1);
SetLogoutRV(1)
Msg2Player("B¹n ®· tham gia trËn chiÕn. H·y cè g¾ng lËp c«ng nhÐ !")
NewWorld(33, toadox, toadoy);
else
	timeconlai = GetTaskTemp(99) - timehientai
	Talk(1,"","B¹n cã thÓ ra ngoµi chiÕn tr­êng sau <color=red>"..timeconlai.."<color> gi©y !")
	SetPos(1668,3095)
	
end
else
	Talk(1,"","Error: Ng­êi lµ ng­êi bªn Tèng sao l¹i xuÊt hiÖn ®­îc ë ®©y !")
	SetPos(1668,3095)
	
end
else
	Talk(1,"","Error: HiÖn t¹i tèng kim ®¹i chiÕn ch­a b¾t ®Çu !")
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

