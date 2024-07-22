----------------------------------------------------------------------------------------Variable Define-----------------------------------------------------------------------------------------------------------
----Nhiem vu-----
Task_TL=1
Task_TV=2
Task_DM=3
Task_ND=4
Task_NM=5
Task_TY=6
Task_CB=7
Task_TN=8
Task_VD=9
Task_CL=10
Task_CT_CP=11
Task_CT_TL=12
Task_CT_TP=13
Task_PT_CP=14
Task_PT_TL=15
Task_PT_TP=16
------Phan Thuong-----------
phan_thuong_ct=17
phan_thuong_pt=18
INIT_TASK_NEWTASK = 1
INIT_TASK_BOSS = 1
INIT_TASK_GOLDENBOSS = 1
INIT_EVENT_EXP = 1
INIT_EVENT_GIFT = 1
INIT_EVENT_FESTIVAL = 1
Task_String={"kinh nghiem","danh vong","Tich luy Tong Kim"}
skillMap ={
		tt={
			{210,1,3}
		},
		sl={	
			{"Hang Long Bat Vu",14},
			{"Kim Cang Phuc Ma",10},
			{"Thieu Lam Quyen Phap",8},
			{"Thieu Lam Con phap",4},
			{"Thieu Lam Dao phap",6},
			{"Bat dong Minh Vuong ",15},
			{"La Han Tran",16},
			{"Su Tu Hong ",20},
			{"Long Trao Ho Trao",271},
			{"Hoanh Tao Luc Hop",11},
			{"Ma Ha Vo Luong",19},
			{"Nhu Lai Thien Diep ",273},
			{"Dich Can Kinh",21},
			{"Dat Ma Do Giang",318},
			{"Hoanh Tao Luc Hop",319},			
			{"Vo Tuong Tram ",321},
			{"Dai Thua Nhu Lai Chu",256},
		},
		tw={
			{"Kinh Loi Tram ",34},
			{"Hoi Phong Lac Nhan",30},
			{"Tram Long quyet",29},
			{"Thien Vuong  Chuy Phap",26},
			{"Thien Vuong  Thuong phap",23},
			{"Thien Vuong  Dao phap",24},
			{"Tinh Tam Quyet",33},
			{"Bat Phong Tram",37},
			{"Duong Quan Tam Diep",35},
			{"Hang Van Quyet",31},
			{"Doan Hon Thich",40},
			{"Kim Chung Trao",42},
			{"Thien Vuong Chien y",36},
			{"Vo Tam Tram",32},
			{"Huyet Chien Bat Phuong",41},
			{"Thua Long Quyet ",324},
			{"Pha Thien Tram ",322},
			{"Truy Tinh Truc Nguyet ",323},
			{"Truy Phong Quyet ",325},
			{"Dao Hu Thien",257},
		},
		tm={
			{"Tich Lich don",45},
			{"Duong Mon am khi ",43},
			{"Dia Diem Hoa",347},
			{"Doc Thich Cot",303},
			{"Truy Tam Tien",50},			
			{"Man Thien Hoa Vu",54},
			{"Doat Hon Tieu",47},
			{"Xuyen Tam Thich",343},
			{"Han Bang Thich",345},
			{"Loi Kich Thuat",349},			
			{"Tam Nhan ",48},
			{"Tieu Ly Phi Dao",249},
			{"Thien La Dia Vong",58},
			{"Tan Hoa Tieu ",341},
			{"Nhiep Hon Nguyet anh",339},
			{"Bao Vu Le Hoa",302},
			{"Cuu Cung Phi Tinh",342},
			{"Loan Hoan Kich",351},
			{"Me Anh Tung",258},
		},
		wu={	{"Doc Sa chuong",63},
			{"Huyet Dao Doc Sat",65},
			{"Ngu Doc Chuong Phap",62},
			{"Ngu Doc Dao phap",60},
			{"Cuu Thien Cuong Loi ",67},
			{"Xich Diem Thuc Thien",70},
			{"Tap Nan Duoc Kinh",66},
			{"U Minh Kho Lau",68},
			{"Bach Doc Xuyen Tam ",384},
			{"Bang Lam Huyen Tinh",64},
			{"Vo Hinh Doc",69},
			{"Xuyen Y Pha Giap ",356},
			{"Van Doc Thuc Tam",73},
			{"Xuyen Tam Doc Thich",72},
			{"Ngu Doc Ky Kinh",75},
			{"Thien Cuong Dia Sat",71},
			{"Chu Cap Thanh Minh",74},
			{"Am Phong Thuc Cot ",353},
			{"Huyen Am Tram ",355},
			{"Doan Can Hu Cot ",390},
			{"Hap Tinh Yem",259},
		},
		em={
			{"Nhat Diep Tri Thu",85},
			{"Phieu Tuyet Xuyen Van ",80},
			{"Nga Mi Kiem phap",77},
			{"Nga Mi Chuong phap",79},
			{"Tu Hang Pho Do",93},
			{"Thoi Song Vong Nguyet",385},
			{"Tu Tuong Dong Quy",82},
			{"Phat Tam Tu Huu",92},
			{"Phat Phap Vo Bien ",252},
			{"Bat Diet Bat Tuyet",88},
			{"Phat Quang Pho Chieu",91},
			{"Thanh Am Phan Xuong",282},
			{"Tam Nga Te Tuyet ",328},
			{"Phong Suong Toai anh ",380},
			{"Pho Do Chung Sinh ",322},
			{"Be Nguyet Phat Tran",260},
		},
		cy={
			{"Phong Hoa Tuyet Nguyet",99},
			{"Phong Quyen Tan Tuyet",102},
			{"Thuy Yen Dao phap",95},
			{"Thuy Yen Song Dao",97},
			{"Bang Tam Trai anh",269},
			{"Vu Da Le Hoa",105},
			{"Phu Van Tan Tuyet",113},
			{"Ho The Han Bang ",100},
			{"Muc Da Luu Tinh",109},
			{"Bang Cot Tuyet Tam",114},
			{"Muc Da Luu Tinh",108},
			{"Bich Hai Trieu Sinh",111},
			{"Bang Tung Vo anh ",336},
			{"Bang Tam Tien Tu  ",337},
			{"Ngu Tuyet An",261},
		},
		gb={
			{"Kien Nhan Than Thu ",122},
			{"Dien Mon Thac Bat",119},
			{"Cai Bang Chuong Phap",116},
			{"Cai Bang Bong Phap",115},
			{"Hoa Hiem Vi Di",129},
			{"Giang Long Chuong ",274},
			{"Da Cau bong",124},
			{"Hoat Bat Luu Thu ",277},
			{"Khang Long Huu Hoi",128},
			{"Bong Da ac Cau",125},
			{"Tuy Diep Cuong Vu ",130},				
			{"Tieu Dieu Cong ",360},
			{"Phi Long Tai Thien ",357},
			{"Thien Ha Vo Cau ",359},
			{"Hon Thien Khi Cong",262},
		},
		tr={	
			{"Tan Duong Nhu Huyet",135},
			{"Don Chi Liet Diem",145},
			{"Thien Nhan  Mau phap",132},
			{"Thien Nhan  Dao phap",131},
			{"Hoa Lien Phan Hoa",136},
			{"ao anh Phi Ho ",137},
			{"Liet Hoa Tinh Thien ",141},
			{"Thoi son  Dien Hai",138},
			{"Phi Hong Vo Tich ",140},
			{"Bi To Thanh Phong ",364},
			{"Lich Ma Doat Hon",143},
			{"Thien Ma Giai The ",150},
			{"Thau Thien Hoan Nhat",142},
			{"Ma Diem That Sat",148},
			{"Van Long Kich",361},
			{"Nhiep Hon Loan Tam ",391},
			{"Thien Ngoai Luu Tinh",362},
			{"Ma Am Phe Phach",263},
		},
		wd={
			{"Vo Nga Vo Kiem  ",165},
			{"Toa Vong Vo Nga ",157},
			{"Thai Cuc Than Cong ",166},
			{"Nhan Kiem Hop Nhat  ",368},
			{"Thien Dia Vo Cuc ",365},
			{"Xuat U Bat Nhiem",264},
		},
		kl={
			{"Ngu Loi Chanh Phap",182},
			{"Thien Thanh Dia Troc",173},
			{"Tuy Tien Ta Cot",394},
			{"Suong Ngao Con Lon ",275},
			{"Ngao Tuyet Tieu Phong ",372},
			{"Loi dong Cuu Thien ",375},
			{"Luong Nghi Chan Khi",265},
		}
	}
	
