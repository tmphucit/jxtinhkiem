function checkboss()

end
function checkboss1()
AddEventItem(46)
Msg2Player("B�n nh�n ���c <color=green>Huy�n Tinh 3")

sxitem = random(1,100)
if sxitem <= 5 then
		vt = RandomNew(1,getn(MangItem))
		AddItem(0, MangItem[vt][3], MangItem[vt][4], MangItem[vt][5],0,0,0)
		Msg2SubWorld("Ch�c m�ng ��i hi�p ["..GetName().."] ti�u di�t Boss Ho�ng Kim nh�n ���c <color=pink>["..MangItem[vt][1].."]")
end

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
{"Ph��ng T��ng",9,1760,3270},
{"Ph��ng T��ng",9,1926,2839},
{"Ph��ng T��ng",9,1560,2955},
{"Ph��ng T��ng",9,1576,3250},
}


MangItem = {
{"Chi�u D� Ng�c S� T� ", 0,10,5,5}, -- 1
{"Phi V�n Th�n M� ", 0,10,8,1}, -- 2
{"Th�n Th� B�n Ti�u", 0,10,6,1}, -- 3
{"Th�n M� Phi�n V� ", 0, 10 , 7 , 1}, -- 4
{"An Bang �i�n Ho�ng Th�ch Ng�c B�i", 0,9,3,1}, -- 5 random
{"An Bang �i�n Ho�ng Th�ch Ng�c B�i", 0,9,3,2}, -- 6 tieu
{"An Bang �i�n Ho�ng Th�ch Ng�c B�i", 0,9,3,8}, -- 7 mini
{"Hi�p C�t T�nh � K�t", 0,9,4,1}, -- 8
{"Nhu T�nh Tu� T�m Ng�c B�i",0,9,5,1}, -- 9
{"An Bang C�c Hoa Th�ch Ch� Ho�n", 0,3,3,1}, -- 10 random
{"An Bang C�c Hoa Th�ch Ch� Ho�n", 0,3,3,2}, -- 11 tieu
{"An Bang C�c Hoa Th�ch Ch� Ho�n", 0,3,3,8}, -- 12 mini
{"An Bang K� Huy�t Th�ch Gi�i Ch�", 0,3,4,1}, -- 13 random
{"An Bang K� Huy�t Th�ch Gi�i Ch�", 0,3,4,2}, -- 14 tieu
{"An Bang K� Huy�t Th�ch Gi�i Ch�", 0,3,4,8}, -- 15 mini
{"An Bang B�ng Tinh Th�ch H�ng Li�n", 0,4,3,1}, -- 16 random
{"An Bang B�ng Tinh Th�ch H�ng Li�n", 0,4,3,2}, -- 17 tieu
{"An Bang B�ng Tinh Th�ch H�ng Li�n", 0,4,3,8}, -- 18 mini
{"��nh Qu�c Thanh Sa Tr��ng Sam", 0,2,30,1}, -- 19
{"��nh Qu�c � Sa Ph�t Qu�n",0,7,15,1}, -- 20
{"��nh Qu�c Ng�n T�m Y�u ��i", 0,6,3,1}, -- 21
{"��nh Qu�c X�ch Quy�n Nhuy�n Ngoa",0,5,5,1}, -- 22
{"��nh Qu�c T� ��ng H� Uy�n",0,8,3,1} -- 23
}


mangtoado1 = {

}