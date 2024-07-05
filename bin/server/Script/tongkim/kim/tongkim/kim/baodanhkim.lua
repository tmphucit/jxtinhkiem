Include("\\script\\tongkim\\headtime.lua")
tienvan = 20000
dangcap = 60

function main()
ngay =  tonumber(date("%d"))
thang = tonumber(date("%m"))
time = thang * 1000 + ngay
if time < GetTask(1) then
	Talk(1,"","<color=red>H� Th�ng<color>: B�n �ang trong th�i gian b� c�m tham gia T�ng Kim. Vui l�ng quay l�i v�o ng�y mai !")
return
end
SetTask(1,0)

	if GetGlbMissionV(60) == 0 then
		Say("��i qu�n c�a ta v�n ch�a xu�t ph�t! H�y t�m th�i ngh� ng�i v� ��i tin !",1,"Tho�t./no")
	else
		if GetTask(123) == GetGlbMissionV(61) then
			if GetTask(12) == 2 then
				Say("Tr�ng tr�n �� r�n vang! Sao ng��i ch�a tham gia chi�n ?\nHi�n gi� <color=yellow>qu�n s� phe T�ng l� "..GetGlbMissionV(83).." ng��i\nqu�n s� phe Kim l� "..GetGlbMissionV(84).." ng��i.",2,"H�y ��a ta tr� l�i chi�n tr��ng/trolaiTK","�� ta suy ngh� l�i/no")
			elseif GetTask(12) == 1 then
				Say("T�n Nam man kia, c� gan th�m nh�p v�o l�nh ��a ��i Kim, r� r�ng l� t� t�m c�i ch�t!",1,"Tho�t./no")
				Msg2Player("Ng��i �� ��u qu�n cho T�ng qu�c, h�y ��n g�p M� binh quan xin nh�p chi�n tr��ng!")
			else
				Say("Ng��i �� t� � r�i kh�i chi�n tr��ng l�c chi�n s� v� th� kh�ng th� ti�p t�c tham gia tr�n chi�n n�y. Vui l�ng quay tr� l�i v�o nh�ng tr�n ti�p theo nh�!",1,"Tho�t./no")
				Msg2Player("Ng��i �� r�i kh�i chi�n tr��ng l�c �ang chi�n s� v� th� h�y r�i kh�i ��y v� quay l�i v�o tr�n ti�p theo ")
			end
		else
			Say(""..returnType()..", h�i c�c v� d�ng s� Kim qu�c, th�i kh�c nh�t th�ng thi�n h� v� d�p b�n T�ng qu�c nam man c�n ���ng c�a ch�ng ta �� ��n. Nay Kim qu�c r�t c�n s� tr� l�c c�a c�c ng��i, n�o ng��i anh em c�n ch�n ch� g� n�a!",2,"Ta tham gia! �i�m t�ch l�y tr� v�: 0/baodanh2","Tho�t/no")
		end
	end;
end

function baodanh2()
	if GetGlbMissionV(60) ~= 0 then
	if GetTask(123) ~= GetGlbMissionV(61) then
		Say("Tr�ng tr�n �� r�n vang! Sao ng��i ch�a tham gia chi�n ?\nHi�n gi� <color=yellow>qu�n s� phe T�ng l� "..GetGlbMissionV(83).." ng��i\nqu�n s� phe Kim l� "..GetGlbMissionV(84).." ng��i.",2,"H�y cho ta tham gia/thamgiaTK","�� ta suy ngh� l�i/no")
	end
	end
end

function thamgiaTK()
	if GetGlbMissionV(60) ~= 0 then
	if GetTask(123) ~= GetGlbMissionV(61) then
		if GetNumberNameInCpuTK() >= 10 then
			Talk(1,"","�� c� 1 nh�n v�t tham gia chi�n tr��ng T�ng Kim, kh�ng th� tham chi�n !")
		else
			thamgiatongkim(1)	
		end
	end
	end
end
function trolaiTK()
	if GetGlbMissionV(60) ~= 0 then
	if GetTask(123) == GetGlbMissionV(61) then
	if GetTask(12) == 2 then
		if GetNumberNameInCpuTK() >= 1 then
			Talk(1,"","�� c� 1 nh�n v�t tham gia chi�n tr��ng T�ng Kim, kh�ng th� tham chi�n !")
		else
			thamgiatongkim(2)	
		end
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

