name = "Háa Chi Lîi NhËn"
max_level = 11
idmagic = 299
time = 60*18

function main()
if GetLevelSkillEffectMan(idmagic) > 0 then
level = random(GetLevelSkillEffectMan(idmagic),max_level)
else
level = random(1,max_level)
end
AddSkillEffect(idmagic,level,time)
Msg2Player("B¹n nhËn ®­îc "..name.." 1 phót t¨ng s¸t th­¬ng háa hÖ néi c«ng "..(100+(level-1)*10).." ®iÓm ")
Msg2Player("B¹n nhËn ®­îc "..name.." 1 phót t¨ng s¸t th­¬ng háa hÖ ngo¹i c«ng "..(100+(level-1)*20).." ®iÓm ")
addbaovat()
end

diembaovat = 30
function addbaovat()
w,x,y = GetWorldPos()
if GetGlbMissionV(60) == 2000 then
if w == 37 then
	SetTask(25,GetTask(25)+1)
	SetTask(26,GetTask(26)+diembaovat)
	SetTask(15,GetTask(15)+diembaovat)
	SetTask(31,GetTask(31)+diembaovat)
	if GetTask(12) == 1 then
		SetGlbMissionV(81,GetGlbMissionV(81) + diembaovat)
	elseif GetTask(12) == 2 then
		SetGlbMissionV(82,GetGlbMissionV(82) + diembaovat)
	end
	Msg2Player("B¹n nhËn ®­îc "..diembaovat.." ®iÓm tÝch lòy ")
	UpdateTopTKNew()
end
end
end