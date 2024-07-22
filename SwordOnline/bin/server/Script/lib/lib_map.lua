-- Author: AlexKing
-- Date: 28/11/2016
-- Chuc nang: Ham ho tro map
Include("\\script\\startgame\\npcposarray.lua");

OTHER_VOSU = ""
OTHER_SGSTHU = "\\script\\global\\npc\\npcchucnang\\sugiasatthu.lua"
OTHER_DATAU = "\\script\\tinhnang\\datau\\datau.lua"
OTHER_LEQUAN = "\\script\\global\\npc\\npcchucnang\\lekienquan.lua"
OTHER_RUONG = "\\script\\global\\npc\\npcchucnang\\ruongchua.lua"
OTHER_THOREN = "\\script\\global\\npc\\npcchucnang\\thoren.lua"
OTHER_BANNGUA = "\\script\\global\\npc\\npcchucnang\\banngua.lua"
OTHER_XAPHU = "\\script\\global\\npc\\npcchucnang\\xaphu.lua"
OTHER_HIEUTHUOC = "\\script\\global\\npc\\npcchucnang\\hieuthuoc.lua"
OTHER_TAPHOA = "\\script\\global\\npc\\npcchucnang\\taphoa.lua"
OTHER_VEBINH = "\\script\\global\\npc\\npcchucnang\\vebinh.lua"
OTHER_BACDAU = "\\script\\global\\npc\\npcchucnang\\bacdaulaonhan.lua"

FACTION_THIEULAM = "\\script\\global\\npc\\npcmonphai\\shaolin.lua"
FACTION_THIENVUONG = "\\script\\global\\npc\\npcmonphai\\tianwang.lua"
FACTION_NGUDOC = "\\script\\global\\npc\\npcmonphai\\wudu.lua"
FACTION_DUONGMON = "\\script\\global\\npc\\npcmonphai\\tangmen.lua"
FACTION_NGAMY = "\\script\\global\\npc\\npcmonphai\\emei.lua"
FACTION_THUYYEN = "\\script\\global\\npc\\npcmonphai\\cuiyan.lua"
FACTION_CAIBANG = "\\script\\global\\npc\\npcmonphai\\gaibang.lua"
FACTION_THIENNHAN = "\\script\\global\\npc\\npcmonphai\\tianren.lua"
FACTION_VODANG = "\\script\\global\\npc\\npcmonphai\\wudang.lua"
FACTION_CONLON = "\\script\\global\\npc\\npcmonphai\\kunlun.lua"

DEATHFILE0X = "\\script\\global\\npc\\ondeath\\death0x.lua"
DEATHFILE1X = "\\script\\global\\npc\\ondeath\\death1x.lua"
DEATHFILE2X = "\\script\\global\\npc\\ondeath\\death2x.lua"
DEATHFILE3X = "\\script\\global\\npc\\ondeath\\death3x.lua"
DEATHFILE4X = "\\script\\global\\npc\\ondeath\\death4x.lua"
DEATHFILE5X = "\\script\\global\\npc\\ondeath\\death5x.lua"
DEATHFILE6X = "\\script\\global\\npc\\ondeath\\death6x.lua"
DEATHFILE7X = "\\script\\global\\npc\\ondeath\\death7x.lua"
DEATHFILE8X = "\\script\\global\\npc\\ondeath\\death8x.lua"
DEATHFILE9X = "\\script\\global\\npc\\ondeath\\death9x.lua"
DEATHFILE10X = "\\script\\global\\npc\\ondeath\\death10x.lua"
DEATHFILESATTHU = "\\script\\tinhnang\\boss_satthu\\death.lua"
DEATHFILEHKTIEU = "\\script\\tinhnang\\boss_hoangkim\\deathhktieu.lua"
DEATHFILEHKDAI = "\\script\\tinhnang\\boss_hoangkim\\deathhkdai.lua"

