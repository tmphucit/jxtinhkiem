Include("\\script\\header\\region.lua")

function PermitTrade()
	if(GetFightState()~= 0) then
		Msg2Player("Tr�ng th�i kh�ng ���c b�o v� kh�ng th� th�c hi�n");
		return 0;
	end;
	if(GetLevel() < 80) then
		Msg2Player("��ng c�p d��i 80 kh�ng th� b�y b�n");
		return 0;
	end;
	if(PermitRegion() == 0) then
		Msg2Player("B�n kh�ng th� b�y b�n � khu v�c n�y");
		return 0;
	end;
	return 1;
end;

Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\maps\\checkmap.lua");

aryMap = {
	44, 326, 327, 328, 329, 330, 331, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374,375,376,377,378,379,380,381,382,383,384,385,386,--�ν�ս����Ӫ
	323,324,325,
	221,222,223,
	208,
	605,606,607,
	608,609,610,611,612,613,
	520,521,522,523,524,525,526,
}

OtherMap = {m_Maps = {}}

function OtherMap:Initialize()
	for i = 1, getn(aryMap) do
		self.m_Maps[aryMap[i]] = 1
	end
end

function OtherMap:AddMap(mapid)
	self.m_Maps[mapid] = 1
end

function OtherMap:DelMap(mapid)
	self.m_Maps[mapid] = nil
end

function OtherMap:Check(mapid)
	if (self.m_Maps[mapid] ~= nil) then
		return 1
	else
		return 0
	end
end
OtherMap:Initialize()

function IsShopMap(nMapID)
	if (IsCityMap(nMapID) == 1 or
		IsFreshmanMap(nMapID) == 1 or
		OtherMap:Check(nMapID) == 1) then
		return 1
	else
		return 0
	end
end

function PermitSuperShop()
	-- local nMapID, _, _ = GetWorldPos()
	-- if (GetFightState() >= 1 or IsShopMap(nMapID) == 0) then
		-- Msg2Player("K� Tr�n C�c ch� c� th� m� t�i c�c th�nh th�, t�n th� th�n v� m�t s� khu v�c phi chi�n ��u kh�c!")
	-- else
		NewSale(0,1,3,97,98,99)
	-- end
end

function no()
end;