-------------------------------------------------------------Item-------------------------------------------------------------------------------------------------------------------------------------------------
function AddGoldItem(Tdnt,Ydnt,Ldnt)
NH = random(0,4)
if ( Ydnt <= 6 ) then
AddItem(0,0,Ydnt,Ldnt,NH,0,10)
else
if (Ldnt == nil and Tdnt > 0) then
AddItem(0,Tdnt,Ydnt,10,NH,0,10)
end
end
end;
----------------------------------------------------------------------------------------Common Function-----------------------------------------------------------------------------------------------------------
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
			SayNew("Quy Khach khong co du "..nPrice.." luong", 0)
		end
end;
---------------------------------------------------------------------------------------Menpai and Skill-----------------------------------------------------------------------------------------------------------
function AddSkill(sId,sLevel,sReqLevel,sMsgEnable,sMessage,sMsgType)
 	if(sReqLevel~=nil) then
   		if (GetLevel() >= sReqLevel) then
			AddMagic(sId, sLevel);
			if(sMsgEnable==1) then
    				MsgEx(sMessage,sMsgType)
			end
		else
			MsgEx("Ban phai dat cap "..sReqLevel.." moi co the hoc duoc ki nang nay",sMsgType)
		end
	end
	return
end;

function SetMenpai(sId,sReqLevel,sGo,sRank,sMessage)
	menpai={{"Phai Thieu Lam",1,1,"yellow"},{"Thien Vuong Bang",1,3,"Green"},{"Duong Mon",2,3,"Green"},{"Ngu Doc Giao",2,2,"pink"},{"Phai Nga My",3,1,"yellow"},{"Thuy Yen Mon",3,3,"Green"},{"Cai Bang",4,1,"Yellow"},{"Thien Nhan Giao",4,2,"pink"},{"Phai Vo Dang",5,1,"Yellow"},{"Phai Con Lon",5,3,"Green"}}
	player_Faction = GetFaction()
	player_Series = GetSeries()+1
	mSeries = {{"Kim","metal",1,2},{"Moc","wood",3,4},{"Thuy","water",5,6},{"Hoa","fire",7,8},{"Tho","earth",9,10}}
 	if(sReqLevel~=nil) then
   		if (GetLevel() >= sReqLevel) then
			if  (player_Faction ~= "") then	
				if (player_Faction == menpai[sId][1]) then		
					MsgEx("Ban da la de tu cua <color="..menpai[sId][4]..">"..menpai[sId][1].."<color>.\nHay ra suc dong gop cho mon phai!",1)
				else
					MsgEx("Ban da la de tu cua <color=red>"..player_Faction.."<color>.\nBan ban khong the gia nhap mon phai khac!",1)
				end;
			else
				if (sGo ==1) then
					if  (player_Series == menpai[sId][2]) then	
						SetFaction(menpai[sId][1])      			
						SetCamp(menpai[sId][3])
						SetCurCamp(menpai[sId][3])
						SetRank(sRank)
						MsgEx("Chuc mung ban da gia nhap <color="..menpai[sId][4]..">"..menpai[sId][1].."<color>.\nTu nay ban co the vi <color="..menpai[sId][4]..">"..menpai[sId][1].."<color> hanh hiep!\n"..sMessage,1)
					else
						MsgEx("The chat cua ban thuoc he <color="..mSeries[player_Series][2]..">"..mSeries[player_Series][1].."<color>.\nBan khong thich hop gia nhap <color="..menpai[sId][4]..">"..menpai[sId][1].."<color>.\nHay gia nhap <color="..menpai[mSeries[player_Series][3]][4]..">"..menpai[mSeries[player_Series][3]][1].."<color> hoac <color="..menpai[mSeries[player_Series][4]][4]..">"..menpai[mSeries[player_Series][4]][1].."<color>.",1)
					end
				end
			end
		else
			MsgEx("Ban phai dat cap "..sReqLevel.." moi co the gia nhap <color="..menpai[sId][4]..">"..menpai[sId][1].."<color>.",1)
		end
	end
	return
