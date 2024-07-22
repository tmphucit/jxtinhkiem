Include("\\datascript\\cacnhiemvu\\kethon\\danhsachkethon.lua")
Include("\\script\\lib\\thuvien.lua")
-- mang demo ne
function save()
BANG1 = TaoBang(DANH_SACH_KET_HON,"DANH_SACH_KET_HON")
LuuBang("datascript/kethon/danhsachkethon.lua",BANG1)
end
--
function main()
Talk(1,"","Chøc n¨ng ®ang hoµn thiÖn !")
end
function main1()
if check_tinh_trang_hon_nhan() == 0 then
	if GetTeam() == nil then
	Talk(1,"","Ng­¬i h·y lËp tæ ®éi víi ý trung nh©n cña m×nh råi ®Õn ®©y gÆp ta !")
	return
	end
	if GetTeamSize() ~= 2 then
	Talk(1,"","H«n nh©n th× chØ cÇn 2 ng­êi lµ ®ñ, h¬n vµ thiÕu th× ta sÏ kh«ng gióp nhÐ !")
	return
	end

	if GetSex() == 0 then
		if GetTaskTemp(6) == 0 then
			SayNew("<color=green>NguyÖt L·o<color>: Ng­¬i ®Õn t×m ta cã viÖc g×? ",2,
			"Ta muèn cÇu h«n víi c« g¸i nµy, nhê ng­êi gióp ta to¹i nguyÖn /male_hurry",
			"Ta ch­a chuÈn bÞ kü, gÆp l¹i ng­êi sau !/no")
		else
			SayNew("<color=green>NguyÖt L·o<color>: ý trung nh©n cña ng­¬i vÉn ch­a tr¶ lêi ng­¬i, cã cÇn mêi c« ta nhanh nhanh mét chót kh«ng? ",2,
			"Ta nghÜ viÖc cÇu h«n cña ta qu¸ ®­êng ®ét, ng­êi cã thÓ hñy bá cho ta ®­îc kh«ng?/male_cancel",
			"§­îc, ta ®i thö xem/male_hurry2")
		end
	else
		if GetTaskTemp(6) == 0 then
			Talk(1,"","ChuyÖn thµnh th©n nµy, ®­êng ®­êng lµ mét c« g¸i nh­ ng­¬i sao l¹i chñ ®éng th¸i qu¸ vËy? H·y ®Ó t©n lang ®Õn cÇu th©n!")
		else
			SayNew("<color=green>NguyÖt L·o<color>: anh ta ®ang ®îi ng­¬i tr¶ lêi k×a, ®· suy nghÜ kü lµ muèn cïng víi anh ta ®i suèt cuéc ®êi hay ch­a?",2,
			"V©ng, Ta nguyÖn suèt ®êi n©ng kh¨n söa ¸o cho anh ta, cïng nhau ®i hÕt cuéc ®êi/female_yes",
			"Kh«ng! Ta kh«ng muèn trong lóc bång bét ®­a ra quyÕt ®Þnh c¶ ®êi ng­êi m×nh./female_cancel")
		end
	end
else
	SayNew("<color=green>NguyÖt L·o<color>: T×nh tr¹ng h«n nh©n cña 2 ng­êi vÉn æn chø ? ",2,
	"TEST 1/no",
	"TEST 2/no")	
end
end

function male_hurry()


if GetSex() ~= 0 then
Talk(1,"","Lçi giíi tÝnh !")
return
end

if GetTeam() == nil then
Talk(1,"","Lçi tæ ®éi kh«ng tån t¹i ")
return
end

if GetTeamSize() ~= 2 then
Talk(1,"","Lâi sè l­îng thµnh viªn nhãm !")
return
end


if (GetFaction() == "Thieu Lam Phai") or (GetFaction() == "Nga My Phai") then
Talk(1,"","Ng­¬i lµ ng­êi xuÊt gia sao d¸m nghÜ ®Õn chuyÖn hång trÇn? Hay ®· vøt bá hÕt m«n quy?")
return
end

