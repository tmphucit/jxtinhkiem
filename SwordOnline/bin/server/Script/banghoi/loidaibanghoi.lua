
Include("\\script\\banghoi\\danhsach.lua")

function main()
SayNew("HiÖn t¹i ®ang giai ®o¹n b¸o danh L«i §µi Bang Héi gi÷a bang <color=yellow>["..BangA.."] vµ bang ["..BangB.."]",2,
"Tham gia L«i §µi Bang Héi /thamgia",
"Tho¸t./no")
end

function no()
end

function thamgia()
if GetTongName() ~= BangA and GetTongName() ~= BangB then
Talk(1,"","Ng­¬i kh«ng thuéc thµnh viªn <color=red>bang "..BangA.." hoÆc bang "..BangB.."")
return
end
if GetTongFigure() ~= 3 then
Talk(1,"","Chøc n¨ng chØ giµnh cho <color=red>bang chñ ")
return
end

if GetTeamSize() ~= 8 then
Talk(1,"","Nhãm ch­a ®ñ 8 thµnh viªn, kh«ng thÓ vµo")
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
Msg2SubWorld("Bang héi "..GetTongName().." ®· vµo L«i §µi Bang Héi")

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
