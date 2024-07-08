-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
--Ten San Pham "TRUOC DAY" : Serverlid.lua>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
--Ten San Pham "BAY GIO" : sourcejx49.lua>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
--Tac Gia : Akari>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
--Edit & Develop : rockbuon>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Include("\\Script\\global\\ban.lua");
----------------------------------------------------------------------------------------Variable Define-----------------------------------------------------------------------------------------------------------------------------------------------------------------
TienXuatSu = 50000
Rate_Item_ThapCam = 15 -- tøc 1/100
Rate_Item_EventThuong = 50 -- tøc 1/100
GH_BanhDauXanh = 10000
Exp_BanhDauXanh = 10000
GH_BanhThapCam = 10000
Exp_BanhThapCam = 30000
Max_Rate = 50
MANG_ITEM = {
-- Rate , IDItem, NameItem
{2, 1, "TÈy Tñy Kinh"},
{4, 0, "Vâ L©m MËt TÞch"},
{7, 273,"M·nh Ngùa ChiÕu D¹"},
{10, 655,"M·nh Ngùa XÝch Thè"},
{20, 707,"LÖnh Bµi D· TÈu"},
{30, 120,"Tiªn Th¶o Lé §Æc BiÖt"},
{32, 283, "M·nh D©y ChuyÒn An Bang"},
{34, 284, "M·nh NhÉn Cóc Hoa"},
{36, 285, "M·nh NhÉn Kª HuyÕt"},
{38, 286, "M·nh Ngäc Béi An Bang"},
{40, 383, "M·nh Vò KhÝ Hoµng Kim (1/6)"},
{42, 384, "M·nh Vò KhÝ Hoµng Kim (2/6)"},
{44, 385, "M·nh Vò KhÝ Hoµng Kim (3/6)"},
{46, 386, "M·nh Vò KhÝ Hoµng Kim (4/6)"},
{48, 387, "M·nh Vò KhÝ Hoµng Kim (5/6)"},
{49, 388, "M·nh Vò KhÝ Hoµng Kim (6/6)"},
{50, 19, "BÝ KiÕp 120"},
}	
Max_RateThuong = 100
MANG_ITEMEVENTTHUONG = {
-- Rate , IDItem, NameItem
-- {1, 653, "Thiªn S¬n B¶o Lé "},
-- {15, 117, "Tiªn Th¶o Lé 1 Giê "},
{5, 173, "Phóc Duyªn TiÓu"},
{10, 174, "Phóc Duyªn Trung"},
{15, 175, "Phóc Duyªn §¹i"},
{20, 28, "Lam Thñy Tinh"},
{25, 30, "Lôc Thñy Tinh"},
{30, 29, "Tö Thñy Tinh"},
{35, 31, "Tinh Hång B¶o Th¹ch"},
}

----------------------------------------------------------------------------------------Common Function-----------------------------------------------------------------------------------------------------------------------------------------------------------------
function AddNPCEx(nId,nLevel, nMap,nX,nY,nOffsetX,nOffsetY,nScript,nCurCamp)
	if (nOffsetX==nil) then nOffsetX = 0 end
	if (nOffsetY==nil) then nOffsetY = 0 end	
    	mapindex = SubWorldID2Idx(nMap)
		npcid = nId
    	npclvl = nLevel
    	posx = floor((nX+nOffsetX/10)*8*32)
    	posy = floor((nY+nOffsetY/10)*16*32)
	nNpcId = AddNpc(npcid,npclvl,mapindex,posx,posy,1, "Da tau", 1);
	if(nScript~=nil) then
    		SetNpcScript(nNpcId, nScript);
    	end	
    if(nCurCamp~=nil) then	
		SetNpcCurCamp(nNpcId, nCurCamp);
	end	
	return
end;

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
	-- if(nHitRecover~=nil) then	
		-- SetNpcHitRecover(nNpcId, nHitRecover, 1);
	-- end
	if(szDropScript~=nil) then	
		SetNpcDropScript(nNpcId, szDropScript);
	end
	if(szScript~=nil) then
    	SetNpcScript(nNpcId, szScript);
    end
	return nNpcId
end;


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function GenNPCEx(nLevel, nMap, nX, nY, Width,Height, NpcNum, NpcFrom, NpcTo,nDeathScript,nCurCamp)
    worldindex = SubWorldID2Idx(nMap)
    	posx = nX*8*32
    	posy = nY*16*32