DROPRATE0X = "\\script\\global\\npc\\droprate\\droprate0x.lua"
DROPRATE1X = "\\script\\global\\npc\\droprate\\droprate1x.lua"
DROPRATE2X = "\\script\\global\\npc\\droprate\\droprate2x.lua"
DROPRATE3X = "\\script\\global\\npc\\droprate\\droprate3x.lua"
DROPRATE4X = "\\script\\global\\npc\\droprate\\droprate4x.lua"
DROPRATE5X = "\\script\\global\\npc\\droprate\\droprate5x.lua"
DROPRATE6X = "\\script\\global\\npc\\droprate\\droprate6x.lua"
DROPRATE7X = "\\script\\global\\npc\\droprate\\droprate7x.lua"
DROPRATE8X = "\\script\\global\\npc\\droprate\\droprate8x.lua"
DROPRATE9X = "\\script\\global\\npc\\droprate\\droprate9x.lua"
DROPRATE10X = "\\script\\global\\npc\\droprate\\droprate10x.lua"
DROPRATESATTHU = "\\script\\tinhnang\\boss_satthu\\drop.lua"
DROPRATEHKTIEU = "\\script\\tinhnang\\boss_hoangkim\\drophktieu.lua"
DROPRATEHKDAI = "\\script\\tinhnang\\boss_hoangkim\\drophkdai.lua"
MAX_PLAYER = 1200
----------------------------
-- 
----------------------------
function CountPlayerInMaps(IdMaps)
	local nP = 0
	local idbt = PlayerIndex
	for i =1,MAX_PLAYER do
		PlayerIndex = i
		local W, X, Y = GetWorldPos()
		if (W == IdMaps) then
			nP = nP + 1
		end
	end
	PlayerIndex = idbt
	return nP
end

----------------------------
-- 
----------------------------
function MoveNPC(nMap, nX, nY, nOffsetX, nOffsetY, nPrice, nFightState, nTermini)
	if (nOffsetX == nil) then nOffsetX = 0 end
	if (nOffsetY == nil) then nOffsetY = 0 end	
   	local POSX = floor((nX + nOffsetX/10)*8)
    local POSY = floor((nY + nOffsetY/10)*16)
	if (GetCash() < nPrice) then
		Talk(1,"",format("Kh«ng ®ñ %d l­îng, kh«ng thÓ di chuyÓn.",nPrice))
	return end
	Pay(nPrice)
	NewWorld(nMap,POSX,POSY);
	SetFightState(nFightState);
	if(nTermini ~= nil) then
		AddTermini(nTermini);
	end	
end;

----------------------------
-- AddNpcEx1
----------------------------
function AddNpcEx1(nId, nLevel, szSeries, nMap, nX, nY, szDropScript, szScript, szName, nCurCamp)	
	local mapindex = SubWorldID2Idx(nMap)
    local npclvl = nLevel
	local nRandNum = getn(nId);
	local nNpcId = AddNpc(nId[random(1,nRandNum)],npclvl,mapindex,nX,nY);
	
	if(szName~=nil) then	
		SetNpcName(nNpcId, szName);
	end	
    	if(nCurCamp~=nil) then	
		SetNpcCurCamp(nNpcId, nCurCamp);
	end	
	if(szSeries~=nil) then	
		local nRandNum1 = getn(szSeries);
		SetNpcSeries(nNpcId, szSeries[random(1,nRandNum1)]);
	end
	if(szDropScript~=nil) then
    		SetNpcDropScript(nNpcId, szDropScript);
    end	
	if(szScript~=nil) then
    		SetNpcScript(nNpcId, szScript);
    end
	return nNpcId;
end;

----------------------------
-- AddNpcEx2
----------------------------
function AddNpcEx2(nArray, nRegionX, nRegionY, nId, nLevel, szSeries, nMap, nX, nY, szDropScript, szScript, szName, nCurCamp)	
 	for y=1,nRegionY-nY+1 do
	for x=1,floor((nRegionX-nX+2)/2) do
	for i=1,16 do
	for k=1,16 do
	if (NPCPOSARRAY[nArray][i][k] > 0) then
		local nNpcId = AddNpcEx1(nId, nLevel, szSeries, nMap,(((nX+(x-1)*2)*8)+(k-1))*32,(((nY+(y-1))*16)+(i-1))*32, szDropScript, szScript, szName, nCurCamp)
	end
	end
	end
	end
	end
end;

