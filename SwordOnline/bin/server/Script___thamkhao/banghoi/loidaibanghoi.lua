
Include("\\script\\banghoi\\danhsach.lua")

function main()
SayNew("Hi�n t�i �ang giai �o�n b�o danh L�i ��i Bang H�i gi�a bang <color=yellow>["..BangA.."] v� bang ["..BangB.."]",2,
"Tham gia L�i ��i Bang H�i /thamgia",
"Tho�t./no")
end

function no()
end

function thamgia()
if GetTongName() ~= BangA and GetTongName() ~= BangB then
Talk(1,"","Ng��i kh�ng thu�c th�nh vi�n <color=red>bang "..BangA.." ho�c bang "..BangB.."")
return
end
if GetTongFigure() ~= 3 then
Talk(1,"","Ch�c n�ng ch� gi�nh cho <color=red>bang ch� ")
return
end

if GetTeamSize() ~= 8 then
Talk(1,"","Nh�m ch�a �� 8 th�nh vi�n, kh�ng th� v�o")
return
end

if GetTongName() == BangA then
		GiaNhap(1,GetTeam())
elseif GetTongName() == BangB then
		GiaNhap(2,GetTeam())
end
end

function GiaNhap(phe, team)
idx = PlayerIndex
Msg2SubWorld("Bang h�i "..GetTongName().." �� v�o L�i ��i Bang H�i")

for i=1,2000 do
	PlayerIndex = i
	if GetTeam() == team then
			if phe == 1 then
				SetFightState(0)
				SetLogoutRV(1);
				SetPKState(1)
				BlockPKState(1)		
				SetCurCamp(1)
				NewWorld(29,1607,3234)
			elseif phe == 2 then
				SetFightState(0)
				SetLogoutRV(1);
				SetPKState(1)
				BlockPKState(1)		
				SetCurCamp(3)
				NewWorld(29,1578,3264)
			end
	end
end
PlayerIndex = idx
LeaveTeam()
end
