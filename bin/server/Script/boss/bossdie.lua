
function checkboss()

idx = PlayerIndex
team = GetTeam()
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then
		AddOwnExp(1000000)
		Msg2Player("B�n nh�n ���c 1.000.000 kinh nghi�m t� vi�c ti�u di�t Boss Ho�ng Kim M�n Ph�i !")
	end
end
PlayerIndex = idx
end
mangtoado = {
{"Vi S�n ��o",24,1457,2562},
{"Ba L�ng Huy�n",53,1544,3264},
{"Th�nh �� ",18,2971,4892},
{"Th�nh �� ",18,3290,4770},
{"Th�nh �� ",18,3311,5213},
{"Th�nh �� ",18,2913,5236},
{"T��ng D��ng",15,1379,3142},
{"T��ng D��ng",15,1355,3433},
{"T��ng D��ng",15,1712,3462},
{"Ph��ng T��ng",17,1499,3287},
{"Ph��ng T��ng",17,1499,3069},
{"Ph��ng T��ng",17,1709,3096},
{"Ph��ng T��ng",17,1693,3401},
{"Bi�n Kinh",9,1760,3270},
{"Bi�n Kinh",9,1926,2839},
{"Bi�n Kinh",9,1560,2955},
{"Bi�n Kinh",9,1576,3250},
}


mangtoado1 = {

}