----------------------------
-- AddNpcEx3
----------------------------
--                  1     2      3         4      5  6        7        8           9    10      11      12
function AddNpcEx3(nId, nLevel, szSeries, nMap, nX, nY, szDropScript, szScript, szName, nCurCamp, nExp, nLife,
--                      13         14       15
					nReplenish, nAttackR, nDefend,			--phuc hoi sinh luc | do chinh xac | ne tranh
--                      16          17
					nMinDamage, nMaxDamage,					--sat thuong nho nhat/lon nhat
--                      18           19          
					nReviveTime, nHitRecover)				--Thoi gian phuc sinh, thoi gian phuc hoi
					
	local mapindex = SubWorldID2Idx(nMap)
	local npclvl = nLevel

	local nRandNum = getn(nId);
	local nNpcId = AddNpc(nId[random(1,nRandNum)],npclvl,mapindex,nX,nY);	
	
    if(nCurCamp~=nil) then	
		SetNpcCurCamp(nNpcId, nCurCamp);
	end
	if(szName~=nil) then	
		SetNpcName(nNpcId, szName);
	end
	if(szSeries~=nil) then	
		local nRandNum1 = getn(szSeries);
		SetNpcSeries(nNpcId, szSeries[random(1,nRandNum1)]);
	end
	if(nExp~=nil) then	
		SetNpcExp(nNpcId, nExp, 1);
	end
	if(nLife~=nil) then	
		SetNpcLife(nNpcId, nLife, 1);--set luon mau' nguyen thuy~
	end
	if(nReplenish~=nil) then	
		SetNpcReplenish(nNpcId, nReplenish, 1);
	end
	if(nAttackR~=nil) then	
		SetNpcAR(nNpcId, nAttackR, 1);
	end
	if(nDefend~=nil) then	
		SetNpcDefense(nNpcId, nDefend, 1);
	end
	if(nMinDamage~=nil and nMaxDamage~=nil) then	
		SetNpcDamage(nNpcId, nMinDamage, nMaxDamage);
	end
	if(nReviveTime~=nil) then	
		SetNpcRevTime(nNpcId, nReviveTime);
	end
	if(nHitRecover~=nil) then	
		SetNpcHitRecover(nNpcId, nHitRecover, 1);
	end
	if(szDropScript~=nil) then	
		SetNpcDropScript(nNpcId, szDropScript);
	end
	if(szScript~=nil) then
    	SetNpcScript(nNpcId, szScript);
    end
	return nNpcId
end;

----------------------------
-- AddNpcEx4
----------------------------
function AddNpcEx4(nArray, nRegionX, nRegionY, nId, nLevel, szSeries, nMap, nX, nY, szDropScript, szScript, szName, nCurCamp, nExp, nLife,
--                      16         17       18
					nReplenish, nAttackR, nDefend,			--phuc hoi sinh luc | do chinh xac | ne tranh
--                      19          20
					nMinDamage, nMaxDamage,					--sat thuong nho nhat/lon nhat
--                      21           22        
					nReviveTime, nHitRecover)		
 	for y=1,nRegionY-nY+1 do
	for x=1,floor((nRegionX-nX+2)/2) do
	for i=1,16 do
	for k=1,16 do
	if (NPCPOSARRAY[nArray][i][k] > 0) then
		local nNpcId = AddNpcEx3(nId, nLevel, szSeries, nMap,(((nX+(x-1)*2)*8)+(k-1))*32,(((nY+(y-1))*16)+(i-1))*32, szDropScript, szScript, szName, nCurCamp, nExp, nLife,nReplenish, nAttackR, nDefend, nMinDamage, nMaxDamage ,nReviveTime, nHitRecover)
	end
	end
	end
	end
	end
end;

----------------------------
-- AddNpcEx5
----------------------------
--                  1     2      3         4      5  6        7        8           9    10      11      12
function AddNpcEx5(nId, nLevel, szSeries, nMap, nX, nY, szDropScript, szScript, szName, nCurCamp, nExp, nLife,
--                      13         14       15
					nReplenish, nAttackR, nDefend,			--phuc hoi sinh luc | do chinh xac | ne tranh
--                      16          17
					nMinDamage, nMaxDamage,					--sat thuong nho nhat/lon nhat
--                      18           19          
					nReviveTime, nHitRecover, nBossType)				--Thoi gian phuc sinh, thoi gian phuc hoi
					
	local mapindex = SubWorldID2Idx(nMap)
	local npclvl = nLevel

	local nRandNum = getn(nId);
	local nNpcId = AddNpc(nId[random(1,nRandNum)],npclvl,mapindex,nX,nY);	
	
    if(nCurCamp~=nil) then	
		SetNpcCurCamp(nNpcId, nCurCamp);
	end
	if(szName~=nil) then	
		SetNpcName(nNpcId, szName);
	end
	if(szSeries~=nil) then	
		local nRandNum1 = getn(szSeries);
		SetNpcSeries(nNpcId, szSeries[random(1,nRandNum1)]);
	end
	if(nExp~=nil) then	
		SetNpcExp(nNpcId, nExp, 1);
	end
	if(nLife~=nil) then	
		SetNpcLife(nNpcId, nLife, 1);--set luon mau' nguyen thuy~
	end
	if(nReplenish~=nil) then	
		SetNpcReplenish(nNpcId, nReplenish, 1);
	end
	if(nAttackR~=nil) then	
		SetNpcAR(nNpcId, nAttackR, 1);
	end
	if(nDefend~=nil) then	
		SetNpcDefense(nNpcId, nDefend, 1);
	end
	if(nMinDamage~=nil and nMaxDamage~=nil) then	
		SetNpcDamage(nNpcId, nMinDamage, nMaxDamage);
	end
	if(nReviveTime~=nil) then	
		SetNpcRevTime(nNpcId, nReviveTime);
	end
	if(nHitRecover~=nil) then	
		SetNpcHitRecover(nNpcId, nHitRecover, 1);
	end
	if(nBossType~=nil) then
    	SetNpcBoss(nNpcId, nBossType);
    end	
	if(szDropScript~=nil) then	
		SetNpcDropScript(nNpcId, szDropScript);
	end
	if(szScript~=nil) then
    	SetNpcScript(nNpcId, szScript);
    end
	return nNpcId
