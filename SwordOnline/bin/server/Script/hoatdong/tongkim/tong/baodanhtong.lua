Include("\\script\\hoatdong\\tongkim\\headtime.lua")
tienvan = 50000
dangcap = 80

function baodanhtong_main()
dofile("script\\hoatdong\\tongkim\\tong\\baodanhtong.lua")
if GetExp() <= (-GetLevelExp()/2) then
Talk(1,"","Kinh nghi�m d��i -50%, kh�ng th� tham gia T�ng Kim")
return
end

h,m,s = GetTimeNew()
Msg2Player("<color=green>Ch� �: Admin s� lu�n phi�n ki�m tra Post �i�m T�ng Kim Li�n T�c. X� l�: <color=yellow>Block Account<color=green> khi ph�t hi�n")

	if GetLevel() < 80 then
		Talk(1,"","��ng c�p t� 80 tr� l�n m�i c� th� v�o T�ng Kim ��i Chi�n")
		return
	end
	
ngay =  tonumber(date("%d"))
thang = tonumber(date("%m"))
time = thang * 1000 + ngay

if time < GetTask(1) then
	Talk(1,"","<color=red>H� Th�ng<color>: B�n �ang trong th�i gian b� c�m tham gia T�ng Kim. Vui l�ng quay l�i v�o ng�y mai !")
return
end
SetTask(1,0)

	if GetGlbMissionV(60) == 0 then
		SayNew("��i qu�n c�a ta v�n ch�a xu�t ph�t! H�y t�m th�i ngh� ng�i v� ��i tin !",1,"Tho�t./no")
	else
		if GetTask(123) == GetGlbMissionV(61) and GetTask(518) < 5 then
			if GetTask(12) == 1 then
				SayNew("Tr�ng tr�n �� r�n vang! Sao ng��i ch�a tham gia chi�n ?\nHi�n gi� <color=yellow>qu�n s� phe T�ng l� "..GetGlbMissionV(83).." ng��i\nqu�n s� phe Kim l� "..GetGlbMissionV(84).." ng��i.",2,"H�y ��a ta tr� l�i chi�n tr��ng/trolaiTK1","�� ta suy ngh� l�i/no")
			elseif GetTask(12) == 2 then	
				SayNew("T�n Kim binh kia, c� gan th�m nh�p v�o l�nh ��a ��i T�ng, r� r�ng l� t� t�m c�i ch�t!",1,"Tho�t./no")
				Msg2Player("Ng��i �� ��u qu�n cho Kim qu�c, h�y ��n g�p M� binh quan xin nh�p chi�n tr��ng!")
			else
				SayNew("Ng��i �� t� � r�i kh�i chi�n tr��ng l�c chi�n s� v� th� kh�ng th� ti�p t�c tham gia tr�n chi�n n�y. Vui l�ng quay tr� l�i v�o nh�ng tr�n ti�p theo nh�!",1,"Tho�t./no")
				Msg2Player("Ng��i �� r�i kh�i chi�n tr��ng l�c �ang chi�n s� v� th� h�y r�i kh�i ��y v� quay l�i v�o tr�n ti�p theo ")
			end
		else
			if GetTask(518) >= 5 then
				SetTask(123,0)
				Msg2Player("<color=pink>B�n b� reset tr�n ��u h�m nay do b� x� l� AFK 5 l�n")
			end
			SayNew(""..returnType()..", m�i ng��i h�y v� t� d�n ��i t�ng, t�c ng� c� c�u: Thi�n h� h�ng vong, th�t phu h�u tr�ch. Nay ng��i kim x�m ph�m b� c�i ch�ng ta, ��y l� l�c b�o hi�u ��t n��c, n�o ng��i anh em c�n ch�n ch� g� n�a!",2,"Ta tham gia! �i�m t�ch l�y tr� v� 0/baodanh1","Tho�t/no")
		end
	end;
end

