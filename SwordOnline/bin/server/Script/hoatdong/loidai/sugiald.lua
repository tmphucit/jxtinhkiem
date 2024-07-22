Include("\\script\\hoatdong\\loidai\\loidai_head.lua")
Include("\\script\\hoatdong\\loidai\\dsloidai.lua")
Include("\\script\\lib\\thuvien.lua")

function RunTimer()
TeamState = szTeamName[3][3]
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
newtime = gio * 60 + phut
oldtime = szTeamName[3][5] * 60 + szTeamName[3][6]
chenhlech = newtime - oldtime
if TeamState == 1 then
	if chenhlech < GO_TIME then
		idxp = PlayerIndex
		for i=1,GetCountPlayerMax() do
			PlayerIndex = i
			w,x,y = GetWorldPos()
			if w == 209 then
				Talk(1,"","Thêi gian b¸o danh l«i ®µi cßn l¹i: "..(GO_TIME-chenhlech).." phót n÷a !")
			end
		end
		PlayerIndex = idxp
	elseif chenhlech == GO_TIME then
		idxp = PlayerIndex
		for i=1,GetCountPlayerMax() do
			PlayerIndex = i
			w,x,y = GetWorldPos()
			if w == 209 and GetCurCamp() ~= 0 then
				SetPKState(2)
				Talk(1,"","§· hÕt thêi gian b¸o danh l«i ®µi, trËn ®Êu sÏ b¾t ®Çu sau 2 phót n÷a.")	
			end
		end
		PlayerIndex = idxp
		szTeamName[3][3] = 2
	end
elseif TeamState == 2 then
	if chenhlech == GO_TIME + 2 then
		idxp = PlayerIndex
		for i=1,GetCountPlayerMax() do
			PlayerIndex = i
			w,x,y = GetWorldPos()
			if w == 209 and GetCurCamp() ~= 0 then
				SetFightState(1)
				SetPunish(1);
			end
		end
		PlayerIndex = idxp
		szTeamName[3][3] = 3
	end
elseif TeamState == 3 then
	if chenhlech == GO_TIME + 12 then
		CheckHetGio()
	else
		CheckKetQua()
	end
end
end

function CheckHetGio()
num1 = 0
num2 = 0
idxplayer = PlayerIndex
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	w,x,y = GetWorldPos()
	if w == 209 and GetCurCamp() ~= 0 then
			if check_ds_name(1) == 1 then
				num1 = num1 + 1
			elseif check_ds_name(2) == 1 then
				num2 = num2 + 1
			end
	end
end
PlayerIndex = idxplayer

if num1 > num2 then
	idxplayer = PlayerIndex
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 209 then
				LeaveGame()
				NewWorld(GetTask(BW_SIGNPOSWORLD), GetTask(BW_SIGNPOSX), GetTask(BW_SIGNPOSY));
		end
	end
	PlayerIndex = idxplayer
	str = "TrËn thi ®Êu l«i ®µi "..szTeamName[3][4].." vs "..szTeamName[3][4].." gi÷a ®éi ["..szTeamName[3][1].."] cïng ®éi ["..szTeamName[3][2].."] ®· kÕt thóc. PhÇn th¾ng thuéc vÒ ®éi ["..szTeamName[3][1].."]";
	AddGlobalCountNews(str,1)	
	Msg2SubWorld(str);
elseif num1 < num2 then
	idxplayer = PlayerIndex
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 209 then
				LeaveGame()
				NewWorld(GetTask(BW_SIGNPOSWORLD), GetTask(BW_SIGNPOSX), GetTask(BW_SIGNPOSY));
		end
	end
	PlayerIndex = idxplayer
	str = "TrËn thi ®Êu l«i ®µi "..szTeamName[3][4].." vs "..szTeamName[3][4].." gi÷a ®éi ["..szTeamName[3][1].."] cïng ®éi ["..szTeamName[3][2].."] ®· kÕt thóc. PhÇn th¾ng thuéc vÒ ®éi ["..szTeamName[3][2].."]";
	AddGlobalCountNews(str,1)	
	Msg2SubWorld(str);
else
	idxplayer = PlayerIndex
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 209 then
				LeaveGame()
				NewWorld(GetTask(BW_SIGNPOSWORLD), GetTask(BW_SIGNPOSX), GetTask(BW_SIGNPOSY));
		end
	end
	PlayerIndex = idxplayer
	str = "TrËn thi ®Êu l«i ®µi "..szTeamName[3][4].." vs "..szTeamName[3][4].." gi÷a ®éi ["..szTeamName[3][1].."] cïng ®éi ["..szTeamName[3][2].."] ®· kÕt thóc. KÕt qu¶ hßa";
	AddGlobalCountNews(str,1)	
	Msg2SubWorld(str);
