Include("\\script\\header\\taskid.lua");
ALL_POINT_NO_LONGER = "Ng��i �� c�ng h�t �i�m ti�m n�ng r�i!"
COMMON_SAY = "Th�ch Minh: Ng��i c� mu�n t�y t�y kh�ng?"
STATION_OLD = {
{1 ,1},
{2 ,11 },
{3 ,162},
{4 ,37 },
{5 ,78 },
{6 ,80 },
{7 ,176}
};

TIEMNAMG_ARRAY ={
10,
20,
50,
100,
150,
200,
300,
500
};

function main()
	local nValue = GetNumber(1,GetTask(TASK_DAOTAYTUY),7);
	if(nValue == 1) then
	SayNew(COMMON_SAY,5,
	"T�y �i�m k� n�ng/taykynang",
	"C�ng �i�m ti�m n�ng/cong",
	"Kh�ng t�y/no",
	"V� vi�c t�y t�y/timhieu",
	"R�i kh�i ��o t�y t�y/roikhoi")
	elseif (nValue == 2) then
	SayNew(COMMON_SAY,5,
	"T�y �i�m ti�m n�ng/taytiemnang",
	"C�ng �i�m ti�m n�ng/cong",
	"Kh�ng t�y/no",
	"V� vi�c t�y t�y/timhieu",
	"R�i kh�i ��o t�y t�y/roikhoi")
	else
	SayNew(COMMON_SAY,6,
	"T�y �i�m k� n�ng/taykynang",
	"T�y �i�m ti�m n�ng/taytiemnang",
	"C�ng �i�m ti�m n�ng/cong",
	"Kh�ng t�y/no",
	"V� vi�c t�y t�y/timhieu",
	"R�i kh�i ��o t�y t�y/roikhoi")
	end
	
end

function taykynang()
	local nPnt = RollbackSkill();
	AddMagicPoint(nPnt);
	Talk(1,"",format("T�y t�y th�nh c�ng ng��i c� th� ph�n ph�i l�i <color=Yellow>%d<color> �i�m k� n�ng",nPnt))
end

function taytiemnang()
	local nPnt = ResetProp();
	AddPropPoint(nPnt);
	Talk(1,"",format("T�y t�y th�nh c�ng ng��i c� th� ph�n ph�i l�i <color=Yellow>%d<color> �i�m ti�m n�ng",nPnt))
end

function timhieu()
	Talk(3,"",13021,10511,10512)
end

function roikhoi()
	SayNew("Th�ch Minh: Ng��i th�t s� mu�n r�i kh�i ��y?",2,
		"��ng ta mu�n r�i kh�i ��o t�y t�y/venha",
		"�� ta suy ngh� l�i xem/no")
end

function venha()
	local nCityIndex = GetNumber(1,GetTask(TASK_DAOTAYTUY),8);
	local nWorld = GetNumber(3,GetTask(TASK_DAOTAYTUY),1);
	local nRevID = GetNumber(2,GetTask(TASK_DAOTAYTUY),3);
	if (nCityIndex == 1) then
		NewWorld(1, 1557, 3112) -- ����		
	elseif (nCityIndex == 2) then
		NewWorld(11, 3193, 5192) -- �ɶ�	
	elseif (nCityIndex == 3) then
		NewWorld(162, 1669, 3129) -- ����	
	elseif (nCityIndex == 4) then
		NewWorld(37, 1598, 3000) -- �꾩
	elseif (nCityIndex == 5) then
		NewWorld(78, 1592, 3377) -- ����
	elseif (nCityIndex == 6) then
		NewWorld(80, 1670, 2996) -- ����		
	elseif (nCityIndex == 7) then
		NewWorld(176, 1603, 2917) -- �ٰ�
	else
		Msg2Player("H� th�ng xu�t hi�n s� c�! Vui l�ng t�m nh�n vi�n ph�c v� x�c nh�n gi�i quy�t v�n ��. ");
		return
	end
	SetFightState(0)
	SetRevPos(nWorld,nRevID)
	ForbidUseTownP(0);
	SetPunish(1);
