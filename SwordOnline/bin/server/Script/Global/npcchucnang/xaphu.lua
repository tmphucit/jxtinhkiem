--hoangnhk
Include("\\script\\header\\taskid.lua");
Include("\\script\\event\\hoadang\\lib.lua");
STATION_ARRAY = {
{1 ,1  ,10072},
{2 ,11 ,15647},
{3 ,162,15648},
{4 ,37 ,10072},
{5 ,78 ,15646},
{6 ,80 ,15649},
{7 ,176,10072},
{8 ,20 ,10072},
{9 ,121,10072},
{10,53 ,15652},
{11,54 ,10072},
{12,174,15650},
{13,101,10072},
{14,99 ,10072},
{15,100,10072},
{16,153,15651}
};

GO_DIADOCHI={
{21, 2621, 4501},
{19, 3084, 3975},
{90, 1649, 3567},
{41, 2078, 2804},
{70, 1608, 3230},
{193, 1937, 2851},
{122, 1612, 3328},
{179, 1738, 2559},
{140, 2429, 3731},
{145,1613,3313},
{125,1809,3217},
{9, 2404, 5539},
{56, 1491, 3534},
{7, 2235, 2847},
{224,1628,3211},
{319, 1612, 3612},
{123, 1698, 3363},
{340, 1853, 3446},
{320, 1137, 3151},
{321, 966, 2296},
{322, 2048,4120},
{336, 1112, 3189},
{75, 1671, 3345},
{225,1472,3264},
{226,1557,3177},
{227,1522,3275},
{124, 1672, 3420}
};

TRAIN_ARRAY1= {
[1] = {
	"Thanh Th�nh S�n [20]/selluyen1",
	"V� L�ng S�n [20]/selluyen1",
	"Ph�c Ng�u ��ng [30]/selluyen1",
	"Th�c C��ng S�n [30]/selluyen1",
	"Ph�c Ng�u T�y [40]/selluyen1",
	"Ho�ng H� Nguy�n ��u [40]/selluyen1",
	"Ta kh�ng mu�n �i/no"
	},
[2] = {
	{20,21,2621,4501},
	{20,70,1608,3230},
	{30,90, 1651,3571},
	{30,92,1632,3290},
	{40,41,2078,2805},
	{40,122,1612,3323}
	}
};

TRAIN_ARRAY2={
[1] = {
	"L�u Ti�n ��ng [50]",
	"�c b� ��a ��o [50]",
	"Tr��ng Giang [60]",
	"Ho�nh S�n ph�i [60]",
	"L�m Du Quan [70]",
	"L�o H� ��ng [70]",
	"Sa M�c ��a Bi�u [80]",
	"Ch�n n�i Tr��ng B�ch [80]",
	"Tr��ng B�ch S�n Nam [90]",
	"Tr��ng B�ch s�n b�c [90]",
	"Kh�a Lang ��ng [90]",
	"Sa M�c 1 [90]",
	"Sa M�c 2 [90]",
	"Sa M�c 3 [90]",
	"Ti�n c�c ��ng [90]",
	"C�n vi�n ��ng [90]",
	"Phong L�ng �� [100]",
	"M�c Cao Qu�t [100]",
},
[2] = {
	{50,125,1809,3208},
	{50,163,1558,3199},
	{60,9,2405,5540},
	{60,56,1493,3530},
	{70,319,1630,3592},
	{70,123,1698,3374},
	{80,224,1621,3214},
	{80,320,1146,3130},
	{90,198},
	{90,201},
	{90,74},
	{90,226},
	{90,227},
	{90,228},
	{90,147},
	{90,221},
	{100,224},
	{100,225},
}
};