if (Width <= 0 or Height <=0 or NpcNum <=0 or NpcFrom <=0  or NpcTo <=0) then
return
end;

if (x == nil) then 
return
end;

PerWidth = Width/sqrt(NpcNum);
PerHeight = Height / sqrt(NpcNum);

for i = 1, NpcNum do 
	Npctemp = random(NpcFrom, NpcTo);
	NpcIndex = AddNpc(Npctemp, nLevel, worldindex, (x - Width/2) +  mod(i, sqrt(NpcNum)) * PerWidth, (y - Height/2) + i/sqrt(NpcNum) * PerHeight);
	if(nDeathScript~=nil) then
    		SetNpcScript(NpcIndex, nDeathScript);
	end	
	if(nCurCamp~=nil) then
		SetNpcCurCamp(NpcIndex, nCurCamp);
	end	
end;
end;
function AddTrapEx1(nMap, nBX, nBY, nDistance, szScript)
	local nX,nY = nBX,nBY;
	for i=0,nDistance do
		AddTrap(nMap, (nX + i)*32, (nY - i)*32, szScript)
	end
	nX = nX - 1;
	for i=0,nDistance do
		AddTrap(nMap, (nX + i)*32, (nY - i)*32, szScript)
	end
end;

function AddTrapEx2(nMap, nBX, nBY, nDistance, szScript)
	local nX,nY = nBX,nBY;
	for i=0,nDistance do
		AddTrap(nMap, (nX + i)*32, (nY + i)*32, szScript)
	end
	nY = nY - 1;
	for i=0,nDistance do
		AddTrap(nMap, (nX + i)*32, (nY + i)*32, szScript)
	end
end;
function CreateNewSayEx(strQuestion, tbOpt)
	if (tbOpt ~= nil) then
	local tbSay = {};
	for i = 1,getn(tbOpt) do
		tbSay[i] = tbOpt[i][1].."/"..tbOpt[i][2].."";
	end;
	SayNew(strQuestion, getn(tbSay),tbSay);
	end
end;
function CreateTaskSayNew(tbTask)
	if (tbTask ~= nil) then
	local tbSay = {};
	for i = 2,getn(tbTask) do
		tbSay[i-1] = tbTask[i];
	end;
	SayNew(tbTask[1], getn(tbTask)-1,tbSay);
	end
end;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function MoveNPC(nMap,nX,nY,nOffsetX,nOffsetY,nPrice,nFightState,nTermini)
	if (nOffsetX==nil) then nOffsetX=0 end
	if (nOffsetY==nil) then nOffsetY=0 end	
   	posx = floor((nX+nOffsetX/10)*8)
    posy = floor((nY+nOffsetY/10)*16)
   		if (GetCash() >= nPrice) then
			Pay(nPrice)
			NewWorld(nMap, posx, posy);
			SetFightState(nFightState);
			AddRepute(1)
			if(nTermini~=nil) then
    			AddTermini(nTermini);
   			end	
		
		else
			SayNew("Quy Khach khong co du "..nPrice.." luong", 1,"Thoat./Exit")
		end
end;
---------------------------------------------------------------------------------------Menpai and Skill--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------NewTask-Da tau-----------------------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------Notify Function-----------------------------------------------------------------------------------------------------------------------------------------------------------------
function MsgEx(sMessage,sMsgType)
	if (sMsgType==0 or sMsgType==nil) then
		Msg2Player(sMessage);
	else
		Talk(sMsgType,"",sMessage);
	end
end;


function SayEx(strSay)
local strMsg,strSel = "","";
local strNum = getn(strSay);
	if strNum < 2 then
		return
	end;
	if strNum > 2 then
		for i=2,strNum - 1 do
			strSel = strSel..format("%q", strSay[i])..",";
		end;
		strSel = strSel..format("%q", strSay[strNum]);
		strMsg = "SayNew("..format("%q", strSay[1])..","..(strNum - 1)..","..strSel..");";
	elseif strNum == 2 then
		strSel = format("%q", strSay[strNum]);
		strMsg = "SayNew("..format("%q", strSay[1])..",1"..","..strSel..");";
	end;
	dostring(strMsg);
end;
-----------------------------------------------------------------------------------BMXIF--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function _bmxGetn(TBL)
	local __max = 0
	if type(TBL) == "table" then
		for i, _ in TBL do
		__max = __max + 1
		end
	end
	return __max
