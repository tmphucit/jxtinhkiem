function OnDrop(idx)
w,x,y = GetWorldPos()

team = GetTeam()
name = GetName()
xsboss = random(1,150)  -- Fix 1 - 100
if xsboss <= 50 then
	Msg2World("<color=yellow>Vi S�n ��o T�c �� xu�t hi�n t�i b�i luy�n c�ng c�a "..GetName().."")
	idnpc = random(1024,1028)
	quaivsd=AddNpc(idnpc,95,SubWorldID2Idx(w),x*32,y*32)
	SetNpcScript(quaivsd, "\\script\\visondao\\bossdaotac.lua");
end


if GetTeam() == nil then
	nhiemvuvsd(idx,x,y,x,y)
else
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w1,x1,y1 = GetWorldPos()
		if GetName() ~= nil and GetName() ~= "" and GetTeam() == team and w1 == w then
				nhiemvuvsd(idx,x,y,x1,y1)
		end
	end
end
end

function nhiemvuvsd(idx,x,y,x1,y1)
loai = GetTask(309)
soluong = GetTask(310)
danglam = GetTask(311)
chenhlechx = 0
if (x > x1) then
chenhlechx = x - x1
else
chenhlechx = x1 - x
end
chenhlechy = 0
if (y > y1) then
chenhlechy = y - y1
else
chenhlechy = y1 - y
end

if GetFightState() == 1 and (chenhlechx <= 40) and (chenhlechy <= 80) then
	if loai == 1 and GetTask(311) < soluong then
		SetTask(311, GetTask(311) + 1)
		Msg2Player("<color=pink>[Nhi�m V�]<color=red> Ti�u di�t: "..GetTask(311).." / "..soluong.." con")
		if GetTask(311) >= soluong then
			Talk(1,"","B�n �� ho�n th�nh nhi�m v�, h�y ��n <color=green>Qu�n L� Vi S�n ��o <color>�� ph�c m�nh !")
		end
	elseif loai == 2 and 	GetTask(311) < mod(soluong, 1000) then
		if GetNpcSeries(idx) == floor(GetTask(310)/1000) then
			SetTask(311, GetTask(311) + 1)
			Msg2Player("<color=pink>[Nhi�m V�]<color=red> Ti�u di�t: "..GetTask(311).." / "..mod(soluong, 1000).." con")
			if GetTask(311) >= mod(soluong, 1000) then
				Talk(1,"","B�n �� ho�n th�nh nhi�m v�, h�y ��n <color=green>Qu�n L� Vi S�n ��o <color>�� ph�c m�nh !")
			end
		end
	end
else
	Msg2Player("B�n ��ng qu� xa t� ��i, kh�ng th� h��ng chung nhi�m v� ")
end
	
	
end



function OnDeath()
end