end

function cong()
	SayNew("Ng��i mu�n t�ng �i�m lo�i n�o?",5,"S�c m�nh/sucmanh","Th�n ph�p/thanphap","Sinh kh� /sinhkhi","N�i c�ng/noicong","Tho�t/no")
end;

function sucmanh()
	local count = 1;
	local StrTab = {};
	
	for i=1,getn(TIEMNAMG_ARRAY) do
		StrTab[count] = TIEMNAMG_ARRAY[i].." �i�m".. "/selsucmanh";
		count = count + 1;
	end
	
	if(count == 1) then
	return end
	
	StrTab[count] = "Quay l�i/cong";
	SayNew("Ng��i mu�n c�ng th�m s�c m�nh bao nhi�u?",count,StrTab)
end;

function selsucmanh(sel)
	local nSel = sel +1;
	local n = GetRestAP()
	if n == 0 then Talk(1,"",ALL_POINT_NO_LONGER); return end
	if n < TIEMNAMG_ARRAY[nSel] then
	AddStrg(n); cong();
	return end
	AddStrg(TIEMNAMG_ARRAY[nSel]); cong();
end;

function thanphap()
local count = 1;
	local StrTab = {};
	
	for i=1,getn(TIEMNAMG_ARRAY) do
		StrTab[count] = TIEMNAMG_ARRAY[i].." �i�m".. "/selthanphap";
		count = count + 1;
	end
	
	if(count == 1) then
	return end
	
	StrTab[count] = "Quay l�i/cong";
	SayNew("Ng��i mu�n c�ng th�m th�n ph�p bao nhi�u?",count,StrTab)
end;

function selthanphap(sel)
	local nSel = sel +1;
	local n = GetRestAP()
	if n == 0 then Talk(1,"",ALL_POINT_NO_LONGER); return end
	if n < TIEMNAMG_ARRAY[nSel] then
	AddDex(n); cong();
	return end
	AddDex(TIEMNAMG_ARRAY[nSel]); cong();
end;

function sinhkhi()
local count = 1;
	local StrTab = {};
	
	for i=1,getn(TIEMNAMG_ARRAY) do
		StrTab[count] = TIEMNAMG_ARRAY[i].." �i�m".. "/selsinhkhi";
		count = count + 1;
	end
	
	if(count == 1) then
	return end
	
	StrTab[count] = "Quay l�i/cong";
	SayNew("Ng��i mu�n c�ng th�m sinh kh� bao nhi�u?",count,StrTab)
end;

function selsinhkhi(sel)
	local nSel = sel +1;
	local n = GetRestAP()
	if n == 0 then Talk(1,"",ALL_POINT_NO_LONGER); return end
	if n < TIEMNAMG_ARRAY[nSel] then
	AddVit(n); cong();
	return end
	AddVit(TIEMNAMG_ARRAY[nSel]); cong();
end;

function noicong()
local count = 1;
	local StrTab = {};
	
	for i=1,getn(TIEMNAMG_ARRAY) do
		StrTab[count] = TIEMNAMG_ARRAY[i].." �i�m".. "/selnoicong";
		count = count + 1;
	end
	
	if(count == 1) then
	return end
	
	StrTab[count] = "Quay l�i/cong";
	SayNew("Ng��i mu�n c�ng th�m n�i c�ng bao nhi�u?",count,StrTab)
end;

function selnoicong(sel)
	local nSel = sel +1;
	local n = GetRestAP()
	if n == 0 then Talk(1,"",ALL_POINT_NO_LONGER); return end
	if n < TIEMNAMG_ARRAY[nSel] then
	AddEng(n); cong();
	return end
	AddEng(TIEMNAMG_ARRAY[nSel]); cong();
end;

function no()
end;