male_name = GetName()
team = GetTeam()
idx = PlayerIndex
if check_gioi_tinh(male_name,team) == 1 then
	rndnum = random(1,999999)
	SetTaskTemp(6,rndnum)
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		if GetTeam() == team and GetName() ~= male_name then
			Her_Name = GetName()
			SetTaskTemp(6,rndnum)
			Talk(1,"","<color=yellow>"..male_name.."<color> cÇu hån víi ng­¬i, ng­¬i ®ång ý g¶ cho anh ta kh«ng? Mau ®em nh÷ng t©m t­ trong lßng nãi  cho <color=green>NguyÖt H¹ L·o Nh©n<color> nghe ®i!")
			Msg2Player("<color=yellow>"..male_name.."<color=red> cÇu hån víi ng­¬i, ng­¬i ®ång ý g¶ cho anh ta kh«ng? Mau ®em nh÷ng t©m t­ trong lßng nãi  cho <color=green>NguyÖt H¹ L·o Nh©n<color=red> nghe ®i!")
		
		end
	end
	PlayerIndex = idx
	Talk(1,"","<color=green>NguyÖt L·o<color>: Tèt! Ng­¬i vµ "..Her_Name.." qu¶ nhiªn trêi sinh mét cÆp, ta lËp tøc ®Õn nãi víi c« Êy xem ý kiÕn thÕ nµo.")
	Msg2Player("B¹n quyÕt ®Þnh cÇu h«n "..Her_Name.." ®em t©m t­ cña m×nh nãi cho NguyÖt H¹ L·o Nh©n nghe xong, b¾t ®Çu im lÆng chê ®îi sù ph¶n øng cña c« ta.")
else
	PlayerIndex = idx
	Talk(1,"","Hai vÞ ®­êng ®­êng lµ ®¹i nam nh©n l¹i muèn kÕt h«n g× chø? §õng ®em l·o giµ nµy ra ®ïa giìn!")
end
end

function female_yes()
if GetSex() ~= 1 then
Talk(1,"","Lçi giíi tÝnh !")
return
end
if GetTeam() == nil then
Talk(1,"","Lçi tæ ®éi kh«ng tån t¹i ")
return
end

if (GetFaction() == "Thieu Lam Phai") or (GetFaction() == "Nga My Phai") then
Talk(1,"","Ng­¬i lµ ng­êi xuÊt gia sao d¸m nghÜ ®Õn chuyÖn hång trÇn? Hay ®· vøt bá hÕt m«n quy?")
return
end

if GetTeamSize() ~= 2 then
Talk(1,"","Ta cßn ch­a thÊy t©n lang cña ng­¬i. NÕu ng­¬i muèn ta t¸c hîp, ph¶i cïng nhau ®Õn nãi chuyÖn víi ta!")
return
end

if check_rndnum_male(GetName(),GetTeam()) ~= GetTaskTemp(6) and GetTaskTemp(6) == 0 then
Talk(1,"","H×nh nh­ ng­¬i muèn cÇu h«n víi ng­êi kh¸c ch¨ng? Rèt cuéc ng­¬i muèn lÊy ai ®©y? Ta cã chót m¬ hå!")
return
end


if check_tinh_trang_hon_nhan() ~= 0 then
Talk(1,"","Ng­¬i ®· cã phu qu©n, sao cßn muèn lÊy ng­êi kh¸c?")
return
end