NO_PLACE = "Ng��i hi�n kh�ng c� nhi�m v� n�o c�n ph�i �i!"
function main(nNpcIdx)
	if(GetLevel() < 10) then
	Talk("",1,10083);
	return end;
	local curstationid = 0; --id Ba Lang Huyen = 10
	SetTaskTemp(SEL_MOVEARRAY, 0);
	local w,x,y = GetWorldPos();
	for i=1,getn(STATION_ARRAY) do
		if(w == STATION_ARRAY[i][2]) then
		curstationid = i;
		SetTaskTemp(SEL_MOVEARRAY, i);
		end
	end
	
	if(curstationid == 0) then
	return end
	
	if(curstationid < 8) then
	if(hoadang_open() == 1 and (GetWorldKind(w) == 1 or GetWorldKind(w) == 2)) then
		SayNew("LINK:<npc>",0,STATION_ARRAY[curstationid][3],9,
		"Nh�ng n�i �� �i qua/noidiqua",
		"Nh�ng th�nh th� �� �i qua/thanhthidiqua",
		"Tr� l�i ��a �i�m c� /diadiemcu",
		"Khu v�c luy�n c�ng/luyencong2",
		"�i Hoa S�n c�nh k� tr��ng/hoason",
		"�i T�y T�y ��o/taytuydao",
		"�i ��n n�i l�m nhi�m v� d� t�u/datau",
		"�i b�n �� Hoa ��ng/dikhuvuchoadang",
		"Ta kh�ng mu�n �i/out")
	else
		SayNew("LINK:<npc>",0,STATION_ARRAY[curstationid][3],8,
		"Nh�ng n�i �� �i qua/noidiqua",
		"Nh�ng th�nh th� �� �i qua/thanhthidiqua",
		"Tr� l�i ��a �i�m c� /diadiemcu",
		"Khu v�c luy�n c�ng/luyencong2(1)",
		"�i Hoa S�n c�nh k� tr��ng/hoason",
		"�i T�y T�y ��o/taytuydao",
		"�i ��n n�i l�m nhi�m v� d� t�u/datau",
		"Ta kh�ng mu�n �i/out")
	end
	else
		SayNew(STATION_ARRAY[curstationid][3],6,
		"Nh�ng n�i �� �i qua/noidiqua",
		"Nh�ng th�nh th� �� �i qua/thanhthidiqua",
		"Tr� l�i ��a �i�m c� /diadiemcu",
		"Khu v�c luy�n c�ng/luyencong1",
		"�i ��n n�i l�m nhi�m v� d� t�u/datau",
		"Ta kh�ng mu�n �i/out")
	end
end;

function luyencong1()
	SayNew(10072,getn(TRAIN_ARRAY1[1]),
	TRAIN_ARRAY1[1])
end;

function luyencong2(nMapBegin)
	local nTrainCount=getn(TRAIN_ARRAY2[1]);
	if(nTrainCount <= 0) then
	return end;
	local nMapPPage=4;
	local TRAIN_ARRAY = {};
	local nMapEnd=nMapBegin+nMapPPage;
	if(nMapEnd >nTrainCount) then
		nMapEnd = nTrainCount;
	end
	for i=nMapBegin,nMapEnd do
	tinsert(TRAIN_ARRAY,TRAIN_ARRAY2[1][i].."/selluyen2("..i..")");
	end;
	if(nMapBegin >nMapPPage) then
		tinsert(TRAIN_ARRAY,"Trang tr��c/luyencong2("..nMapBegin-nMapPPage.."");
	end;
	if(nMapEnd <nTrainCount) then
		tinsert(TRAIN_ARRAY,"Trang k�/luyencong2("..(nMapEnd+1).."");
	end;
	tinsert(TRAIN_ARRAY,"Ta kh�ng mu�n �i/no");
	SayNew(10072,getn(TRAIN_ARRAY),TRAIN_ARRAY);
end;

function selluyen1(sel)
	local nSel = sel + 1;
	if(GetLevel() < TRAIN_ARRAY1[2][nSel][1]) then
	Talk(1,"",15645)--phia truoc nguy hiem
	return end
	if(NewWorld(TRAIN_ARRAY1[2][nSel][2],TRAIN_ARRAY1[2][nSel][3],
	TRAIN_ARRAY1[2][nSel][4]) == 1) then
		SetFightState(1)
	end
end;

function selluyen2(nSel)
	if(GetLevel() < TRAIN_ARRAY2[2][nSel][1]) then
	Talk(1,"",15645)--phia truoc nguy hiem
	return end
	if(getn(TRAIN_ARRAY2[2][nSel]) == 2) then
		local nW, nX, nY = GetWayPointPos(TRAIN_ARRAY2[2][nSel][2])
		nFightState = GetWayPointFight(TRAIN_ARRAY2[2][nSel][2])
		nResult = NewWorld(nW, nX, nY)
		if (nResult == 1) then
		SetFightState(nFightState)
		end
	elseif (getn(TRAIN_ARRAY2[2][nSel]) == 4) then
		if(NewWorld(TRAIN_ARRAY2[2][nSel][2],TRAIN_ARRAY2[2][nSel][3],
		TRAIN_ARRAY2[2][nSel][4]) == 1) then
			SetFightState(1)
		end
	else
		return end;