end

function bmxIf(DK)
	local __DKlen = _bmxGetn(DK)
	if DK == nil or __DKlen < 1 then return end
	local __IF = "if "
	__IF = __IF..DK[1][1].." then \n"..DK[1][2].."\n"
	if __DKlen > 1 then
		for i=2, _DKlen do
			__IF = __IF.."elseif "..DK[i][1].." then \n"..DK[i][2].."\n"
		end;
	end
	if _bmxGetn(DK[1]) == 3 then 
		__IF = __IF.."else "..DK[1][3].."\n"
	end
	__IF = __IF.." end\n"
	dostring(__IF);
end

----------------------------------------------------------------BmxSay--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function bmxSayNew(TH,CF)
	page_current = function(x) ret = (x == nil and GetTask(TASK_PAGE_CURRENT)) or  SetTask(TASK_PAGE_CURRENT,x) return ret end
	local __init_page_current = (page_current() == 0 and page_current(1)) or page_current()
	local __CF = (CF==nil and {"nd","lc","md","chon","ham"}) or CF -- config = {cauhoi,luachon, macdinh,caunoi,hamthehien}
	local _q,_c,_d,_m,_f = __CF[1],__CF[2],__CF[3],__CF[4],__CF[5]
	local PAGE_NEXT, PAGE_PREVIOUS, PAGE_EXIT = "Trang Tiep","Trang Truoc", "Thoat"
	local content = format("%q", TH[_q])
	local num_choice = _bmxGetn(TH[_c])
	local num_choice_default = _bmxGetn(TH[_d])
	local choice = {_c = {n=0}, _d = {n=0}}
	local page_num,choice_begin,choice_per_page,default_choice_per_page,last_choice_per_page,len_of_c,len_of_d,bf,bfc
	if num_choice > 0 then 
		for i = 1, num_choice do
			tinsert(choice["_c"], TH[_c][i][_m].."/__cf"..i)
			dostring("function __cf"..i.."() "..TH[_c][i][_f].."  page_current(1) end;")
		end
	end
	if num_choice_default > 0 then 
		for i = 1, num_choice_default do
			tinsert(choice["_d"], TH[_d][i][_m].."/__dcf"..i)
			dostring("function __dcf"..i.."() "..TH[_d][i][_f].." page_current(1) end;")
		end
	end
	len_of_c =  _bmxGetn(choice["_c"]) - 1
	len_of_d =  _bmxGetn(choice["_d"]) - 1 
	choice_per_page = ((len_of_c >= MAX_CHOICE - len_of_d) and (MAX_CHOICE - len_of_d)) or len_of_c
	default_choice_per_page = (len_of_d >= MAX_CHOICE and MAX_CHOICE) or len_of_d
	page_num = (len_of_d >= MAX_CHOICE and 1) or ceil(len_of_c/choice_per_page)
	choice_begin = choice_per_page * (page_current() - 1) + 1
	last_choice_per_page = len_of_c - choice_per_page * (page_num - 1)
	bf = {PAGE_NEXT.."("..(page_current()+1).." of "..page_num..")/__next", PAGE_PREVIOUS.."("..(page_current()-1).." of "..page_num..")/__back", PAGE_EXIT.."/__exit"} -- Built-in functions
	__next = function() page_current(page_current()+1) bmxSayNew(%TH,%CF) end
	__back = function()  page_current(page_current()-1) bmxSayNew(%TH,%CF) end
	__exit = function() page_current(1) end
	if (page_current() == 1) then
		bfc = {bf[1],bf[3]}	
	elseif (page_current() == page_num) then
		bfc = {bf[2],bf[3]}	
		choice_per_page = last_choice_per_page
	else
		bfc = bf
	end
	if (page_num == 1) then
		bfc = {bf[3]}
	end
	dostring("SayNew("..content..","..(choice_per_page+default_choice_per_page+_bmxGetn(bfc))..",".._bmxFStr(choice["_c"], choice_per_page, choice_begin)..",".._bmxFStr(choice["_d"], default_choice_per_page)..",".._bmxFStr(bfc)..");")
end

