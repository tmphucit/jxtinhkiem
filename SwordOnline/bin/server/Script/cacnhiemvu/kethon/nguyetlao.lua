Include("\\datascript\\cacnhiemvu\\kethon\\danhsachkethon.lua")
Include("\\script\\lib\\thuvien.lua")
-- mang demo ne
function save()
BANG1 = TaoBang(DANH_SACH_KET_HON,"DANH_SACH_KET_HON")
LuuBang("datascript/kethon/danhsachkethon.lua",BANG1)
end
--
function main()
Talk(1,"","Ch�c n�ng �ang ho�n thi�n !")
end
function main1()
if check_tinh_trang_hon_nhan() == 0 then
	if GetTeam() == nil then
	Talk(1,"","Ng��i h�y l�p t� ��i v�i � trung nh�n c�a m�nh r�i ��n ��y g�p ta !")
	return
	end
	if GetTeamSize() ~= 2 then
	Talk(1,"","H�n nh�n th� ch� c�n 2 ng��i l� ��, h�n v� thi�u th� ta s� kh�ng gi�p nh� !")
	return
	end

	if GetSex() == 0 then
		if GetTaskTemp(6) == 0 then
			SayNew("<color=green>Nguy�t L�o<color>: Ng��i ��n t�m ta c� vi�c g�? ",2,
			"Ta mu�n c�u h�n v�i c� g�i n�y, nh� ng��i gi�p ta to�i nguy�n /male_hurry",
			"Ta ch�a chu�n b� k�, g�p l�i ng��i sau !/no")
		else
			SayNew("<color=green>Nguy�t L�o<color>: � trung nh�n c�a ng��i v�n ch�a tr� l�i ng��i, c� c�n m�i c� ta nhanh nhanh m�t ch�t kh�ng? ",2,
			"Ta ngh� vi�c c�u h�n c�a ta qu� ���ng ��t, ng��i c� th� h�y b� cho ta ���c kh�ng?/male_cancel",
			"���c, ta �i th� xem/male_hurry2")
		end
	else
		if GetTaskTemp(6) == 0 then
			Talk(1,"","Chuy�n th�nh th�n n�y, ���ng ���ng l� m�t c� g�i nh� ng��i sao l�i ch� ��ng th�i qu� v�y? H�y �� t�n lang ��n c�u th�n!")
		else
			SayNew("<color=green>Nguy�t L�o<color>: anh ta �ang ��i ng��i tr� l�i k�a, �� suy ngh� k� l� mu�n c�ng v�i anh ta �i su�t cu�c ��i hay ch�a?",2,
			"V�ng, Ta nguy�n su�t ��i n�ng kh�n s�a �o cho anh ta, c�ng nhau �i h�t cu�c ��i/female_yes",
			"Kh�ng! Ta kh�ng mu�n trong l�c b�ng b�t ��a ra quy�t ��nh c� ��i ng��i m�nh./female_cancel")
		end
	end
else
	SayNew("<color=green>Nguy�t L�o<color>: T�nh tr�ng h�n nh�n c�a 2 ng��i v�n �n ch� ? ",2,
	"TEST 1/no",
	"TEST 2/no")	
end
end

function male_hurry()


if GetSex() ~= 0 then
Talk(1,"","L�i gi�i t�nh !")
return
end

if GetTeam() == nil then
Talk(1,"","L�i t� ��i kh�ng t�n t�i ")
return
end

if GetTeamSize() ~= 2 then
Talk(1,"","L�i s� l��ng th�nh vi�n nh�m !")
return
end


