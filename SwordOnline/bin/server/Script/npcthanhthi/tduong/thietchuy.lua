--hoangnhk
Include("\\script\\header\\repute_head.lua");

function main()
	SayNew(GetSex()==1 and 10101 or 10100, 2,
	"���c! �� ta xem th�/xem",
	"Kh�ng c�n ��u/no")
end;

function xem()
	if(GetCash() >= 5000) then
	Pay(5000)
	Talk(1,"calc",10103);
	else
		Talk(1,"",10102);
	end
end

function calc()
	local nRepute = GetRepute();
	local nReputeLv = GetReputeLevel(nRepute);
	Talk(1,"",format("Danh v�ng giang h� c�a ng��i hi�n t�i l� %d. Giang h� xem ng��i hi�n gi� l� <color=Red>%s ",nRepute,GetReputeStr(nReputeLv)));
end

function no()
end;