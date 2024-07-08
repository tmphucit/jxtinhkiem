function OnDrop(idx)
w,x,y = GetWorldPos()

team = GetTeam()
name = GetName()
xsboss = random(1,300)  -- xac suat 1/400
if xsboss == 100 then
	Msg2World("<color=yellow>Vi S¬n §¹o TÆc ®· xuÊt hiÖn t¹i b·i luyÖn c«ng cña "..GetName().."")
	idnpc = random(1024,1028)
	quaivsd=AddNpc(idnpc,95,SubWorldID2Idx(w),x*32,y*32)
	SetNpcScript(quaivsd, "\\script\\hoatdong\\visondao\\bossdaotac.lua");
end

--Msg2Player("Check Lucky 1: "..GetLucky(0).." %")
tile = floor(GetLucky(0)/4)
--Msg2Player("Debug Xac suat ra Huyen Tinh: <color=yellow>"..tile.." %")

sx = RandomNew(1,200)
if sx < tile then
	idxitem = AddEventItem(677)
	Msg2Player("B¹n nhËn ®­îc 1 viªn HuyÒn Tinh !")
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
		Msg2Player("<color=pink>[NhiÖm Vô]<color=red> Tiªu diÖt: "..GetTask(311).." / "..soluong.." con")
		if GetTask(311) >= soluong then
			Talk(1,"","B¹n ®· hoµn thµnh nhiÖm vô, h·y ®Õn <color=green>Qu¶n Lý Vi S¬n §¶o <color>®Ó phôc mÖnh !")
		end
	elseif loai == 2 and 	GetTask(311) < mod(soluong, 1000) then
		if GetNpcSeries(idx) == floor(GetTask(310)/1000) then
			SetTask(311, GetTask(311) + 1)
			Msg2Player("<color=pink>[NhiÖm Vô]<color=red> Tiªu diÖt: "..GetTask(311).." / "..mod(soluong, 1000).." con")
			if GetTask(311) >= mod(soluong, 1000) then
				Talk(1,"","B¹n ®· hoµn thµnh nhiÖm vô, h·y ®Õn <color=green>Qu¶n Lý Vi S¬n §¶o <color>®Ó phôc mÖnh !")
			end
		end
	end
else
	Msg2Player("B¹n ®øng qu¸ xa tæ ®éi, kh«ng thÓ h­ëng chung nhiÖm vô ")
end
	
	
end



function OnDeath()
end