end;
function AddMenpaiSkills()
	menpai={{"Phai Thieu Lam","sl"},{"Thien Vuong Bang","tw"},{"Duong Mon","tm"},{"Ngu Doc Giao","wu"},{"Phai Nga My","em"},{"Thuy Yen Mon","cy"},{"Cai Bang","gb"},{"Thien Nhan Giao","tr"},{"Phai Vo Dang","wd"},{"Phai Con Lon","kl"}}
	player_Faction = GetFaction()
	level_list={1,10,20,30,40,50,60,90}
	if  (player_Faction ~= "") then	
		for i=1,getn(menpai) do
			if (player_Faction == menpai[i][1]) then	
				for j=1,getn(skillMap[menpai[i][2]]) do
					AddMagic(skillMap[menpai[i][2]][j][2])
				end
			end
		end
	end
	return
end
----------------------------------------------------------------------------------------NewTask-Da tau-----------------------------------------------------------------------------------------------------------
function DTTask(Type,Act)
	local Task_Type=0
	local Task_Target=0
	local LevelExp=0
	Task_Num = GetTask(251)
	Working = GetTask(250)
	if (Type==1) then
		if (Act==0) then	--Nhan nhiem vu
			if (Working==1) then
				SayNew("Ban phai hoan thanh nhiem vu duoc giao thi moi co the nhan nhiem vu moi.",0)
			else
				if (GetLevel()>40) then
					Task_Type = random(1,3)
					Task_Target,LevelExp = GenTask(GetLevel(),Task_Type)
				else
					Task_Type = random(2,3)
					Task_Target,LevelExp = GenTask(GetLevel(),Task_Type)
				end
			str_task = "Day la nhiem vu thu <color=red>"..(GetTask(251)+1).."<color>. Nguoi hay di nang diem <color=red>"..Task_String[Task_Type].."<color> len <color=yellow>"..Task_Target.."<color> diem.";
			main_task_type=Task_Type
			main_task_target=Task_Target
			if (Task_Type==1) then
				main_task_start=GetExp()
			elseif (Task_Type==2) then
				main_task_start=GetRepute()
			elseif (Task_Type==3) then
				main_task_start=GetTask(TaskTongKim)
			end
			main_startlevel=GetLevel()
			main_levelexp=LevelExp
			end

		end
		if (Act==1) then	--Hoan thanh nhiem vu
			return
		end
		if (Act==2) then	--Huy bo nhiem vu
			return
		end
		if (Act==3) then	--Xem thong tin nhan vat
			return
		end	
	end
