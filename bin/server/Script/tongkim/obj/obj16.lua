name = "H�nh Qu�n ��n"
max_level = 5
function main()
if GetLevelSkillEffectMan(310) > 0 then
level = random(GetLevelSkillEffectMan(310),max_level)
else
level = random(1,max_level)
end
AddSkillEffect(310,level,9)
Msg2Player("B�n nh�n ���c "..name.." n�a gi�y ph�c h�i sinh l�c "..(1000*level).." �i�m ")


if GetLevelSkillEffectMan(311) > 0 then
level1 = random(GetLevelSkillEffectMan(311),max_level)
else
level1 = random(1,max_level)
end
AddSkillEffect(311,level1,30*18)
Msg2Player("B�n nh�n ���c "..name.." 30 gi�y t�ng sinh l�c "..(1000+(level1-1)*250).." �i�m ")


addbaovat()
end

diembaovat = 30
function addbaovat()
w,x,y = GetWorldPos()
if GetGlbMissionV(60) == 2000 then
if w == 61 then
	SetTask(25,GetTask(25)+1)
	SetTask(26,GetTask(26)+diembaovat)
	SetTask(15,GetTask(15)+diembaovat)
	SetTask(31,GetTask(31)+diembaovat)
	if GetTask(12) == 1 then
		SetGlbMissionV(81,GetGlbMissionV(81) + diembaovat)
	elseif GetTask(12) == 2 then
		SetGlbMissionV(82,GetGlbMissionV(82) + diembaovat)
	end
	Msg2Player("B�n nh�n ���c "..diembaovat.." �i�m t�ch l�y ")
	UpdateTopTKNew()
end
end
end