end
resetDanhSach()
end

function CheckKetQua()
num1 = 0
num2 = 0
idxplayer = PlayerIndex
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	w,x,y = GetWorldPos()
	if w == 209 and GetCurCamp() ~= 0 then
			if check_ds_name(1) == 1 then
				num1 = num1 + 1
			elseif check_ds_name(2) == 1 then
				num2 = num2 + 1
			end
	end
end
PlayerIndex = idxplayer

if num1 == 0 then
	idxplayer = PlayerIndex
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 209 then
				LeaveGame()
				NewWorld(GetTask(BW_SIGNPOSWORLD), GetTask(BW_SIGNPOSX), GetTask(BW_SIGNPOSY));
		end
	end
	PlayerIndex = idxplayer
	str = "TrËn thi ®Êu l«i ®µi "..szTeamName[3][4].." vs "..szTeamName[3][4].." gi÷a ®éi ["..szTeamName[3][1].."] cïng ®éi ["..szTeamName[3][2].."] ®· kÕt thóc. PhÇn th¾ng thuéc vÒ ®éi ["..szTeamName[3][2].."]";
	AddGlobalCountNews(str,1)
	Msg2SubWorld(str);
elseif num2 == 0 then
	idxplayer = PlayerIndex
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 209 then
				LeaveGame()
				NewWorld(GetTask(BW_SIGNPOSWORLD), GetTask(BW_SIGNPOSX), GetTask(BW_SIGNPOSY));
		end
	end
	PlayerIndex = idxplayer
	str = "TrËn thi ®Êu l«i ®µi "..szTeamName[3][4].." vs "..szTeamName[3][4].." gi÷a ®éi ["..szTeamName[3][1].."] cïng ®éi ["..szTeamName[3][2].."] ®· kÕt thóc. PhÇn th¾ng thuéc vÒ ®éi ["..szTeamName[3][1].."]";
	AddGlobalCountNews(str,1)
	Msg2SubWorld(str);
end
end


function resetDanhSach()
szTeamName = {
{ "","","","","","","",""},
{ "","","","","","","",""},
{"","",0,0,0,0},
};
save()
end
function savetimer()
end
function save()
BANG = TaoBang(szTeamName,"szTeamName")
LuuBang("script/loidai/dsloidai.lua",BANG)
end


function main()
	x,y,z = GetWorldPos();
	SetTask(BW_SIGNPOSWORLD, x);
	SetTask(BW_SIGNPOSX, y);
	SetTask(BW_SIGNPOSY, z);

	idx = SubWorldID2Idx(BW_COMPETEMAP[1]);
	if (idx == -1) then
		ErrorMsg(3) 
		return
	end;
	
	
	OldSubWorld = SubWorld;
	SubWorld = idx;
	local MemberCount = Check_MemCount()
	ms_state = Check_State()
	if (ms_state == 0) then 
		SayNew("§©y lµ ®Êu tr­êng thi ®Êu l«i ®µi, n¬i cho c¸c nh©n sÜ giang hå ®¬n ®Êu hoÆc tæ chøc ®éi thi ®Êu, hiÖn t¹i ch­a ai b¸o danh thi ®Êu, c¸c h¹ muèn b¸o danh kh«ng ?<color=yellow> HiÖn t¹i l«i ®µi më cöa miÔn phÝ ", 3, "§­îc th«i/OnRegister", "Quy t¾c thi ®Êu ra sao?/OnHelp", "§Ó suy nghÜ c¸i ®·!/OnCancel");
	elseif (ms_state == 1) then
		SayNew("§©y lµ trËn ®Êu l«i ®µi, hiÖn t¹i ®éi "..szTeamName[3][1].." vµ ®éi <color=yellow>"..szTeamName[3][2].."<color> thi ®Êu<color=yellow>"..MemberCount.." chäi "..MemberCount.."<color>, Ng­¬i cã yªu cÇu g× kh«ng ?",3,"Ta lµ tuyÓn thñ muèn vµo ®Êu tr­êng/OnShowKey", "Ta muèn xem trËn ®Êu nµy/OnLook", "Ta kh«ng cã høng thó víi trËn ®Êu nµy/OnCancel")
	elseif (ms_state == 2 or ms_state == 3) then 
		OnFighting();
	else
		ErrorMsg(2)
	end;
	SubWorld = OldSubWorld;
end