-------------------------------------------------------------------------------Ham mo rong - Make by DNTmaster-------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------Ham them ky nang va tiem nang : cach dung neu muon add them 100 ky nang 100 tiem nang thi ghi dong lenh AddAll(100,100) ----Ok
function AddAll(Xdnt,Ydnt)
if Xdnt == nil then Xdnt = 0 end
if Ydnt == nil then Ydnt = 0 end
AddProp(Xdnt)
AddMagicPoint(Ydnt)
Msg2Player("Ban nhan duoc "..Xdnt.." diem tiem nang");
Msg2Player("Ban nhan duoc "..Ydnt.." diem ky nang");
end;

---------------------------------------------------------------------------------Ham Add Item Tong Hop--------------------------------------------------------------------------------------------------------
-----------------------------About : day la ham chu yeu dung de add item Hoang Kim va Bach Kim da duoc test ok------------------------------------------------------------------------------------------------
--------------------Guide: Vat pham o day duoc load theo GoldItem.txt Cong thuc: AddGoldItem(nguhanh,iditem) iditem bang so hang trong GoldItem.txt-----------------------------------------------------------

Include("\\script\\lib\\mem.lua");
Include("\\Script\\lib\\string.lua");
Include("\\Script\\lib\\player.lua");

function ReadGoldItem()
local GoldItemData = openfile("Settings/item/GoldItem.txt", "r");
str_gold_data = read(GoldItemData,"*all")
local tab_gold = split(str_gold_data,"\n")
GoldDataCount = getn(tab_gold) - 1
id_gold = {}
id_gold_temp = {}
for i=1,GoldDataCount do
id_gold[i] =  split(tab_gold[i],"\t")
id_gold_temp[i] = id_gold[i]
end;
closefile(GoldItemData);
return id_gold_temp
end;

function LoadAllItem()
local data_gold = openfile("Settings/item/GoldItem.txt", "r");
str_data_gold = read(data_gold,"*all")
local tab_gold = split(str_data_gold,"\n")
numberitem = getn(tab_gold)
closefile(data_gold);
return numberitem;
end;


function AddGoldItem(num,id)
load_item = ReadGoldItem()
	if load_item == nil then 
	Msg2Player("Khong tim thay du lieu item")
	else
			tenitem = load_item[id][1]
			ItemGenre = load_item[id][2]
			DetailType = load_item[id][3]
			ParticularType = load_item[id][4]
			nLevel = load_item[id][5]
			raw = LoadAllItem() - 1
		if id > raw then
			Msg2Player("Khong tim thay du lieu item")
		elseif id <= raw then
			if num ~= nil then
			AddItem(ItemGenre,DetailType,ParticularType,nLevel,num,0,10)
			Msg2Player("Ban vua nhan duoc "..tenitem)
			end
		end
	end
end;
--																	  _________________
----------------------------------------------------------------------|_\\\\___| ////-| ---BIG--------------------------------------------------------------------------------------------------------------
-----------Add Item New Version 1.5 From JX49 Make by DNTmaster------///--/                BANG------------------
--------------------------------------------------------------------///


function ReadItem()
		local loaditemintext = openfile("Settings/item/BlueItem.txt", "r");
		str_data_item = read(loaditemintext,"*all")
		local alltabitem = split(str_data_item,"\n")
		Item_count = getn(alltabitem) - 1
		Load_version = {}
		Reload_version = {}
		for i=1,Item_count do
		Load_version[i] =  split(alltabitem[i],"\t")
		Reload_version[i] =  Load_version[i]
		end;
		closefile(loaditemintext);
		return Reload_version
end;

function LoadTextItem()
local data_blue = openfile("Settings/item/BlueItem.txt", "r");
str_data_blue = read(data_blue,"*all")
local tab_blue = split(str_data_blue,"\n")
numberofitem = getn(tab_blue)
closefile(data_blue);
return numberofitem;
end;


function AddBlueItem(num,id)
load_item = ReadItem()
tenitem = load_item[id][1]
ItemGenre = load_item[id][2]
DetailType = load_item[id][3]
ParticularType = load_item[id][4]
nLevel = load_item[id][12]
wwe = LoadTextItem() - 1
	if num >= 0 and id < wwe then
	AddItem(ItemGenre,DetailType,ParticularType,nLevel,num,0,10)
	Msg2Player("Ban nhan duoc "..tenitem)
	end
end;

