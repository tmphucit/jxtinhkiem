function main()
idmagic = random(449,452)
DoSkillMan(idmagic,1)
if idmagic == 449 then
Msg2Player("B�n nh�n ���c Tam Thanh Chi Kh� khi�n cho ��i ph��ng xung quanh ��u b� cho�ng ")
elseif idmagic == 450 then
Msg2Player("B�n nh�n ���c Tam Thanh Chi Kh� khi�n cho ��i ph��ng xung quanh ��u b� ��ng b�ng")
elseif idmagic == 451 then
Msg2Player("B�n nh�n ���c Tam Thanh Chi Kh� khi�n cho ��i ph��ng xung quanh ��u b� tr�ng ��c")
elseif idmagic == 452 then
Msg2Player("B�n nh�n ���c Tam Thanh Chi Kh� khi�n cho ��i ph��ng xung quanh ��u b� gi�m t�c ��")
end
addbaovat()
end

diembaovat = 50
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