function OnLook()

	local str = "§éi "..szTeamName[3][1].." vµ §éi "..szTeamName[3][2].." s¾p b¾t ®Çu thi ®Êu l«i ®µi, theo c¸c h¹ ai sÏ th¾ng lîi chung cuéc.";
	local str1 = "Ta muèn vµo ®Êu tr­êng xem/onwatch";
	SayNew(str, 2, str1, "Ta ®o¸n kh«ng chÝnh x¸c, kh«ng vµo ®©u!/OnCancel");

end;
function onwatch()
	JoinCamp(3)
end



function OnShowKey()
		TeamNum = szTeamName[3][4]
		TeamState = szTeamName[3][3]
		TeamType = 0
		if GetName() ==  szTeamName[3][1] then
			TeamType = 1
		elseif GetName() ==  szTeamName[3][2] then
			TeamType = 2
		end

if GetTeam() ~= nil then
		if TeamType == 0 then
			Talk(1,"","Tæ ®éi cña b¹n kh«ng n»m trong danh s¸ch thi ®Êu hiÖn t¹i, vui lßng ®îi l­ît sau.")
			return
		end
		if TeamState ~= 1 then
			Talk(1,"","HiÖn t¹i kh«ng ph¶i thêi gian chê tËp trung, kh«ng thÓ vµo !")
			return
		end
		if TeamNum == 1 then
			Talk(1,"","L«i ®µi 1 vs 1 kh«ng cÇn ph¶i lËp tæ ®éi !")
			LeaveTeam()
		return
		end
		if IsCaptain() ~= 1 then
			Talk(1,"","ChØ cã tr­ëng nhãm míi cã quyÒn ®­a toµn bé thµnh viªn vµo ®Êu tr­êng")
			return
		end	
		if GetTeamSize() ~= TeamNum then
			Talk(1,"","C¸c h¹ ®· ghi danh h×nh thøc thi ®Êu "..TeamNum.." chäi "..TeamNum..", hiÖn t¹i sè l­îng thµnh viªn trong ®éi kh«ng ®óng ")
			return
		end
		if szTeamName[1][1] ~= "" and TeamType == 1 then
		Talk(1,"","ChiÕn ®éi ®· ®¨ng ký nhãm, kh«ng thÓ thay ®æi !")
		return
		end
		if szTeamName[2][1] ~= "" and TeamType == 2 then
		Talk(1,"","ChiÕn ®éi ®· ®¨ng ký nhãm, kh«ng thÓ thay ®æi !")
		return
		end
		
		team = GetTeam()
		checktontai = 0
		nametontai = ""
		idxp = PlayerIndex
			for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				if GetTeam() == team then
					if TeamType == 1 then
						if szTeamName[2][1] ~= "" then
							for k=1,getn(szTeamName[2]) do
									if GetName() == szTeamName[2][k] then
										checktontai = 1
										nametontai = GetName()
										break
									end
							end
						end
						if GetName() == szTeamName[3][2] then
							checktontai = 2
							nametontai = GetName()
							break
						end
					elseif TeamType == 2 then
						if szTeamName[1][1] ~= "" then
							for k=1,getn(szTeamName[1]) do
									if GetName() == szTeamName[1][k] then
										checktontai = 1
										nametontai = GetName()
										break
									end
							end
						end
						if GetName() == szTeamName[3][1] then
							checktontai = 2
							nametontai = GetName()
							break
						end
					end
				end
			end
		PlayerIndex = idxp
		
		if checktontai == 1 then
			Talk(1,"","Trong nhãm cã thµnh viªn ["..nametontai.."] ®· ®¨ng ký chiÕn ®éi, kh«ng thÓ ®¨ng ký thªm !")
			return
		end
		if checktontai == 2 then
			Talk(1,"","Trong nhãm cã thµnh viªn ["..nametontai.."] lµ tr­ëng nhãm ®èi thñ, kh«ng thÓ ®¨ng ký chiÕn ®éi !")
			return
		end
		idxp = PlayerIndex
			for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				if GetTeam() == team then
					if TeamType == 1 then
					vt = check_ds_free(1)
					szTeamName[1][vt] = GetName()
					elseif TeamType == 2 then
					vt = check_ds_free(2)
					szTeamName[2][vt] = GetName()
					end
					Talk(1,"","§¨ng ký chiÕn ®éi thµnh c«ng, c¸c thµnh viªn cã thÓ vµo ®Êu tr­êng !")
				end
			end
		PlayerIndex = idxp
		LeaveTeam()
		save()