end;

----------------------------
-- AddTrapEx1
----------------------------
function AddTrapEx1(nMap, nBX, nBY, nDistance, szScript)
	mapindex = SubWorldID2Idx(nMap)
	local nX,nY = nBX,nBY;
	for i=0,nDistance do
		AddTrap(mapindex, (nX + i)*32, (nY - i)*32, szScript)
	end
	nX = nX - 1;
	for i=0,nDistance do
		AddTrap(mapindex, (nX + i)*32, (nY - i)*32, szScript)
	end
end;

----------------------------
-- AddTrapEx2
----------------------------
function AddTrapEx2(nMap, nBX, nBY, nDistance, szScript)
	mapindex = SubWorldID2Idx(nMap)
	local nX,nY = nBX,nBY;
	for i=0,nDistance do
		AddTrap(mapindex, (nX + i)*32, (nY + i)*32, szScript)
	end
	nY = nY - 1;
	for i=0,nDistance do
		AddTrap(mapindex, (nX + i)*32, (nY + i)*32, szScript)
	end
end;

----------------------------
-- AddTrapEx3
----------------------------
function AddTrapEx3(nMap, nBX, nBY, nDistance, szScript)
	mapindex = SubWorldID2Idx(nMap)
	local nX,nY = nBX,nBY;
	for i=0,nDistance do
		AddTrap(mapindex, nX*32, (nY + i)*32, szScript)
	end
	nX = nX - 1;
	for i=0,nDistance do
		AddTrap(mapindex, nX*32, (nY + i)*32, szScript)
	end
end;

----------------------------
-- AddTrapEx4
----------------------------
function AddTrapEx4(nMap, nBX, nBY, nDistance, szScript)
	mapindex = SubWorldID2Idx(nMap)
	local nX,nY = nBX,nBY;
	for i=0,nDistance do
		AddTrap(mapindex, (nX + i)*32, nY*32, szScript)
	end
	nY = nY - 1;
	for i=0,nDistance do
		AddTrap(mapindex, (nX + i)*32, nY*32, szScript)
	end
end;

----------------------------
-- AddTrapEx5
----------------------------
function AddTrapEx5(nMap, nBX, nBY, szScript)
	mapindex = SubWorldID2Idx(nMap)
	local nX,nY = nBX,nBY;
	AddTrap(mapindex, nX, nY, szScript)
end;

