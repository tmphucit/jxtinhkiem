function OnDrop()
w,x,y = GetWorldPos()

team = GetTeam()
name = GetName()



xsboss = random(1,100)
if xsboss < 5 then
	Msg2World("<color=yellow>Vi S�n ��o T�c �� xu�t hi�n t�i "..floor(x/8).." / "..floor(y/16)..". H�y c�ng nhau ti�u di�t �� c� nhi�u ph�n th��ng cho ��i c�a m�nh ")
	idnpc = random(1024,1028)
	quaivsd=AddNpc(idnpc,95,SubWorldID2Idx(w),x*32,y*32)
	SetNpcScript(quaivsd, "\\script\\visondao\\bossdaotac.lua");
end


if GetTeam() == nil then
	if GetTask(172) > 18 then
		AddOwnExp(20000)
		Msg2Player("B�n nh�n ���c 10.000 kinh nghi�m v� �ang s� d�ng Ti�n Th�o L� !")
	else
		AddOwnExp(10000)
		Msg2Player("B�n nh�n ���c 10.000 kinh nghi�m !")
	end
	xs = random(1,4)
if xs == 2 then
	AddEventItem(45)
	Msg2Player("B�n nh�n ���c 1 vi�n <color=pink>Huy�n Tinh 2")
end
else
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w1,x1,y1 = GetWorldPos()
		if GetName() ~= nil and GetName() ~= "" and GetTeam() == team and w1 == w then
			if GetTask(172) > 18 then
			AddOwnExp(20000)
			Msg2Player("B�n nh�n ���c 20.000 kinh nghi�m v� �ang s� d�ng Ti�n Th�o L� !")
			else
			AddOwnExp(10000)
			Msg2Player("B�n nh�n ���c 10.000 kinh nghi�m !")
			end
			
	xs = random(1,4)
if xs == 2 then
	AddEventItem(45)
	Msg2Player("B�n nh�n ���c 1 vi�n <color=pink>Huy�n Tinh 2")
end
		end
	end
end


end

function OnDeath()
end