end;

function datau()
	local nTaskValue = GetTask(TASK_DATAU_ACCEPT);
	local bAccept = GetNumber(1,nTaskValue, 1);--[1]
	local nKind = GetNumber(2,nTaskValue, 4);
	if(bAccept == 0) then
		Talk(1,"",NO_PLACE);
	return end
	
	if(nKind ~= 6 and nKind ~= 7) then
		Talk(1,"",NO_PLACE);
	return end
	
	local nMap = GetNumber(3,GetTask(TASK_DIADOCHI),1);
	for i=1,getn(GO_DIADOCHI) do
		if(GO_DIADOCHI[i][1] == nMap) then
			if(NewWorld(nMap, GO_DIADOCHI[i][2], GO_DIADOCHI[i][3])) then
				SetFightState(1)
			end
		return end
	end
	
end;

function hoason()
	if(NewWorld(2,2609,3590)) then
		Msg2Player("B�n �ang ��n Hoa S�n c�nh k� tr��ng!");
	end;
end

function thanhthidiqua()
	local count = 0;
	local StationTab = {};
	
	local nMoveAR = GetTaskTemp(SEL_MOVEARRAY)
	if(nMoveAR == 0) then
	return end
	
	local price = -1;
	for i=1,getn(STATION_ARRAY) do
		price = GetPrice2Station(nMoveAR, i);
		if(price > 0) then
		StationTab[count+1] = GetStationName(i) .. " [" .. price .. " l��ng]" .. "/SelStation";
		SetTaskTemp(SEL_MOVEBEGIN+count,i);
		count = count + 1;
		end
	end
	
	if(count == 0) then
	return end
	
	StationTab[count+1] = "Kh�ng �i ��u c� /out";
	SayNew("��i hi�p mu�n �i ��u:",count+1,StationTab)
end;

function noidiqua()
	p1 = GetWayPoint(1);
	p2 = GetWayPoint(2);
	p3 = GetWayPoint(3);
	WAYPOINT={};
	local i = 1;
	if (p1 ~= 0)  then
	name = GetWayPointName(p1);
	name = name .."/SelWayPoint";
	WAYPOINT[i]= name;
	i = i + 1;
	end;
	
	if (p2 ~= 0)  then
	name = GetWayPointName(p2);
	name = name .."/SelWayPoint";
	WAYPOINT[i]= name;
	i = i + 1;
	end;
	
	if (p3 ~= 0)  then
	name = GetWayPointName(p3);
	name = name .."/SelWayPoint";
	WAYPOINT[i]= name;
	i = i + 1;
	end;
	
	WAYPOINT[i] = "Kh�ng �i ��u c� /no";
	if (i == 1) then 
	Talk(1,"",10071);
	else
	SayNew("H�y l�a ch�n:", i, WAYPOINT);
	end;
end;

function SelWayPoint(nSel)
	local nWayPoint = GetWayPoint(nSel + 1);
	if (nWayPoint ~= 0) then
	local nW, nX, nY = GetWayPointPos(nWayPoint)
	nFightState = GetWayPointFight(nWayPoint)
	nResult = NewWorld(nW, nX, nY)
	if (nResult == 1) then
	SetFightState(nFightState)
	end
	end
end;

function SelStation(nSel)
	local nMoveAR = GetTaskTemp(SEL_MOVEARRAY);
	local nMoveSel = GetTaskTemp(SEL_MOVEBEGIN+nSel);
	local nPrice = GetPrice2Station(nMoveAR, nMoveSel);
	local nMoney = GetCash();
	if(nMoney < nPrice) then
	Talk(1,"",10076);
	else
	local nW , nX, nY = GetStationPos(nMoveSel);
		if(NewWorld(nW, nX , nY ) == 1) then
			Pay(nPrice);
			Msg2Player("Ng�i y�n! Ch�ng ta �i "..GetStationName(nMoveSel).."!");
		end
	end
end;

function diadiemcu()
	if (ReturnFromPortal() <= 0) then
		Talk(1,"","B�n kh�ng c� �i�m l�u t�a �� �� quay l�i");
	end
end;

function taytuydao()
	if(GetLevel() < 50) then
		Talk(1,"","��ng c�p 50 tr� l�n m�i ���c ��n T�y T�y ��o!")
	return end
	local nValue = GetNumber(1,GetTask(TASK_DAOTAYTUY),4);
	if(nValue == 0) then
		SayNew(12243,2,
		"��a ta ��n T�y T�y ��o/taymienphi",
		"Tho�t/no")
	return end
	
	SayNew(12917,4,
	"T�y �i�m k� n�ng/taykynang",
	"T�y �i�m ti�m n�ng/taytiemnang",
	"T�y �i�m k� n�ng l�n ti�m n�ng/tayall",
	"Tho�t/no")
	