else
		
		if TeamState ~= 1 then
			Talk(1,"","HiÖn t¹i kh«ng ph¶i thêi gian chê tËp trung, kh«ng thÓ vµo !")
			return
		end
		if check_ds_name(1) == 1 then
			JoinCamp(1)
		elseif check_ds_name(2) == 1 then
			JoinCamp(2)
		else
			Talk(1,"","C¸c h¹ kh«ng cã tªn trong danh s¸ch thi ®Êu hiÖn t¹i, vui lßng ®îi l­ît sau.")
		end
end
end

function JoinCamp(Camp)
	local Camp1;
	if (Camp == 3) then
		Camp1 = 0;
	else
		Camp1 = Camp + 1;
	end
	SetCurCamp(Camp1)
	bw_state_joined_in(Camp1);
	
	if (Camp == 1) then
		NewWorld(CS_CampPos[1][1], CS_CampPos[1][2], CS_CampPos[1][3])
	elseif (Camp == 2) then
		NewWorld(CS_CampPos[2][1], CS_CampPos[2][2], CS_CampPos[2][3])
	else 
		NewWorld(CS_CampPos[3][1], CS_CampPos[3][2], CS_CampPos[3][3])
	end;
	
end

function check_ds_free(vt)
for k=1,getn(szTeamName[vt]) do
	if szTeamName[vt][k] == "" then
		return k
	end
end
return 0
end
function check_ds_name(vt)
	for k=1,getn(szTeamName[vt]) do
		if GetName() == szTeamName[vt][k] then
			return 1
		end
	end
	return 0
end
function bw_state_joined_in(Camp)
	--SetTaskTemp(200,1);
	SetFightState(0);
	SetLogoutRV(1);
	SetPunish(0);
	if Camp == 0 then
		SetPKState(0)
	else
		SetPKState(1)
	end
		BlockPKState(1)
	SetCreateTeam(0);
	SetRevPos(15,10)
	SetDeathScript("\\script\\hoatdong\\loidai\\player_death.lua");
	
	x = GetTask(BW_SIGNPOSWORLD);
	y = GetTask(BW_SIGNPOSX);
	z = GetTask(BW_SIGNPOSY);
	SetTempRevPos(x, y * 32, z * 32);
end;

function OnFighting()
	str = "HiÖn thêi ®éi "..szTeamName[3][1].." vµ ®éi "..szTeamName[3][2].." ®ang thi ®Êu.";
	SayNew(str, 1, "Quay l¹i sau. /OnCancel");
end;

function Check_State()
	return szTeamName[3][3]	
end
function Check_MemCount()
	return szTeamName[3][4]	
end

function OnRegister()
	--±¨·û
	if (GetTeamSize()  ~= 2) then
		Talk(1,"","Muèn ghi danh ph¶i lµ <color=yellow>§éi tr­ëng<color>, §éi cña c¸c h¹ kh«ng ®ñ <color=yellow>2<color> ng­êi.");
		return
	end;

	if (IsCaptain() ~= 1) then 
		ErrorMsg(5)
		return
	end;

	SayNew("C¸c h¹ muèn ®Êu l«i ®µi, sè ng­êi nhiÒu nhÊt mçi bªn lµ bao nhiªu", 9, "Rêi khái!/OnCancel", "1 chäi 1/SignUpFinal", "2 chäi 2/SignUpFinal", "3 chäi 3/SignUpFinal","4 chäi 4/SignUpFinal","5 chäi 5/SignUpFinal","6 chäi 6/SignUpFinal","7 chäi 7/SignUpFinal","8 chäi 8/SignUpFinal");
end;

function SignUpFinal(MemberCount)
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

	if gio == 23 and phut > 30 then
		Talk(1,"","L«i ®µi ®ang trong thêi gian t¹m ngõng b¸o danh, thêi gian cßn l¹i: "..(59-phut).." phót")
		return
	end

	if (GetTeamSize()  ~= 2) then
		SayNew("Muèn ghi danh ph¶i lµ <color=yellow>§éi tr­ëng<color> §éi cña c¸c h¹ kh«ng ®ñ<color=yellow>2<color> ng­êi.", 0);
		return
	end;
	if (MemberCount < 1 or MemberCount > 8) then
		return
	end
	ms_state = Check_State()
	if (ms_state ~= 0) then 
		ErrorMsg(8)
		return
	end
	

	Team = GetTeam()
	Name = GetName()
	OldPlayerIndex = PlayerIndex;
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		if GetTeam() == Team then
			if GetName() == Name then
					szTeamName[3][1] = GetName()
					if MemberCount == 1 then
					szTeamName[1][1] = GetName()
					end
					local szMsg = format("§¨ng ký thµnh c«ng  %s chäi %s ghi danh tranh tµi , nhanh vµo DiÔn Vâ tr­êng , trËn ®Êu %d phót sau chÝnh thøc b¾t ®Çu.",MemberCount, MemberCount, GO_TIME)
					Talk(1,"",szMsg)
			else
					szTeamName[3][2] = GetName()
					if MemberCount == 1 then
					szTeamName[2][1] = GetName()
					end
					local szMsg = format("Ghi danh tranh tµi %s chäi %s hoµn tÊt , nhanh vµo DiÔn Vâ tr­êng , trËn ®Êu %d phót sau chÝnh thøc b¾t ®Çu.",MemberCount, MemberCount, GO_TIME)
					Talk(1,"",szMsg)
			end
		end
	end
	
	PlayerIndex = OldPlayerIndex;
	szTeamName[3][3] = 1
	szTeamName[3][4] = MemberCount
	szTeamName[3][5] = gio
	szTeamName[3][6] = phut
	LeaveTeam()
	str = "B©y giê §éi ["..szTeamName[3][1].."] tranh tµi cïng §éi ["..szTeamName[3][2].."], L«i ®µi chuÈn bÞ b¾t ®Çu, L«i ®µi më cöa miÔn phÝ, xin mêi c¸c vÞ h¶o höu ®Õn xem.";
	AddGlobalCountNews(str,1)
	save()
