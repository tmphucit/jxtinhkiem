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
Msg2Player("B�n nh�n ���c tr�ng th�i b�t t� 3 gi�y !")

if (GetGlbMissionV(60) == 1000) then
SetTaskTemp(18,timehientai)
else
SetTaskTemp(18,0)
end
Msg2Player("T�ng th�i gian �� tham chi�n:  "..floor(GetTask(118)/60).." ph�t "..mod(GetTask(118),60).." gi�y ! ")


SetPunish(1);
SetLogoutRV(1)
Msg2Player("B�n �� tham gia tr�n chi�n. H�y c� g�ng l�p c�ng nh� !")
NewWorld(33, toadox, toadoy);
else
	timeconlai = GetTaskTemp(99) - timehientai
	Talk(1,"","B�n c� th� ra ngo�i chi�n tr��ng sau <color=red>"..timeconlai.."<color> gi�y !")
	SetPos(1668,3095)
	
end
else
	Talk(1,"","Error: Ng��i l� ng��i b�n T�ng sao l�i xu�t hi�n ���c � ��y !")
	SetPos(1668,3095)
	
end
else
	Talk(1,"","Error: Hi�n t�i t�ng kim ��i chi�n ch�a b�t ��u !")
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