end;

function taykynang()
	local nTT1 = GetItemCount(0,4,238)
	local nTT2 = GetItemCount(0,4,239)
	local nTT3 = GetItemCount(0,4,240)
	local nTotal = nTT1 + nTT2 + nTT3
	if(nTotal < 3) then
		Talk(1,"","C�n 3 vi�n Th�y Tinh. Ng��i kh�ng mang �� r�i!")
	return end
	nTotal = 3;
	local nCityIndex = -1;
	local nCurSW = GetWorldPos();
	if (nCurSW == 1) then
		nCityIndex = 1;
	elseif (nCurSW == 11) then
		nCityIndex = 2;
	elseif (nCurSW == 162) then
		nCityIndex = 3;
	elseif (nCurSW == 137) then
		nCityIndex = 4;
	elseif (nCurSW == 78) then
		nCityIndex = 5;
	elseif (nCurSW == 80) then
		nCityIndex = 6;
	elseif (nCurSW == 176) then
		nCityIndex = 7;
	else
		Msg2Player("H� th�ng xu�t hi�n s� c�! Vui l�ng t�m nh�n vi�n ph�c v� x�c nh�n gi�i quy�t v�n ��. ");
		return
	end	
	if(NewWorld(242,1613,3197) == 1) then
		for i=1,3 do
			if(nTotal > 0 and nTT1 > 0) then
			DelItem(1,0,4,238)
			nTotal = nTotal - 1
			nTT1 = nTT1 - 1
			end
		end
		for i=1,3 do
			if(nTotal > 0 and nTT2 > 0) then
			DelItem(1,0,4,239)
			nTotal = nTotal - 1
			nTT2 = nTT2 - 1
			end
		end
		for i=1,3 do
			if(nTotal > 0 and nTT3 > 0) then
			DelItem(1,0,4,240)
			nTotal = nTotal - 1
			nTT3 = nTT3 - 1
			end
		end
		local nValue = SetNumber(1,GetTask(TASK_DAOTAYTUY),7,1);
		local w,rv = GetCurRev();
		nValue = SetNumber(3,nValue,1,w);
		nValue = SetNumber(2,nValue,3,rv);
		nValue = SetNumber(1,nValue,8,nCityIndex);
		SetTask(TASK_DAOTAYTUY, nValue);
		SetRevPos(242,1) --diem phuc sinh tren dao tay tuy
		ForbidUseTownP(1);
		SetPunish(0);
		Msg2Player("Ng�i y�n. Ch�ng ta �i T�y T�y ��o!");
	end
end

function taytiemnang()
	if(GetItemCount(0,4,353) < 6) then
		Talk(1,"","C�n 6 vi�n Tinh H�ng b�o th�ch. Ng��i kh�ng mang �� r�i!")
	return end
	local nCityIndex = -1;
	local nCurSW = GetWorldPos();
	if (nCurSW == 1) then
		nCityIndex = 1;
	elseif (nCurSW == 11) then
		nCityIndex = 2;
	elseif (nCurSW == 162) then
		nCityIndex = 3;
	elseif (nCurSW == 137) then
		nCityIndex = 4;
	elseif (nCurSW == 78) then
		nCityIndex = 5;
	elseif (nCurSW == 80) then
		nCityIndex = 6;
	elseif (nCurSW == 176) then
		nCityIndex = 7;
	else
		Msg2Player("H� th�ng xu�t hi�n s� c�! Vui l�ng t�m nh�n vi�n ph�c v� x�c nh�n gi�i quy�t v�n ��. ");
		return
	end
	if(NewWorld(242,1613,3197) == 1) then
		DelItem(1,0,4,353)
		local nValue = SetNumber(1,GetTask(TASK_DAOTAYTUY),7,2);
		local w,rv = GetCurRev();
		nValue = SetNumber(3,nValue,1,w);
		nValue = SetNumber(2,nValue,3,rv);
		nValue = SetNumber(1,nValue,8,nCityIndex);
		SetTask(TASK_DAOTAYTUY, nValue);
		SetRevPos(242,1) --diem phuc sinh tren dao tay tuy
		ForbidUseTownP(1);
		SetPunish(0);
		Msg2Player("Ng�i y�n. Ch�ng ta �i T�y T�y ��o!");
	end