end

function OnCancel()
end

function OnHelp()
	Talk(5, "",	"L«i ®µi thi ®Êu lµ n¬i ®Ó c¸c cao thñ thi tµi nghÖ víi nhau vµ còng lµ n¬i thi ®Êu c«ng b»ng nhÊt cho ®«i bªn..",	"Muèn tham gia l«i ®µi thi ®Êu, tr­íc tiªn ph¶i tíi chç ta xin b¸o danh.",	"Sau khi ®Æt c­îc xong, b¸o danh tham gia l«i ®µi sÏ hoµn tÊt. Lµ do ®Êu tr­êng cã giíi h¹n nªn trong lóc ng­êi kh¸c ®ang thi ®Êu kh«ng thÓ b¸o danh.",	format("C«ng B×nh Tö: Sau khi ®¨ng ký thµnh c«ng, hai bªn cã thÓ vµo khu vùc chuÈn bÞ, thêi gian chuÈn bÞ lµ <color=yellow>%d<color> phót, sau khi thêi gian chuÈn bÞ kÕt thóc, trËn ®Êu sÏ chÝnh thøc b¾t ®Çu!", GO_TIME) , 	format("C«ng B×nh Tö: Thêi gian thi ®Êu lµ <color=yellow>%d<color> phót, nÕu trong %d phót kh«ng x¸c ®Þnh ®­îc ®éi th¾ng, trËn ®Êu sÏ ®­îc xö hßa.", floor(TIMER_2/(60*FRAME2TIME))-GO_TIME, floor(TIMER_2/(60*FRAME2TIME))-GO_TIME ));
end;


function ErrorMsg(ErrorId)
	if (ErrorId == 1) then 
		Talk(1,"","Muèn b¸o danh ph¶i häp thµnh ®éi sau ®ã míi cã thÓ b¸o danh")
	elseif (ErrorId == 2) then 
		Talk(1,"","Tham gia thi ®Êu ph¶i mang ®ñ ng©n l­îng")
	elseif (ErrorId == 3) then 
		Talk(1,"","B¸o danh bÞ lçi, xin mêi liªn hÖ GM!");
	elseif (ErrorId == 4) then 
		Talk(1,"","C¸c h¹ kh«ng ph¶i lµ tuyÓn thñ ®· b¸o danh v× vËy kh«ng thÓ vµo l«i ®µi, xin h·y ®øng ngoµi xem", 0);
	elseif (ErrorId == 5) then 
		Talk(1,"","Ng­êi b¸o danh ph¶i lµ §éi tr­ëng");
	elseif (ErrorId == 6) then 
		Talk(1,"","Ng­¬i mang kh«ng ®ñ ng©n l­îng");
	elseif (ErrorId == 7) then 
		Talk(1,"","Kh«ng ®­îc, c¸c h¹ cßn ®ang tham gia tranh tµi!");
	elseif (ErrorId == 8) then
		Talk(1,"","²Kh«ng ®­îc, ®· cã ng­êi ghi danh thi ®Êu!");
	elseif (ErrorId == 9) then 
		Talk(1,"","Kh«ng ®­îc, l«i ®µi ®· b¾t ®Çu, c¸c h¹ kh«ng thÓ ®ãng phÝ!");
	elseif (ErrorId == 10) then 
		Talk(1,"","Sè ng­êi thi ®Êu ®· ®ñ!");
	else
		
	end;
	return
end;