-----------------------------------Load Event Item NEW VERSION-----------------------------------------------
function ReadEventItem()
		local event_data = openfile("\Settings\item\questkey.txt", "r");
		str_data_item = read(event_data,"*all")
		local tab_event_data = split(str_data_item,"\n")
		Item_count = getn(tab_event_data) - 1
		read_one = {}
		reread_one = {}
		for i=1,Item_count do
		read_one[i] =  split(tab_event_data[i],"\t")
		reread_one[i] =  read_one[i]
		end;
		closefile(event_data);
		return reread_one
end;


function EventItem(id)
item_load = ReadEventItem()
tenitem = item_load[id][1]
	AddEventItem(id)
	Msg2Player("Ban vua nhan duoc "..tenitem)
end;

-----------Load Boss Sat Thu

function ReadKiller()
local killer_data = openfile("Settings/killer.txt", "r");
str_killer_data = read(killer_data,"*all")
local tab_killer = split(str_killer_data,"\n")
killer_data_count = getn(tab_killer) - 1
is_killer = {}
is_killer_temp = {}
for i=1,killer_data_count do
is_killer[i] =  split(tab_killer[i],"\t")
is_killer_temp[i] = is_killer[i]
end;
closefile(killer_data);
return is_killer_temp
end;

---------------Load Mission Da Tau
function ReadDaTau()
local DT_DaTa = openfile("Settings/Task/TaskDT.txt", "r");
str_dt_data = read(DT_DaTa,"*all")
local tab_dt = split(str_dt_data,"\n")
dtcount = getn(tab_dt) - 1
id_dt = {}
id_dt_temp = {}
for i=1,dtcount do
id_dt[i] =  split(tab_dt[i],"\t")
id_dt_temp[i] = id_dt[i]
end;
closefile(DT_DaTa);
return id_dt_temp
end;

------------------------------------Load Chuyen Sinh
function ReadReset()
local Reset_Table = openfile("Settings/reset.txt", "r");
str_reset_table = read(Reset_Table,"*all")
local tab_reset_table = split(str_reset_table,"\n")
Reset_data_Count = getn(tab_reset_table) - 1
id_table1 = {}
id_table = {}
for i=1,Reset_data_Count do
id_table1[i] =  split(tab_reset_table[i],"\t")
id_table[i] =  id_table1[i]
end;
closefile(Reset_Table);
return id_table
end;

----------------------------------Load Level 200
function LoadLevelExp()
local Exp_Table = openfile("Settings/player/level_exp.txt", "r");
str_exp_table = read(Exp_Table,"*all")
local tab_exp_table = split(str_exp_table,"\n")
exp_data_count = getn(tab_exp_table) - 1
xp_table1 = {}
xp_table2 = {}
for i=1,exp_data_count do
xp_table1[i] =  split(tab_exp_table[i],"\t")
xp_table2[i] =  xp_table1[i]
end;
closefile(Exp_Table);
return xp_table2
end;
-------------------------------------------------------------------------------Kiem Tra So Nguoi Online--------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------Ham nay dung kiem tra co bao nhieu nguoi dang Online tien dung cho ai mo Online
function Online()
Msg2Player("Hien dang co :"..GetPlayerCount().." dang online");
end;



------------------------------------------------------------------------------Ham lay Tien--------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------Cai nay cung giong cai them tien cu chang co j dang noi
function Tien(A)
Earn(A)
Msg2Player("Ban nhan duoc "..A.." luong.")
end;

---------------------------------------------Phan tich thanh tien van-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Van(money)
if money == nil then
return 0
else
money = money*10000
return money
end
end;
------------------------------------------------------------------------------Tay diem Tiem Nang Ky Nang---------------------------------------------------------------------------------------------------------------------------------------------------

function TayDiem()
strg = GetStrg()
dex = GetDex()
vit = GetVit()
eng = GetEng()
sum = strg + dex + vit + eng - 100
AddProp(sum)
SucManh = 	{35,20,25,30,20}
ThanPhap = 	{25,35,25,20,15}
SinhLuc = 	{25,20,25,30,25}
NoiLuc = 	{15,25,25,20,40}
NguHanh = GetSeries() + 1
ResetBaseAttrib(0,SucManh[NguHanh]);
ResetBaseAttrib(1,ThanPhap[NguHanh]);
ResetBaseAttrib(2,SinhLuc[NguHanh]);
ResetBaseAttrib(3,NoiLuc[NguHanh]);
end;

