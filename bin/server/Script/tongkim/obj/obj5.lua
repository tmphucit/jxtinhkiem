name = "Th� Chi Chi�n H�n"
max_level = 4
time = 60*18

function main()
id = random(1,2)
if id == 1 then
obj1()
else
obj5()
end
end

function obj1()
idmagic = 284
if GetLevelSkillEffectMan(idmagic) > 0 then
level = random(GetLevelSkillEffectMan(idmagic),max_level)
else
level = random(1,max_level)
end
AddSkillEffect(idmagic,level,time)
Msg2Player("B�n nh�n ���c "..name.." 1 ph�t gi�m th� th��ng "..(level*10).." % ")
addbaovat()
end

function obj5()
idmagic = 288
if GetLevelSkillEffectMan(idmagic) > 0 then
level = random(GetLevelSkillEffectMan(idmagic),max_level)
else
level = random(1,max_level)
end
AddSkillEffect(idmagic,level,time)
Msg2Player("B�n nh�n ���c "..name.." 1 ph�t gi�m b� tr�ng ��c "..(level*10).." % ")

addbaovat()
end

diembaovat = 20
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