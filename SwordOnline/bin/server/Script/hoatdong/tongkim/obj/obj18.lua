name = "Ngò Hoa Lé"
max_level = 5
function main()
if GetLevelSkillEffectMan(314) > 0 then
level1 = random(GetLevelSkillEffectMan(314),max_level)
else
level1 = random(1,max_level)
end
AddSkillEffect(314,level1,9)
Msg2Player("B¹n nhËn ®­îc "..name.." n÷a gi©y phôc håi sinh lùc "..(1000*level1).." ®iÓm ")
Msg2Player("B¹n nhËn ®­îc "..name.." n÷a gi©y phôc håi néi lùc "..(1000*level1).." ®iÓm ")

if GetLevelSkillEffectMan(315) > 0 then
level2 = random(GetLevelSkillEffectMan(315),max_level)
else
level2 = random(1,max_level)
end
AddSkillEffect(315,level2,30*18)
Msg2Player("B¹n nhËn ®­îc "..name.." 30 gi©y t¨ng sinh lùc "..(1000+(level2-1)*250).." ®iÓm ")
Msg2Player("B¹n nhËn ®­îc "..name.." 30 gi©y t¨ng néi lùc "..(1000+(level2-1)*250).." ®iÓm ")


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