function faction()
	if GetFaction() == "Thieu Lam Phai" then
	return 1
	elseif GetFaction() == "Thien Vuong Bang" then
	return 2
	elseif GetFaction() == "Nga My Phai" then
	return 3
	elseif GetFaction() == "Thuy Yen Mon" then
	return 4
	elseif GetFaction() == "Duong Mon" then
	return 5
	elseif GetFaction() == "Ngu Doc Giao" then
	return 6
	elseif GetFaction() == "Cai Bang" then
	return 7
	elseif GetFaction() == "Thien Nhan Giao" then
	return 8
	elseif GetFaction() == "Vo Dang Phai" then
	return 9
	elseif GetFaction() == "Con Lon Phai" then
	return 10
	end
end;

function TaySkill()
	if faction() == 1 then
	a = HaveMagic(318)
	b = HaveMagic(319)
	c = HaveMagic(321)
	d = HaveMagic(419)
	e = HaveMagic(256)
	elseif faction() == 2 then
	a = HaveMagic(322)
	b = HaveMagic(323)
	c = HaveMagic(325)
	d = HaveMagic(420)
	e = HaveMagic(257)
	elseif faction() == 3 then
	a = HaveMagic(328)
	b = HaveMagic(380)
	d = HaveMagic(423)
	c = 0
	e = HaveMagic(260)
	elseif faction() == 4 then
	a = HaveMagic(336)
	b = HaveMagic(337)
	d = HaveMagic(424)
	c = 0
	e = HaveMagic(261)
	elseif faction() == 5 then
	a = HaveMagic(339)
	b = HaveMagic(302)
	c = HaveMagic(342)
	d = HaveMagic(421)
	e = HaveMagic(258)
	elseif faction() == 6 then
	a = HaveMagic(353)
	b = HaveMagic(355)
	d = HaveMagic(422)
	c = 0
	e = HaveMagic(259)
	elseif faction() == 7 then
	a = HaveMagic(357)
	b = HaveMagic(359)
	d = HaveMagic(425)
	c = 0
	e = HaveMagic(262)
	elseif faction() == 8 then
	a = HaveMagic(361)
	b = HaveMagic(362)
	d = HaveMagic(426)
	c = 0
	e = HaveMagic(263)
	elseif faction() == 9 then
	a = HaveMagic(365)
	b = HaveMagic(368)
	c = 0
	d = HaveMagic(427)
	e = HaveMagic(265)
	elseif faction() == 10 then
	a = HaveMagic(372)
	b = HaveMagic(375)
	c = 0
	d = HaveMagic(428)
	e = HaveMagic(264)
	end
	n = RollbackSkill()
	x = 0
	i = HaveMagic(210)
	j = HaveMagic(284)
	if (i ~= -1) then x = x + i end					
	if (j ~= -1) then x = x + j end
	if (a ~= -1) then x = x + a end
	if (b ~= -1) then x = x + b end
	if (c ~= -1) then x = x + c end
	if (d ~= -1) then x = x + d end
	if (e ~= -1) then x = x + e end
	rollback_point = n - x
	if (rollback_point + GetMagicPoint() < 0) then
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210,i) end
	if (j ~= -1) then AddMagic(284,j) end
	if faction() == 1 then
	if a ~= -1 then AddMagic(318,a) end
	if b ~= -1 then AddMagic(319,b) end
	if c ~= -1 then AddMagic(321,c) end
	if e ~= -1 then AddMagic(256,e) end
	if d ~= -1 then AddMagic(419,d) end
	elseif faction() == 2 then
	if a ~= -1 then AddMagic(322,a) end
	if b ~= -1 then AddMagic(323,b) end
	if c ~= -1 then AddMagic(325,c) end
	if e ~= -1 then AddMagic(257,e) end
	if d ~= -1 then AddMagic(420,d) end
	elseif faction() == 3 then
	if a ~= -1 then AddMagic(328,a) end
	if b ~= -1 then AddMagic(380,b) end
	if e ~= -1 then AddMagic(260,e) end
	if d ~= -1 then AddMagic(423,d) end
	elseif faction() == 4 then
	if a ~= -1 then AddMagic(336,a) end
	if b ~= -1 then AddMagic(337,b) end
	if e ~= -1 then AddMagic(261,e) end
	if d ~= -1 then AddMagic(424,d) end
	elseif faction() == 5 then
	if a ~= -1 then AddMagic(339,a) end
	if b ~= -1 then AddMagic(302,b) end
	if c ~= -1 then AddMagic(342,c) end
	if e ~= -1 then AddMagic(258,e) end
	if d ~= -1 then AddMagic(421,d) end
	elseif faction() == 6 then
	if a ~= -1 then AddMagic(353,a) end
	if b ~= -1 then AddMagic(355,b) end
	if e ~= -1 then AddMagic(259,e) end
	if d ~= -1 then AddMagic(422,d) end
	elseif faction() == 7 then
	if a ~= -1 then AddMagic(357,a) end
	if b ~= -1 then AddMagic(359,b) end
	if e ~= -1 then AddMagic(262,e) end
	if d ~= -1 then AddMagic(425,d) end
	elseif faction() == 8 then
	if a ~= -1 then AddMagic(361,a) end
	if b ~= -1 then AddMagic(362,b) end
	if e ~= -1 then AddMagic(263,e) end
	if d ~= -1 then AddMagic(426,d) end
	elseif faction() == 9 then
	if a ~= -1 then AddMagic(365,a) end
	if b ~= -1 then AddMagic(368,b) end
	if e ~= -1 then AddMagic(265,e) end
	if d ~= -1 then AddMagic(427,d) end
	elseif faction() == 10 then
	if a ~= -1 then AddMagic(372,a) end
	if b ~= -1 then AddMagic(375,b) end
	if e ~= -1 then AddMagic(264,e) end
	if d ~= -1 then AddMagic(428,d) end
	end
