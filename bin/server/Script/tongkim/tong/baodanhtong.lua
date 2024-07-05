Include("\\script\\tongkim\\headtime.lua")
tienvan = 5000
dangcap = 80

function main()
h,m,s = GetTimeNew()

	if GetLevel() < 80 then
		Talk(1,"","��ng c�p 80 tr� l�n m�i c� th� �i T�ng Kim ")
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
		Say("��i qu�n c�a ta v�n ch�a xu�t ph�t! H�y t�m th�i ngh� ng�i v� ��i tin !",1,"Tho�t./no")
	else
		if GetTask(123) == GetGlbMissionV(61) then
			if GetTask(12) == 1 then
				Say("Tr�ng tr�n �� r�n vang! Sao ng��i ch�a tham gia chi�n ?\nHi�n gi� <color=yellow>qu�n s� phe T�ng l� "..GetGlbMissionV(83).." ng��i\nqu�n s� phe Kim l� "..GetGlbMissionV(84).." ng��i.",2,"H�y ��a ta tr� l�i chi�n tr��ng/trolaiTK","�� ta suy ngh� l�i/no")
			elseif GetTask(12) == 2 then	
				Say("T�n Kim binh kia, c� gan th�m nh�p v�o l�nh ��a ��i T�ng, r� r�ng l� t� t�m c�i ch�t!",1,"Tho�t./no")
				Msg2Player("Ng��i �� ��u qu�n cho Kim qu�c, h�y ��n g�p M� binh quan xin nh�p chi�n tr��ng!")
			else
				Say("Ng��i �� t� � r�i kh�i chi�n tr��ng l�c chi�n s� v� th� kh�ng th� ti�p t�c tham gia tr�n chi�n n�y. Vui l�ng quay tr� l�i v�o nh�ng tr�n ti�p theo nh�!",1,"Tho�t./no")
				Msg2Player("Ng��i �� r�i kh�i chi�n tr��ng l�c �ang chi�n s� v� th� h�y r�i kh�i ��y v� quay l�i v�o tr�n ti�p theo ")
			end
		else
			Say(""..returnType()..", m�i ng��i h�y v� t� d�n ��i t�ng, t�c ng� c� c�u: Thi�n h� h�ng vong, th�t phu h�u tr�ch. Nay ng��i kim x�m ph�m b� c�i ch�ng ta, ��y l� l�c b�o hi�u ��t n��c, n�o ng��i anh em c�n ch�n ch� g� n�a!",2,"Ta tham gia! �i�m t�ch l�y tr� v� 0/baodanh2","Tho�t/no")
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
		if GetNumberNameInCpuTK() >= 1 then
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
	if GetTask(12) == 1 then
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
--if GetLevel() < dangcap then
--	Talk(1,"","<color=green>Kim M� Binh: <color>: Chi�n tr��ng ch� d�nh cho ng��i t� c�p <color=red>"..dangcap.."<color> tr� l�n, ng��i ch�a �� �i�u ki�n. C� g�ng t�p luy�n th�m �i! !")
--return
--end

h,m,s = GetTimeNew()


if GetGlbMissionV(83)-GetGlbMissionV(84) >= 3 then
if (m < 45 and (GetGlbMissionV(60) == 1000 or GetGlbMissionV(60) == 2000)) or (GetGlbMissionV(60) == 500 or GetGlbMissionV(60) == 1500) then

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
SetTask(128,1) -- Task hoat dong Tong Kim
Msg2World(""..GetName().." �� v�o chi�n tr��ng ")
SetTask(18,GetRank()) -- Luu Danh Hieu
SetTask(16,GetCurCamp()) -- Luu mau Sac
SetTask(17,GetPK()) -- Task Luu diem PK
SetTask(40,1) -- Task Xac nhan dang di tong kim

-- Reset Task Xep Hang
if num == 1 then
Pay(tienvan)
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


SetTask(118,0) -- Reset hoi gian tham gia chien truong
SetTaskTemp(18,0) -- Reset thoi gian hien tai
for k=1,5 do
	AddEventItem(106) -- Mien phi 5 
end
Msg2Player("B�n nh�n ���c 5 L� Bao Ng� Hoa Ng�c L� Ho�n Mi�n Ph� !")

end

SetRank(219+GetTask(19)*2)
AddMagic(413,GetTask(19))
SetPK(0)
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
	NewWorld(61, 1641, 3154);
	end

end


function no()
end;