end;

function GetDTTask()
	local Working = GetTask(250)
	local Task_Num = GetTask(251)
	local Task_Type = GetTask(252)
	local Task_Start = GetTask(253)
	local Task_Target = GetTask(254)
	local StartLevel = GetTask(255)
	local LevelExp = GetTask(256)
	local CurStatus, nNeedNum
		if (Task_Type==1) then
			CurStatus = GetExp()
			if ((GetLevel()-StartLevel)>1) then
				nNeedNum = 0
			else
				if ((GetLevel()-StartLevel)==1) then
					nNeedNum = (Task_Start+Task_Target-LevelExp)-CurStatus
				else
					nNeedNum = (Task_Start+Task_Target)-CurStatus
				end
			end
			if nNeedNum<0 then nNeedNum=0; end;
		elseif (Task_Type==2) then
			CurStatus = GetRepute()
			nNeedNum = (Task_Target+Task_Start)-CurStatus
			if nNeedNum<0 then nNeedNum=0; end;
		elseif (Task_Type==93) then
			CurStatus = GetPK()
			if ((Task_Target+Task_Start)>10) then
				nNeedNum = 10 - CurStatus
			else
				nNeedNum = (Task_Target+Task_Start)-CurStatus
			end	
			if nNeedNum<0 then nNeedNum=0; end;
		elseif (Task_Type==3) then
			CurStatus = GetTask(TaskTongKim)
			nNeedNum = (Task_Target+Task_Start)-CurStatus
			if nNeedNum<0 then nNeedNum=0; end;
		end
	StrStatus="Ban dang thuc hien nhiem vu tang diem <color=red>"..Task_String[Task_Type].."<color>.So diem <color=red>"..Task_String[Task_Type].."<color> can phai nang la: <color=yellow>"..Task_Target.."<color>, so diem con lai cua ban la <color=yellow>"..nNeedNum.."<color>.Hay hoan thanh roi den tim ta."
	if (nNeedNum==0) then
		CheckFinish=1
	else
		CheckFinish=0
	end
	return 	Working, Task_Num, Task_Type, Task_Start, Task_Target, StartLevel, LevelExp , CurStatus, nNeedNum;
end;

function SetDTTask(Task_Type,Task_Start,Task_Target,StartLevel,LevelExp)
	local Working = GetTask(250)
	local Task_Num = GetTask(251)
	if (Working==1) then 
		SayNew("Ban chua hoan thanh nhiem vu truoc do nen khong the nhan nhiem vu moi",0)
	else
		SetTask(250,1)
		SetTask(251,Task_Num+1)
		SetTask(252,Task_Type)
		SetTask(253,Task_Start)
		SetTask(254,Task_Target)
		SetTask(255,StartLevel)
		SetTask(256,LevelExp)
	end