function baodanh1()
	if GetGlbMissionV(60) ~= 0 then
	if GetTask(123) ~= GetGlbMissionV(61) then
		SayNew("Tr�ng tr�n �� r�n vang! Sao ng��i ch�a tham gia chi�n ?\nHi�n gi� <color=yellow>qu�n s� phe T�ng l� "..GetGlbMissionV(83).." ng��i\nqu�n s� phe Kim l� "..GetGlbMissionV(84).." ng��i.",2,"H�y cho ta tham gia/thamgiaTK1","�� ta suy ngh� l�i/no")
	end
	end
end

function thamgiaTK1()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
	if GetGlbMissionV(60) ~= 0 then
	if GetTask(123) ~= GetGlbMissionV(61) then
		-- if tongkim_checkphe(1) == 1 then
			-- Talk(1,"","IP c�a b�n �� c� nh�n v�t theo phe Kim, b�n kh�ng th� gia nh�p phe T�ng")
			-- return
		-- end
		-- if tongkim_checksoluong() >= 2 then
			-- Talk(1,"","IP c�a b�n �� c� 2 nh�n v�t ��ng k� T�ng Kim h�m nay, kh�ng th� ��ng k� th�m !")
			-- return
		-- end
		if GetNumberNameInCpuTK() >= 1 then
		
			Talk(1,"","Hi�n t�i m�y c�a b�n �� c� 1 nh�n v�t tham gia T�ng Kim, kh�ng th� th�m !")
			return
		end
		thamgiatong(1)	
		
	end
	end
end


function trolaiTK1()
	if GetGlbMissionV(60) ~= 0 then
	if GetTask(123) == GetGlbMissionV(61) then
	if GetTask(12) == 1 then
		-- if tongkim_checkphe(1) == 1 then
			-- Talk(1,"","IP c�a b�n �� c� nh�n v�t theo phe Kim, b�n kh�ng th� gia nh�p phe T�ng")
			-- return
		-- end
		-- if tongkim_checksoluong() >= 2 then
			-- Talk(1,"","IP c�a b�n �� c� 2 nh�n v�t ��ng k� T�ng Kim h�m nay, kh�ng th� ��ng k� th�m !")
			-- return
		-- end
		if GetNumberNameInCpuTK() >= 1 then
			Talk(1,"","Hi�n t�i m�y c�a b�n �� c� 1 nh�n v�t tham gia T�ng Kim, kh�ng th� th�m !")
			return
		end
		thamgiatong(2)
		
	end
	end
	end
end

function returnType()
if GetGlbMissionV(60) == 500 then
return "Giai �o�n b�o danh H�nh th�c C�u S�t"
elseif GetGlbMissionV(60) == 1000 then
return "Giai �o�n tham chi�n H�nh th�c C�u S�t"
elseif GetGlbMissionV(60) == 1500 then
return "Giai �o�n b�o danh H�nh th�c B�o V� Nguy�n So�i"
elseif GetGlbMissionV(60) == 2000 then
return "Giai �o�n tham chi�n H�nh th�c B�o V� Nguy�n So�i"
else
return "Error !"
end
end


function thamgiatong(num)
w,x,y = GetWorldPos()

tienvan = 0
if GetLevel() >= 120 then
tienvan = 200000
elseif GetLevel() >= 100 then
tienvan = 100000
elseif GetLevel() >= 90 then
tienvan = 50000
end
tienvan = 0
if GetCash() < tienvan then
	Talk(1,"","<color=green>Kim M� Binh: <color>: Mu�n tham gia chi�n tr��ng T�ng Kim h�y �ng h� "..tienvan.." l��ng!")
return
end

h,m,s = GetTimeNew()
if GetGlbMissionV(83)-GetGlbMissionV(84) >= 2 then
if (m < 59 and (GetGlbMissionV(60) == 1000 or GetGlbMissionV(60) == 2000)) or (GetGlbMissionV(60) == 500 or GetGlbMissionV(60) == 1500) then