if GetSex() == 0 and GetTeam() ~= nil and GetTeamSize() == 2 and check_rndnum_male(GetName(),GetTeam()) == GetTaskTemp(6) and check_tinh_trang_hon_nhan() == 0 then
	female_name = GetName()
	male_name = ""
	team = GetTeam()
	female_idx = PlayerIndex
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		if GetTeam() == team and GetName() ~= female_name then
			male_name = GetName()
			male_idx = i
			SetTask(116,GetTaskTemp(6))
			SetTaskTemp(6,0)
			Msg2Player(""..female_name.."  ®· tiÕp nhËn lêi cÇu h«n cña b¹n, chóc mõng hai vÞ b¸ch niªn giai l·o, tr¨m n¨m h¹nh phóc!")
		end
	end
	PlayerIndex = female_idx
	if female_name  == "" or male_name == ""	then
		Msg2Player("<color=yellow>Ch­a t¹o ®­îc quan hÖ phèi ngÉu, h·y thö l¹i sau!<color>");
	return
	end
	
	DANH_SACH_KET_HON[getn(DANH_SACH_KET_HON)+1] = {male_name,female_name,GetTaskTemp(6),0,0}
	SetTask(116,GetTaskTemp(6))
	SetTaskTemp(6,0)
	Msg2Player("B¹n ®· chÊp nhËn lêi cÇu h«n cña "..male_name..", chóc mõng hai  vÞ b¸ch niªn giai l·o, tr¨m n¨m h¹nh phóc!")
	AddGlobalCountNews("chóng ta cïng chóc mõng <color=yellow>"..male_name.."<color> víi <color=yellow>"..female_name.."<color> hai vÞ t©n nh©n vÜnh kÕt ®ång t©m, b¸ch niªn giai l·o!",3)
		
	save()
	Talk(0,"")
else
	Talk(1,"","Hack ha em")
end
end



function check_rndnum_male(name,team)
for i=1,GetCountPlayerMax() do
PlayerIndex = i
if GetTeam() == team and GetName() ~= name then
	return GetTaskTemp(6)
end
end
return 0
end

function check_gioi_tinh(name,team)
for i=1,GetCountPlayerMax() do
PlayerIndex = i
if GetTeam() == team and GetName() ~= name then
	return GetSex()
end
end
return 0
end


function check_tinh_trang_hon_nhan()
for i=1,getn(DANH_SACH_KET_HON) do
	if GetSex() == 0 then
		if DANH_SACH_KET_HON[i][1] == GetName() then
			return i
		end
	else
		if DANH_SACH_KET_HON[i][2] == GetName() then
			return i
		end
	end
end
return 0
end

function no()
end

function DoMain(uId)
	if TIMKIEM(GetNamePlayer(uId),1) == 1 then
		if FINDMATE(GetNamePlayer(uId)) == 1 then
			SetMateName(VO(GetNamePlayer(uId)))
			return
		else
			SetMateName("")
			return
		end
	elseif TIMKIEM(GetNamePlayer(uId),1) == 2 then
		if FINDMATE(GetNamePlayer(uId)) == 0 then
			SetMateName(CHONG(GetNamePlayer(uId)))
			return	
		else
			SetMateName("")
			return
		end
	else
		SetMateName("")
		return	
	end
end

function TIMKIEM(string,id)
for i=1,getn(DANH_SACH_KET_HON) do
    for k=1,getn(DANH_SACH_KET_HON[i]) do
       	 if DANH_SACH_KET_HON[i][1] == string then
            		return 1
	elseif DANH_SACH_KET_HON[i][2] == string then
            		return 2
	end
    end
end
return 0
end

function FINDMATE(string)
	for i=1,getn(DANH_SACH_KET_HON) do
		if DANH_SACH_KET_HON[i][1] == string then
			return 1
		else if DANH_SACH_KET_HON[i][2] == string then
			return 0
		end
		end
	end
end

function VO(husband)
    if husband == nil then
        return 0 
    end
    for i=1,getn(DANH_SACH_KET_HON) do
        if DANH_SACH_KET_HON[i][1] == husband then
            return DANH_SACH_KET_HON[i][2]
        end
    end
end

function CHONG(husband)
    if husband == nil then
        return 0 
    end
    for i=1,getn(DANH_SACH_KET_HON) do
        if DANH_SACH_KET_HON[i][2] == husband then
            return DANH_SACH_KET_HON[i][1]
        end
    end
end