end;

--================================Ham Tay diem kinh nghiem am======================================================================================================================================================================================================================================================================
function TayKinhNghiemAm()
if GetExp() < 0 then
GetExp = GetExp()*-1
AddOwnExp(GetExp)
Msg2Player("Ban da duoc giai tru duoc diem Kinh Nghiem am..")
else
Msg2Player("Ban khong co diem Kinh Nghiem am..")
end
end;
--=================================================================================================================================================================================================================================================================================================================================

function GetMinAndSec(nSec)
nRestMin = floor(nSec / 60);
nRestSec = mod(nSec,60)
return nRestMin, nRestSec;
end;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThongBao(Msg)
if ( Msg ~= nil ) then
AddGlobalNews(Msg,1)
else
Msg2GM("Khong the thuc hien..")
end
end;

function colorS(number)
	if number == nil then
		style = GetSeries()
			if style == 0 then
				return "metal"
			elseif style == 1 then
				return "wood"
			elseif style == 2 then
				return "water"
			elseif style == 3 then
				return "fire"
			elseif style == 4 then
				return "earth"
			end;
	elseif number == 1 then
		return "cyan"
	elseif number == 2 then
		return "blue"
	elseif number == 3 then
		return "yellow"
	elseif number == 4 then
		return "pink"
	elseif number == 5 then
		return "red"
	elseif number == 6 then
		return "green"
	end;
end;

function CheckTT(id)
	if id == 1 then
		if GetItemCount(8) >= 1 and GetItemCount(9) >= 1 and GetItemCount(10) >= 1 then
		DelItem(8)
		DelItem(9)
		DelItem(10)
		return 1
		end
	elseif id == 2 then
		if GetItemCount(11) >= 3 then
		DelItem(11)
		DelItem(11)
		DelItem(11)
		return 1
		end
	elseif id == 3 then
		if GetItemCount(8) >= 1 and GetItemCount(9) >= 1 and GetItemCount(10) >= 1 and GetItemCount(11) >= 3 then
		DelItem(8)
		DelItem(9)
		DelItem(10)
		DelItem(11)
		DelItem(11)
		DelItem(11)
		return 1
		end
	end
end;

function Play_Time(idmaps,idmis,idtask,times)
if idmaps == nil and idmis == nil and idtask == nil and times == nil then
return
end;
curidx = SubWorld
idx = SubWorldID2Idx(idmaps);
if idx == -1 then
Msg2Player("Khong the thuc hien vi Maps chua mo")
return
end
SubWorld = idx;
OpenMission(idmis);
StartMissionTimer(idmis,idtask,times*18);
end;

function ClearTask(idtask,tyle)
if ( tyle == 0 or tyle == nil ) then
	SetTask(idtask,0)
elseif tyle == 1 then
	SetTaskTemp(idtask,tyle*0)
