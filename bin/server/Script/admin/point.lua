Include("\\script\\global\\sourcejx49.lua")
NOW_END_SAY = "K�t th�c ��i tho�i./no";
ADMIN_SUPPORT_TEXT = "Ch�c n�ng h� tr� qu�n tr� vi�n";

function hotro()
Say(ADMIN_SUPPORT_TEXT,12,
	"T�ng kinh nghi�m (c�p 160)/kn1",
	"Ti�n xu/tienxu",
	"Ti�n v�n/tienvan",
	"�i�m t�ng kim/pointtongkim",
	"�i�m danh v�ng/danhvong",
	"�i�m ph�c duy�n/phucduyen",
	-- "�i�m l�nh ��o/lanhdao",
	"�i�m k� n�ng/pointkynang",
	"�i�m ti�m n�ng/pointtiemnang",
	"�i�m li�n ��u/pointch",
	-- "�i�m tr�ng sinh/trungsinh",	
	"L�nh b�i V��t �i/lenhbai",
	"L�nh b�i PLD/lenhbaiPLD",
	NOW_END_SAY)
end

function pointtongkim()
	SetTask(15,GetTask(15)+3000)
	Msg2Player("B�n nh�n ���c 3000 �i�m t�ng kim."); 
end

function pointch()
	SetTask(124,GetTask(124)+1000)
	Msg2Player("B�n nh�n ���c 1000 �i�m li�n ��u."); 
end

function pointkynang()
	AddMagicPoint(1000)
	Msg2Player("B�n nh�n ���c 1000 �i�m k� n�ng ")
end;

function pointtiemnang()
	AddProp(500)
	Msg2Player("B�n nh�n ���c 50 �i�m ti�m n�ng "); 
end
	
-- function lanhdao()
	-- for i=1,20 do
	-- AddLeadExp(100000000)
	-- end
-- end

function kn1()
	if GetLevel() < 90 then
		while GetLevel() < 90 do
		AddOwnExp(9E9)
		end
	else
		while GetLevel() < 150 do
		AddOwnExp(9E9)
		end
	end
end

function tienvan()
	Earn(1000000000)
end

function tienxu()
a = 1000
	SetTask(99,a)
	SetTask(101,a)
end

function danhvong()
	n=random(100,300)
	AddRepute(n)
end

function phucduyen()
a = 1000
	SetTask(162,a)
end
function lenhbai()
AddEventItem(156)
end
function lenhbaiPLD()
AddEventItem(135)
end
-- function trungsinh()
	-- AddReBorn(5)
-- end

-- function pk()
	-- SetPK(GetPK() + 1)
-- end

-- function setlevel()
	-- SetLevel(10)
-- end