end

function tayall()
	local nTT1 = GetItemCount(0,4,238)
	local nTT2 = GetItemCount(0,4,239)
	local nTT3 = GetItemCount(0,4,240)
	local nTotal = nTT1 + nTT2 + nTT3
	local nTHBT = GetItemCount(0,4,353)
	if(nTotal < 3 or nTHBT < 6) then
		Talk(1,"","C�n 3 Th�y tinh v� 6 Tinh H�ng b�o th�ch. Ng��i kh�ng mang �� r�i!")
	return end
	nTotal = 3
	local nCityIndex = -1;
	local nCurSW = GetWorldPos();
	if (nCurSW == 1) then
		nCityIndex = 1;
	elseif (nCurSW == 11) then
		nCityIndex = 2;
	elseif (nCurSW == 162) then
		nCityIndex = 3;
	elseif (nCurSW == 137) then
		nCityIndex = 4;
	elseif (nCurSW == 78) then
		nCityIndex = 5;
	elseif (nCurSW == 80) then
		nCityIndex = 6;
	elseif (nCurSW == 176) then
		nCityIndex = 7;
	else
		Msg2Player("H� th�ng xu�t hi�n s� c�! Vui l�ng t�m nh�n vi�n ph�c v� x�c nh�n gi�i quy�t v�n ��. ");
		return
	end
	if(NewWorld(242,1613,3197) == 1) then
		DelItem(6,0,4,353)
		for i=1,3 do
			if(nTotal > 0 and nTT1 > 0) then
			DelItem(1,0,4,238)
			nTotal = nTotal - 1
			nTT1 = nTT1 - 1
			end
		end
		for i=1,3 do
			if(nTotal > 0 and nTT2 > 0) then
			DelItem(1,0,4,239)
			nTotal = nTotal - 1
			nTT2 = nTT2 - 1
			end
		end
		for i=1,3 do
			if(nTotal > 0 and nTT3 > 0) then
			DelItem(1,0,4,240)
			nTotal = nTotal - 1
			nTT3 = nTT3 - 1
			end
		end
		local nValue = SetNumber(1,GetTask(TASK_DAOTAYTUY),7,0);
		local w,rv = GetCurRev();
		nValue = SetNumber(3,nValue,1,w);
		nValue = SetNumber(2,nValue,3,rv);
		nValue = SetNumber(1,nValue,8,nCityIndex);
		SetTask(TASK_DAOTAYTUY, nValue);
		SetRevPos(242,1) --diem phuc sinh tren dao tay tuy
		ForbidUseTownP(1);
		SetPunish(0);
		Msg2Player("Ng�i y�n. Ch�ng ta �i T�y T�y ��o!");
	end
end

function taymienphi()
	local nCityIndex = -1;
	local nCurSW = GetWorldPos();
	if (nCurSW == 1) then
		nCityIndex = 1;
	elseif (nCurSW == 11) then
		nCityIndex = 2;
	elseif (nCurSW == 162) then
		nCityIndex = 3;
	elseif (nCurSW == 137) then
		nCityIndex = 4;
	elseif (nCurSW == 78) then
		nCityIndex = 5;
	elseif (nCurSW == 80) then
		nCityIndex = 6;
	elseif (nCurSW == 176) then
		nCityIndex = 7;
	else
		Msg2Player("H� th�ng xu�t hi�n s� c�! Vui l�ng t�m nh�n vi�n ph�c v� x�c nh�n gi�i quy�t v�n ��. ");
		return
	end
	if(NewWorld(242,1613,3197) == 1) then
		local nValue = SetNumber(1,GetTask(TASK_DAOTAYTUY),4,1);
		nValue = SetNumber(1,nValue,7,0);
		local w,rv = GetCurRev();
		nValue = SetNumber(3,nValue,1,w);
		nValue = SetNumber(2,nValue,3,rv);
		nValue = SetNumber(1,nValue,8,nCityIndex);
		SetTask(TASK_DAOTAYTUY, nValue);
		SetRevPos(242,1) --diem phuc sinh tren dao tay tuy
		ForbidUseTownP(1);
		SetPunish(0);
		Msg2Player("Ng�i y�n. Ch�ng ta �i T�y T�y ��o!");
	end
end

function out()
	if(GetCash() <=0) then
	Talk(1,"",10084)
	end;
end;

function no()
end;