end;
function FinishDTTask()
	local Working = GetTask(250)
	local Task_Num = GetTask(251)
		SetTask(250,0)
		SetTask(251,Task_Num)
		SetTask(252,0)
		SetTask(253,0)
		SetTask(254,0)
		SetTask(255,0)
		SetTask(256,0)
end;
function ClearDTTask()
	local Working = GetTask(250)
	local Task_Num = GetTask(251)
		SetTask(250,0)
		SetTask(251,Task_Num-1)
		SetTask(252,0)
		SetTask(253,0)
		SetTask(254,0)
		SetTask(255,0)
		SetTask(256,0)
end;
function GenTask(nLevel,nType)
	TaskBin = {}
	local level_list={10,20,30,40,50,60,70,80,90,100}
	local level_exp={{40,10000},{50,20000},{60,30000},{70,40000},{80,50000},{90,60000},{100,70000},{110,80000},{120,100000}}
	local UpGround_Tab ={
							{1,1,5000},
							{2,1,15000},
							{3,1,50000},
							{4,1,100000},
							{5,1,200000},
							{6,1,500000},
							{7,1,1000000},
							{8,1,1500000},
							{9,1,2000000},
							{10,1,3000000},
							{11,1,4000000},
							{12,1,5000000},
							{13,2,1},
							{14,2,5},
							{15,2,10},
							{16,2,20},
							{17,2,30},
							{18,2,40},
							{19,2,50},
							{20,2,100},
							{21,3,1000},
							{22,3,2000},
							{23,3,5000},
							{24,3,7000},
							{25,3,10000},
							{26,3,12000},
							{27,3,15000}
						}
	if (nLevel <= 40) then
		TaskBin[1] = random(13,16)
		TaskBin[2] = random(21,25)
		nTarget = UpGround_Tab[TaskBin[nType-1]][3]
		nLevelExp = 0
	elseif (nLevel < 50) then	
		TaskBin[1] = random(1,6)
		TaskBin[2] = random(13,16)
		TaskBin[3] = random(21,27)
		TaskBin[4] = random(24,27)
		nTarget = UpGround_Tab[TaskBin[nType]][3]
		nLevelExp = level_exp[1][2]
	elseif (nLevel < 60) then	
		TaskBin[1] = random(1,6)
		TaskBin[2] = random(13,16)
		TaskBin[3] = random(21,27)
		TaskBin[4] = random(24,27)
		nTarget = UpGround_Tab[TaskBin[nType]][3]
		nLevelExp = level_exp[2][2]
	elseif (nLevel < 70) then	
		TaskBin[1] = random(1,6)
		TaskBin[2] = random(13,16)
		TaskBin[3] = random(21,27)
		TaskBin[4] = random(24,27)
		nTarget = UpGround_Tab[TaskBin[nType]][3]
		nLevelExp = level_exp[3][2]
	elseif (nLevel < 80) then	
		TaskBin[1] = random(1,7)
		TaskBin[2] = random(13,17)
		TaskBin[3] = random(21,25)
		TaskBin[4] = random(26,27)
		nTarget = UpGround_Tab[TaskBin[nType]][3]
		nLevelExp = level_exp[4][2]
	elseif (nLevel < 90) then	
		TaskBin[1] = random(1,6)
		TaskBin[2] = random(13,16)
		TaskBin[3] = random(21,25)
		TaskBin[4] = random(23,27)
		nTarget = UpGround_Tab[TaskBin[nType]][3]
		nLevelExp = level_exp[5][2]
	elseif (nLevel < 100) then	
		TaskBin[1] = random(1,12)
		TaskBin[2] = random(13,20)
		TaskBin[3] = random(21,25)
		TaskBin[4] = random(21,27)
		nTarget = UpGround_Tab[TaskBin[nType]][3]
		nLevelExp = level_exp[6][2]
	elseif (nLevel < 110) then	
		TaskBin[1] = random(1,12)
		TaskBin[2] = random(13,20)
		TaskBin[3] = random(21,24)
		TaskBin[4] = random(21,27)
		nTarget = UpGround_Tab[TaskBin[nType]][3]
		nLevelExp = level_exp[7][2]
	elseif (nLevel < 120) then	
		TaskBin[1] = random(1,12)
		TaskBin[2] = random(13,20)
		TaskBin[3] = random(21,24)
		TaskBin[4] = random(24,26)
		nTarget = UpGround_Tab[TaskBin[nType]][3]
		nLevelExp = level_exp[8][2]
	elseif (nLevel >= 120) then	
		TaskBin[1] = random(1,12)
		TaskBin[2] = random(13,20)
		TaskBin[3] = random(21,24)
		TaskBin[4] = random(24,26)
		nTarget = UpGround_Tab[TaskBin[nType]][3]
		nLevelExp = level_exp[9][2]
	end
	return nTarget,nLevelExp;
