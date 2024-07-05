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
SetDeathScript("\\script\\tongkim\\boss\\kimtu.lua");
SetFightState(1)
SetCreateTeam(0);
SetPKState(1)
BlockPKState(1)
SetCamp(2)
SetCurCamp(2)

SetTask(117,3*18) -- bat dau bat tu
Msg2Player("B¹n nhËn ®­îc tr¹ng th¸i bÊt tö 3 gi©y !")

if (GetGlbMissionV(60) == 1000) then
SetTaskTemp(18,timehientai)
else
SetTaskTemp(18,0)
end
Msg2Player("Tæng thêi gian ®· tham chiÕn:  "..floor(GetTask(118)/60).." phót "..mod(GetTask(118),60).." gi©y ! ")


SetTempRevPos(61,2044*32,2592*32)



SetPunish(1);
SetLogoutRV(1)
Msg2Player("B¹n ®· tham gia trËn chiÕn. H·y cè g¾ng lËp c«ng nhÐ !")
NewWorld(61, toadox, toadoy);
else
	timeconlai = GetTaskTemp(99) - timehientai
	Talk(1,"","B¹n cã thÓ ra ngoµi chiÕn tr­êng sau <color=red>"..timeconlai.."<color> gi©y !")
	SetPos(2036,2609)
end
else
	Talk(1,"","Error: Ng­êi lµ ng­êi bªn Tèng sao l¹i xuÊt hiÖn ®­îc ë ®©y !")
	SetPos(2036,2609)
end
else
	Talk(1,"","Error: HiÖn t¹i tèng kim ®¹i chiÕn ch­a b¾t ®Çu !")
	SetPos(2036,2609)
end

end;

mangtoado = {
{1982,2684},
{1958,2686},
{1945,2694},
{1950,2715},
{1965,2725},
{1978,2720},
{1981,2699},
{1965,2700}
} 