----------------------------
-- Map Name
----------------------------
TAB_MAPNAME = { 
	{1,  "S¬n §éng Sa M¹c 1"},
	{2,  "Hoa S¬n"},
	{3,  "D­îc V­¬ng §éng tÇng 4"},
	{4,  "TuyÕt B¸o ®éng"},
	{5,  "L¨ng TÇn Thñy Hoµng"},
	{6,  "Sa M¹c ®Þa biÓu"},
	{7,  "L©m Du Quan"},
	{8,  "Ch©n nói Tr­êng B¹ch"},
	{9,  "Tr­êng B¹ch s¬n Nam"},
	{10, "Tr­êng B¹ch s¬n B¾c"},
	{11, "Thµnh §«"},
	{12, "M¹c Cao QuËt"},
	{13, "M¹c B¾c Th¶o Nguyªn"},
	{14, "Tr­êng Ca M«n cÊm ®Þa"},
	{15, "Ph­îng T­êng"},
	{16, "L©m an"},
	{17, "Thiªn Lao"},
	{19, "TÈy Tñy ®ao"},
	{20, "Giang T©n Th«n"},
	{21, "Nh¹n Th¹ch ®éng"},
	{23, "Phong L¨ng ®é"},
	{24, "BÕn thuyÒn 1"},
	{25, "BÕn thuyÒn 2"},
	{26, "BÕn thuyÒn 3"},
	{27, "Thanh Thµnh s¬n"},	
	{28, "Minh NguyÖt trÊn"},
	{29, "Phôc Ng­u S¬n §«ng"},
	{30, "V­ît ¶i T­¬ng D­¬ng"},
	{31, "V­ît ¶i Ph­îng T­êng"},
	{32, "V­ît ¶i Thµnh §«"},
	{33, "V­ît ¶i Ph­îng T­êng"},
	{34, "V­ît ¶i D­¬ng Ch©u"},
	{37, "Ph­îng T­êng"},
	{38, "§iÓm b¸o danh Tèng Kim (s¬ cÊp) "},
	{39, "S¬n §éng Sa M¹c 2"},
	{40, "S¬n §éng Sa M¹c 3"},
	{51, "Tèng Kim"},
	{52, "Th©m L©m"},
	{53, "Ba L¨ng HuyÖn"},
	{54, "Nam Nh¹c trÊn"},
	{55, "§µo Hoa Nguyªn"},
	{56, "Mª cung Kª Qu¸n ®éng"},
	{69, "C«ng thµnh chiÕn tr­êng"},
	{70, "V« Danh MËt C¶nh"},
	{71, "HËu Ph­¬ng Bªn Thñ"},		-- xem xet bo map
	{72, "Héi tr­êng Liªn §Êu"},
	{73, "§Êu tr­êng Liªn §Êu"},
	{74, "§Êu tr­êng Liªn §Êu Cao CÊp"},
	{75, "Kháa Lang ®éng"},
	{78, "T­¬ng D­¬ng"},
	{80, "D­¬ng Ch©u"},
};

TAB_MAPNOFORTDP = 
{
	17,
	24,	
	25,	
	26,		
	30,
	31,
	32,
	33,
	34,
	38,
	51,	
	52,
	69,
	72,
	73,
	74,
}

TAB_MAPNOFORTHP = 
{
	17,
	24,	
	25,	
	26,	
	30,
	31,
	32,
	33,
	34,
	38,
--	51,	
	52,
	69,
	72,
	73,
	74,
}

TAB_MAPNOFORTKCT = 
{
	17,
	24,	
	25,	
	26,	
	30,
	31,
	32,
	33,
	34,
	38,
--	51,	
	52,
	69,
	72,
	73,
	74,
}

----------------------------
-- GetMapName
----------------------------
function GetMapName(nMap)
	local mapid = nMap
	for i = 1, getn(TAB_MAPNAME) do
	if (mapid == TAB_MAPNAME[i][1]) then
	return TAB_MAPNAME[i][2];
	end
	end
	return "";
end;

----------------------------
-- Check Map
----------------------------
function CheckMapNoForTDP(nMap)
	for i = 1, getn(TAB_MAPNOFORTDP) do
	if (nMap == TAB_MAPNOFORTDP[i]) then
	return 1
	end
	end
	return 0;
end

----------------------------
-- Check Map
----------------------------
function CheckMapNoForTHP(nMap)
	for i = 1, getn(TAB_MAPNOFORTHP) do
	if (nMap == TAB_MAPNOFORTHP[i]) then
	return 1
	end
	end	
	return 0;
end

----------------------------
-- Check Map
----------------------------
function CheckMapNoForTKCT(nMap)		-- tong kim chieu thu
	for i = 1, getn(TAB_MAPNOFORTKCT) do
	if (nMap == TAB_MAPNOFORTKCT[i]) then
	return 1
	end
	end	
	return 0;
end

----------------------------
-- AddObjEx1
----------------------------
function AddObjEx1(nIdObj, nMap, nBX, nBY, szScript)
	mapindex = SubWorldID2Idx(nMap)
	idobj = nIdObj
	local nX,nY = nBX,nBY;
	AddObj(idobj, mapindex, nX, nY, szScript)
end;