end;
function GenRewardItem()
	local baovat = {{3,0},{4,0},{4,1},{9,0},{9,1}}
	local vukhi = {{0,0},{0,1},{0,2},{0,3},{0,4},{0,5},{1,0},{1,1},{1,2}}
	local trangbi = {{8,0},{8,1},{5,0},{5,1},{5,2},{5,3},{6,0},{6,1},{1,2}}
	local nItemClass = 0
	local nDetailType = 0
	local nParticualrType = 0
	local nLevel = 0
	local nSeries = random(0,4)
	local  nLuck = 0
	local  nItemLevel = random(1,10)
	nLevel = GetLevel()/10
	if (nLevel>10) then nLevel = 10 
	end
	if (nLevel<1) then nLevel = 1 end
	if (type_item ==1) then 
		i = random(1,9)
		nDetailType = vukhi[i][1]
		nParticualrType = vukhi[i][2]
	elseif  (type_item ==2) then 
		i = random(1,5)
		nDetailType = baovat[i][1]
		nParticualrType = baovat[i][2]
	else
		i = random(1,9)
		nDetailType = trangbi[i][1]
		nParticualrType = trangbi[i][2]
	end
	if (nLevel<70) then 
		nItemLevel = random(5,7) 
	else
		nItemLevel = random(8,10)
	end
	AddItem(nItemClass,nDetailType,nParticualrType,nLevel,nSeries,nLuckn,nItemLevel)
end;

------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Ham gia nhap quan tong
-- Vi du : JoinS()
-- Cach dung : xem them tren trang www.akarizone.com
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
function JoinS()
		MoveNPC(326,145,198,3,3,0,0)
		SetCurCamp(1);
		SetDeathScript("\\script\\missions\\宋金战场pk战\\tong_player_die.lua");
		SetPunish(0)
		SetRevPos(53, 19)
		SetLogoutRV(1);		
		SetTempRevPos(326,145*8*32,198*16*32)
		SetCreateTeam(0);
		SetTask(233,GetExp())
end;

------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Ham gia nhap quan kim
-- Vi du : JoinJ()
-- Cach dung : xem them tren trang www.akarizone.com
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
function JoinJ()
		MoveNPC(326,193,158,6,9,4000,0)
		SetCurCamp(2);
		SetDeathScript("\\script\\missions\\宋金战场pk战\\kim_player_die.lua");
		SetPunish(0)
		SetRevPos(53, 19)
		SetLogoutRV(1);
		SetTempRevPos(326,194*8*32,159*16*32)
		SetCreateTeam(0);
		SetTask(233,GetExp())
end;
----------------------------------------------------------------------------------------Notify Function-----------------------------------------------------------------------------------------------------------
function MsgEx(sMessage,sMsgType)
	if (sMsgType==0 or sMsgType==nil) then
		Msg2Player(sMessage);
	else
		Talk(1,"",sMessage);
	end
end;
function SayNewEx(strSayNew)
local strMsg,strSel = "","";
local strNum = getn(strSayNew);
	if strNum < 2 then
		return
	end;
	if strNum > 2 then
		for i=2,strNum - 1 do
			strSel = strSel..format("%q", strSayNew[i])..",";
		end;
		strSel = strSel..format("%q", strSayNew[strNum]);
		strMsg = "SayNew("..format("%q", strSayNew[1])..","..(strNum - 1)..","..strSel..");";
	elseif strNum == 2 then
		strSel = format("%q", strSayNew[strNum]);
		strMsg = "SayNew("..format("%q", strSayNew[1])..",1"..","..strSel..");";
	end;
	dostring(strMsg);
end;

function ThoDiaPhu()
UseTownPortal()
end;

function OnExit()
end;

function exit()
end;