function thamgiatongkim(num)
w,x,y = GetWorldPos()
if GetCash() < tienvan then
	Talk(1,"","<color=green>Kim M� Binh: <color>: Mu�n tham gia chi�n tr��ng T�ng Kim h�y �ng h� "..tienvan.." l��ng!")
return
end
if GetLevel() < dangcap then
	Talk(1,"","<color=green>Kim M� Binh: <color>: Chi�n tr��ng ch� d�nh cho ng��i t� c�p <color=red>"..dangcap.."<color> tr� l�n, ng��i ch�a �� �i�u ki�n. C� g�ng t�p luy�n th�m �i! !")
return
end

h,m,s = GetTimeNew()
if (GetGlbMissionV(84)-GetGlbMissionV(83) >= 5 and m < 45) then
slcb = GetGlbMissionV(84)-GetGlbMissionV(83)
Talk(1,"","Hi�n t�i binh l�c phe ta l� <color=yellow>"..GetGlbMissionV(84).." ng��i<color>, ��ch ph��ng l� <color=yellow>"..GetGlbMissionV(83).." ng��i<color>, c�ch bi�t "..slcb.." ng��i<color>. Qu�n l�c c�a ta hi�n gi� �� d� s�c ti�u di�t T�ng binh! Tr�ng s� xin ��i tr�n sau nh�!")
return
end
if GetGlbMissionV(60) ~= 1000 and GetGlbMissionV(60) ~= 2000 and GetGlbMissionV(60) ~= 500 and GetGlbMissionV(60) ~= 1500 then
Talk(1,"","Error: L�i b�o danh 60 1000 2000 !")
return
end
if w ~= 60 then
Talk(1,"","Error: �ang kh�ng � trong b�n �� b�o danh !")
return
end
if GetGlbMissionV(84) >= 100 then
Talk(1,"","S� l��ng qu�n Kim �� �� 100 ng��i, kh�ng th� tham gia th�m !")
return
end



LeaveTeam()
SetTask(12,2) -- Task Ben Kim
SetTask(128,1) -- Task hoat dong Tong Kim
SetTask(18,GetRank()) -- Luu Danh Hieu
SetTask(16,GetCurCamp()) -- Luu mau Sac
SetTask(17,GetPK()) -- Task Luu PK
SetTask(40,1) -- Task Xac nhan dang di tong kim

-- Reset Task Xep Hang
if num == 1 then
SetTask(11,0)
SetTask(13,0)
SetTask(14,0)
SetTask(20,0)
SetTask(21,0)
SetTask(24,0)
SetTask(25,0)
SetTask(26,0)
SetTask(28,0)
SetTask(29,0)
SetTask(31,0)
SetTask(123,GetGlbMissionV(61))  -- Xac nhan tran dau hien tai
SetTask(19,1) -- Danh Hieu Cap 1
Pay(tienvan)
SetTask(118,0) -- Reset hoi gian tham gia chien truong
SetTaskTemp(18,0) -- Reset thoi gian hien tai
for k=1,5 do
	AddEventItem(106) -- Mien phi 5 
end
Msg2Player("B�n nh�n ���c 5 L� Bao Ng� Hoa Ng�c L� Ho�n Mi�n Ph� !")
end

SetRank(220+GetTask(19)*2)
AddMagic(413,GetTask(19))
SetPK(0)
Msg2World(""..GetName().." �� v�o chi�n tr��ng ")
SetPunish(0)
SetFightState(0)
SetCreateTeam(0);
SetLogoutRV(1);
SetPKState(1)
BlockPKState(1)
SetTaskTemp(18,0) -- Reset thoi gian hien tai

SetGlbMissionV(84,GetGlbMissionV(84)+1)

SetCamp(2)
SetCurCamp(2)
SetRevPos(2);
	Msg2Player("C�ng c�o:�� b�t ��u chi�n d�ch m�i, �i�m t�ch ph�n hi�n gi� s� l� 0!")
	Msg2Player("Hoan ngh�nh! Hoan ngh�nh! Kim qu�c kh�ng thi�u anh t�i!")
	Msg2Player("Hi�n th�i qu�n s� 2 b�n l�: T�ng: "..GetGlbMissionV(83)..", Kim: "..GetGlbMissionV(84).." ")


	if GetGlbMissionV(60) == 1000 or GetGlbMissionV(60) == 500 then
	NewWorld(33, 1688, 3074);
	else
	NewWorld(61, 2047, 2592);
	end
end


function no()
end;
