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
SetDeathScript("\\\script\\hoatdong\\tongkim\\boss\\tongtu.lua");
SetFightState(1)
SetCreateTeam(0);
SetPKState(1)
BlockPKState(1)
SetCamp(1)
SetCurCamp(1)

SetTempRevPos(61,1635*32,3158*32)
SetTask(117,3*18) -- bat dau bat tu
Msg2Player("B�n nh�n ���c tr�ng th�i b�t t� 3 gi�y !")




SetPunish(1);
SetLogoutRV(1)
Msg2Player("B�n �� tham gia tr�n chi�n. H�y c� g�ng l�p c�ng nh� !")
NewWorld(61, toadox, toadoy);
else
	timeconlai = GetTaskTemp(99) - timehientai
	Talk(1,"","B�n c� th� ra ngo�i chi�n tr��ng sau <color=red>"..timeconlai.."<color> gi�y !")
	SetPos(1660,3135)
end
else
	Talk(1,"","Error: Ng��i l� ng��i b�n Kim sao l�i xu�t hi�n ���c � ��y !")
	SetPos(1660,3135)
end
else
	Talk(1,"","Error: Hi�n t�i t�ng kim ��i chi�n ch�a b�t ��u !")
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