slcb = GetGlbMissionV(83)-GetGlbMissionV(84)
Talk(1,"","Hi�n t�i binh l�c phe ta l� <color=yellow>"..GetGlbMissionV(83).." ng��i<color>, ��ch ph��ng l� <color=yellow>"..GetGlbMissionV(84).." ng��i<color>, c�ch bi�t "..slcb.." ng��i<color>. Qu�n l�c c�a ta hi�n gi� �� d� s�c ti�u di�t Kim binh! Tr�ng s� xin ��i tr�n sau nh�!")
return
end
end

if GetGlbMissionV(60) ~= 1000 and GetGlbMissionV(60) ~= 2000 and GetGlbMissionV(60) ~= 500 and GetGlbMissionV(60) ~= 1500 then
Talk(1,"","Error: L�i b�o danh 60 1000 2000 !")
return
end
if w ~= 60 then
Talk(1,"","Error: �ang kh�ng � trong b�n �� b�o danh !")
return
end
if GetGlbMissionV(83) >= 150 then
Talk(1,"","S� l��ng qu�n T�ng �� �� 150 ng��i, kh�ng th� tham gia th�m !")
return
end


LeaveTeam()
SetTask(12,1) -- Xac Nhan Ben Tong
SetTask(128,2) -- Task hoat dong Tong Kim
Msg2World(""..GetName().." �� v�o chi�n tr��ng ")
SetTask(18,GetRank()) -- Luu Danh Hieu
SetTask(16,GetCurCamp()) -- Luu mau Sac
SetTask(17,GetPK()) -- Task Luu diem PK
SetTask(40,1) -- Task Xac nhan dang di tong kim
SetTask(452,0)
SetTask(453,0)
SetTask(454,0)
SetTask(21,0)

-- Reset Task Xep Hang
if num == 1 then
Pay(tienvan)
SetTask(11,0)
SetTask(13,0)
SetTask(14,0)
SetTask(20,0)
SetTask(24,0)
SetTask(25,0)
SetTask(26,0)
SetTask(28,0)
SetTask(29,0)
SetTask(31,0)
SetTask(123,GetGlbMissionV(61))  -- Xac nhan tran dau hien tai
SetTask(19,1) -- Danh Hieu Cap 1


SetTask(118,0) -- Reset hoi gian tham gia chien truong
SetTaskTemp(18,0) -- Reset thoi gian hien tai
SetTask(517, 0) -- Reset tu vong lien tuc
SetTask(518, 0) -- Reset AFK dis lien tuc
SetTask(606, 0) -- Reset AFK doanh trai lien tuc

--	for k=1,5 do
--		AddEventItem(106) -- Mien phi 5 
--	end
--	Msg2Player("B�n nh�n ���c 5 L� Bao Ng� Hoa Ng�c L� Ho�n Mi�n Ph� !")
	
	Msg2Player("<color=yellow>L�u �: V�o AutoPlay -> Tab T�i �u -> Tick v�o Ng��i Ch�i �� kh�ng b� gi�t khi PK ch� ��ng ng��i !")
	
	if tongkim_checkname() == 0 then
		KhoiTaoDanhSach(1)
	end
	
end

SetRank(219+GetTask(19)*2)
AddMagic(413,GetTask(19))

SetPunish(0)
SetFightState(0)
SetCreateTeam(0);
SetLogoutRV(1);
SetPKState(1)
BlockPKState(1)
SetGlbMissionV(83,GetGlbMissionV(83)+1)
SetRevPos(1);
SetCamp(1)
SetCurCamp(1)
Msg2Player("C�ng c�o:�� b�t ��u chi�n d�ch m�i, �i�m t�ch ph�n hi�n gi� s� l� 0!")
Msg2Player("Hoan ngh�nh! Hoan ngh�nh! Ng��i T�ng lu�n l� anh h�ng!")
Msg2Player("Hi�n th�i qu�n s� 2 b�n l�: T�ng: "..GetGlbMissionV(83)..", Kim: "..GetGlbMissionV(84).." ")
	if GetGlbMissionV(60) == 1000 or GetGlbMissionV(60) == 500 then
	NewWorld(33, 1236, 3554);
	else
	NewWorld(37, 1236, 3554);
--	NewWorld(61, 1641, 3154);
	end

end





function no()
end;