end
end;

function AddPhucDuyen(diem)
	if diem > 0 then
	SetTask(TaskPhucDuyen,GetTask(TaskPhucDuyen)+diem)
	Msg2Player("Phuc Duyen: "..GetTask(TaskPhucDuyen).." diem")
	elseif diem < 0 then
		if GetTask(TaskPhucDuyen) >= diem then
		SetTask(TaskPhucDuyen,GetTask(TaskPhucDuyen)-diem)
		Msg2Player("Phuc Duyen: "..GetTask(TaskPhucDuyen).." diem")
		else
		Msg2Player("Diem Phuc Duyen khong du de thuc hien.")
		end
	elseif diem == nil then
	ph = GetTask(TaskPhucDuyen)
	--Msg2Player("Phuc Duyen: "..GetTask(TaskPhucDuyen).." diem")
	return ph
	end
end;

function AddDaoHanh(diem,iz)
	if diem ~= "" then
		if iz == nil or iz == 0 then
			SetTask(TaskDaoHanh,GetTask(TaskDaoHanh)+diem)
			Msg2Player("Dao Hanh: "..GetTask(TaskDaoHanh).." diem")
		elseif iz == 1 then
			if GetTask(TaskDaoHanh) >= diem then
				SetTask(TaskDaoHanh,GetTask(TaskDaoHanh)-diem)
				Msg2Player("Dao Hanh: "..GetTask(TaskDaoHanh).." diem")
			else
				Msg2Player("Diem Dao Hanh khong du de thuc hien.")
			end
		end
	else
	dh = GetTask(TaskDaoHanh)
	--Msg2Player("Dao Hanh: "..GetTask(TaskDaoHanh).." diem")
	return dh
	end
end;

function AddDanhVong(diem)
	if diem ~= nil then
	AddRepute(diem)
	Msg2Player("Diem Danh Vong : "..GetRepute())
	else
	return GetRepute()
	end
end;

function DoiNgayThang(namthangngay)
	if namthangngay > 2000000 then
	nam = floor(namthangngay/10000)
	thang = floor((namthangngay - (nam*10000))/100)
	ngay = namthangngay - (nam*10000 + thang*100)
	return ngay,thang,nam
	else
	thang = floor(namthangngay/100)
	ngay = namthangngay - (thang*100)
	return ngay,thang
	end
end;

function MZ(id)
	if id < 100 then
	return 0,0,id
	elseif id >= 100 and id < 10000 then
	v = 0
	b = floor(id/100)
	d = id - b*100
	return v,b,d
	elseif id >= 10000 then
	v = floor(id/10000)
	b = floor((id - v*10000)/100)
	d = id - (v*10000 +b*100)
	return v,b,d
	end
end;


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


---================================================================================================================================================================================================================================================================================================================================================
-------------------------------------------------------------------------------Het Ham Mo Rong Cua rockbuon------------------------------------------------------------------------------------------------------------------------------------------------------------
function OnExit()
end;

function Exit()
end;

function IPWrite()
local IPData = openfile("Data/IP.txt", "a");
write(IPData, date("%y-%m-%d_%H:%M:%S").."\t["..GetInfo().."]\t["..GetName().."]\n");
closefile(IPData);
end;

function SaveItem(chuviet)
local IPData1 = openfile("Data/ItemGet.txt", "a");
write(IPData1, date("%y-%m-%d_%H:%M:%S").."\t"..chuviet.."\n");
closefile(IPData1);
end;

function SaveInfo(chuviet1)
local IPData2 = openfile("Data/other.txt", "a");
write(IPData2, date("%y-%m-%d_%H:%M:%S").."\t"..chuviet1.."\n");
closefile(IPData2);
end;
function AddTrapEx5(nMap, nBX, nBY, szScript)
	mapindex = SubWorldID2Idx(nMap)
	local nX,nY = nBX,nBY;
	AddTrap(mapindex, nX, nY, szScript)
end;


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

TAB_MAPNAME = { 
	{8, "Phôc Ng­u S¬n §«ng"},
	{53, "Ba L¨ng HuyÖn"},
	{15, "T­¬ng D­¬ng"},
};


--NEU AI MUON LAM 1 HAM THU GON NAO THI LIEN HE VOI gameoffline.net................................................
--LIEN HE : thanhtung245 DTDD : 0974 59 8668