if (GetFaction() == "Thieu Lam Phai") or (GetFaction() == "Nga My Phai") then
Talk(1,"","Ng��i l� ng��i xu�t gia sao d�m ngh� ��n chuy�n h�ng tr�n? Hay �� v�t b� h�t m�n quy?")
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
			Talk(1,"","<color=yellow>"..male_name.."<color> c�u h�n v�i ng��i, ng��i ��ng � g� cho anh ta kh�ng? Mau �em nh�ng t�m t� trong l�ng n�i  cho <color=green>Nguy�t H� L�o Nh�n<color> nghe �i!")
			Msg2Player("<color=yellow>"..male_name.."<color=red> c�u h�n v�i ng��i, ng��i ��ng � g� cho anh ta kh�ng? Mau �em nh�ng t�m t� trong l�ng n�i  cho <color=green>Nguy�t H� L�o Nh�n<color=red> nghe �i!")
		
		end
	end
	PlayerIndex = idx
	Talk(1,"","<color=green>Nguy�t L�o<color>: T�t! Ng��i v� "..Her_Name.." qu� nhi�n tr�i sinh m�t c�p, ta l�p t�c ��n n�i v�i c� �y xem � ki�n th� n�o.")
	Msg2Player("B�n quy�t ��nh c�u h�n "..Her_Name.." �em t�m t� c�a m�nh n�i cho Nguy�t H� L�o Nh�n nghe xong, b�t ��u im l�ng ch� ��i s� ph�n �ng c�a c� ta.")
else
	PlayerIndex = idx
	Talk(1,"","Hai v� ���ng ���ng l� ��i nam nh�n l�i mu�n k�t h�n g� ch�? ��ng �em l�o gi� n�y ra ��a gi�n!")
end
end

function female_yes()
if GetSex() ~= 1 then
Talk(1,"","L�i gi�i t�nh !")
return
end
if GetTeam() == nil then
Talk(1,"","L�i t� ��i kh�ng t�n t�i ")
return
end

if (GetFaction() == "Thieu Lam Phai") or (GetFaction() == "Nga My Phai") then
Talk(1,"","Ng��i l� ng��i xu�t gia sao d�m ngh� ��n chuy�n h�ng tr�n? Hay �� v�t b� h�t m�n quy?")
return
end

if GetTeamSize() ~= 2 then
Talk(1,"","Ta c�n ch�a th�y t�n lang c�a ng��i. N�u ng��i mu�n ta t�c h�p, ph�i c�ng nhau ��n n�i chuy�n v�i ta!")
return
end

if check_rndnum_male(GetName(),GetTeam()) ~= GetTaskTemp(6) and GetTaskTemp(6) == 0 then
Talk(1,"","H�nh nh� ng��i mu�n c�u h�n v�i ng��i kh�c ch�ng? R�t cu�c ng��i mu�n l�y ai ��y? Ta c� ch�t m� h�!")
return
end


if check_tinh_trang_hon_nhan() ~= 0 then
Talk(1,"","Ng��i �� c� phu qu�n, sao c�n mu�n l�y ng��i kh�c?")
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
			Msg2Player(""..female_name.."  �� ti�p nh�n l�i c�u h�n c�a b�n, ch�c m�ng hai v� b�ch ni�n giai l�o, tr�m n�m h�nh ph�c!")
		end
	end
	PlayerIndex = female_idx
	if female_name  == "" or male_name == ""	then
		Msg2Player("<color=yellow>Ch�a t�o ���c quan h� ph�i ng�u, h�y th� l�i sau!<color>");
	return
	end
	
	DANH_SACH_KET_HON[getn(DANH_SACH_KET_HON)+1] = {male_name,female_name,GetTaskTemp(6),0,0}
	SetTask(116,GetTaskTemp(6))
	SetTaskTemp(6,0)
	Msg2Player("B�n �� ch�p nh�n l�i c�u h�n c�a "..male_name..", ch�c m�ng hai  v� b�ch ni�n giai l�o, tr�m n�m h�nh ph�c!")
	AddGlobalCountNews("ch�ng ta c�ng ch�c m�ng <color=yellow>"..male_name.."<color> v�i <color=yellow>"..female_name.."<color> hai v� t�n nh�n v�nh k�t ��ng t�m, b�ch ni�n giai l�o!",3)
		
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
