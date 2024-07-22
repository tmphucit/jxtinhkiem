function OnDrop()
w,x,y = GetWorldPos()
Msg2World("<color=green>Vi S¬n §¹o TÆc ®· bÞ nhãm cña "..GetName().." tiªu diÖt ")
team = GetTeam()
name = GetName()

sx = random(1,100)
if sx < 5 then
	idxitem = AddEventItem(random(752,891))
	Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
	inlogvsd("[3] ["..GetNameItemBox(idxitem).."] ["..GetAccount().."] - ["..GetName().."")
end

sx = random(1,100)
if sx < 50 then
		sx2 = random(1,100)
		if sx2 < 60 then
				idxitem = AddEventItem(44)
				Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
		elseif sx2 < 90 then
				idxitem = AddEventItem(45)
				Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")	
		else
				idxitem = AddEventItem(46)
				Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
		end
end

if GetTeam() == nil then
	AddOwnExp(1000000)
	nhiemvuvsd(x,y,x,y)
else
idxp = PlayerIndex
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w1,x1,y1 = GetWorldPos()
		if GetName() ~= nil and GetName() ~= "" and GetTeam() == team and w1 == w then
				AddOwnExp(1000000)
				nhiemvuvsd(x,y,x1,y1)
		end
	end	
PlayerIndex = idxp	
end
end	


function inlogvsd(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/LogItemViSonDao.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end


function nhiemvuvsd(x,y,x1,y1)

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


if loai == 3 and danglam <= soluong then
	SetTask(311, GetTask(311) + 1)
	Msg2Player("<color=pink>[NhiÖm Vô]<color=red> Tiªu diÖt: "..GetTask(311).." / "..soluong.." Boss Vi S¬n §¹o TÆc")
	if GetTask(311) >= soluong then
		Talk(1,"","B¹n ®· hoµn thµnh nhiÖm vô, h·y ®Õn <color=green>Qu¶n Lý Vi S¬n §¶o <color>®Ó phôc mÖnh !")
	end
end

else
	Msg2Player("B¹n ®øng qu¸ xa tæ ®éi, kh«ng thÓ h­ëng chung nhiÖm vô ")
end
end

function OnDeath()


end
function RotDotTim()
num = random(1,17)
if num < 15 then
type = typeitem(random(1,5))
param = paramitem(type)
level = 10
else
type = random(0,1)
if type == 0 then
param = random(0,5)
level = 210
else
param = random(0,2)
level = 70
end
end


xsdong = random(1,100)
if xsdong < 70 then
sodong = random(3,4)
else
sodong = random(5,6)
end
if (sodong == 1) then
	AddItemPink(0,type,param,level,random(0,4),0,0,0,0,0,0,0,1,207,0,0,0,0,0,0,0,0,0,0,0,0)
elseif (sodong == 2) then
	AddItemPink(0,type,param,level,random(0,4),0,0,0,0,0,0,0,1,207,1,207,0,0,0,0,0,0,0,0,0,0)
elseif (sodong == 3) then
	AddItemPink(0,type,param,level,random(0,4),0,0,0,0,0,0,0,1,207,1,207,1,207,0,0,0,0,0,0,0,0)
elseif (sodong == 4) then
	AddItemPink(0,type,param,level,random(0,4),0,0,0,0,0,0,0,1,207,1,207,1,207,1,207,0,0,0,0,0,0)
elseif (sodong == 5) then
	AddItemPink(0,type,param,level,random(0,4),0,0,0,0,0,0,0,1,207,1,207,1,207,1,207,1,207,0,0,0,0)
elseif (sodong == 6) then
	AddItemPink(0,type,param,level,random(0,4),0,0,0,0,0,0,0,1,207,1,207,1,207,1,207,1,207,1,207,0,0)
end

Msg2World("Chóc mõng "..GetName().." nhËn ®­îc phÇn th­ëng tõ Vi S¬n §¹o §Æc: <color=pink>Trang bÞ HuyÒn Tinh "..sodong.." dßng ch­a kh¶m n¹m !")

end



function typeitem(num)
if num == 1 then
return 2
elseif num == 2 then
return 6
elseif num == 3 then
return 5
elseif num == 4 then
return 8
elseif num == 5 then
return 7
end
end


function paramitem(num)
if num == 2 then
return random(50,77)
elseif num == 6 then
return random(24,25)
elseif num == 5 then
return random(20,23)
elseif num == 8 then
return random(20,21)
elseif num == 7 then
return random(27,40)
end
end



function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/DoPhoHoangKim.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end



mangbk = {
{4,"MËt TÞch ThiÕu L©m"},
{5,"MËt TÞch Thiªn V­¬ng"},
{6,"MËt TÞch §­êng M«n"},
{7,"MËt TÞch Ngò §éc"},
{8,"MËt TÞch Nga Mi"},
{9,"MËt TÞch Thóy Yªn"},
{10,"MËt TÞch Thiªn NhÉn"},
{11,"MËt TÞch C¸i Bang"},
{12,"MËt TÞch Vâ §ang"},
{13,"MËt TÞch C«n L«n"},
}

mangdp = {
{243,"§å Phæ Vò KhÝ Hoµng Kim"},
{244,"§å Phæ Nãn Hoµng Kim"},
{245,"§å Phæ ¸o Gi¸p Hoµng Kim"},
{246,"§å Phæ Bao Tay Hoµng Kim"},
{247,"§å Phæ Th¾t L­ng Hoµng Kim"},
{248,"§å Phæ Giµy Hoµng Kim"},
{250,"§å Phæ D©y ChuyÒn Hoµng Kim"},
{251,"§å Phæ Ngäc Béi Hoµng Kim"},
{252,"§å Phæ NhÉn Hoµng Kim"},
}
