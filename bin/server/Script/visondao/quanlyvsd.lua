function main()
Say("<color=green>Qu¶n Lı Vi S¬n §¶o <color>: Vi s¬n ®¶o lµ n¬i tİch tô nhiÒu bİ Èn vµ kho b¸u quı gi¸ trong tÊm b¶n ®å S¬n Hµ X· T¾c ",6,
"KiÓm tra sè ng­êi ®ang ë Vi S¬n §¶o /kiemtra",
"NhËn nhiÖm vô Vi S¬n §¶o /nhannv",
"Th¨ng cÊp HuyÒn Tinh nhanh/thangcapht",
"N©ng cÊp trang bŞ HuyÒn Tinh/nangcaptbht",
"Rêi khái Vi S¬n §¶o /roikhoi",
"Tho¸t./no")
end


function nangcaptbht()
if GetAccount() == "adminso2" then
OpenCheckItemBox("Th¨ng CÊp Trang BŞ","H·y ®Æt 1 trang bŞ tİm vµ 1 viªn Tö Thñy Tinh vµo ","okhaha")
--Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc phÇn th­ëng tõ Vi S¬n §¹o §Æc: <color=pink>Trang bŞ HuyÒn Tinh cÊp 10 - 6 dßng ch­a kh¶m n¹m !")

else
Talk(1,"","Chøc n¨ng ®ang test !")
end

end



function okhaha()
itemidx = GetIdxItemBoxUpdateItem()
numitem = GetIdxItemBoxQuestKey()

Msg2Player(" "..itemidx.." ")

if (itemidx == 0) then
Msg2Player("B¹n ch­a ®Æt trang bŞ cÇn th¨ng cÊp vµo !")
Talk(1,"","<color=red>Lçi<color>: Ch­a ®Æt trang bŞ cÇn th¨ng cÊp vµo !")
return
end

if (itemidx == -1) then
Msg2Player("B¹n kh«ng ®Æt vµo qu¸ 1 trang bŞ xanh !")
Talk(1,"","<color=red>Lçi<color>: Trang bŞ ®Æt vµo nhiÒu h¬n 1 trang bŞ !")
return
end

if (itemidx == -2) then
Msg2Player("Trang bŞ ®Æt vµo kh«ng ph¶i trang bŞ xanh ")
Talk(1,"","<color=red>Lçi<color>: Trang bŞ ®Æt vµo kh«ng ph¶i trang bŞ xanh !")
return
end


if (itemidx == -3) then
Msg2Player("Trang bŞ ®Æt vµo ®ang trong tr¹ng th¸i khãa b¶o hiÓm, kh«ng thÓ  th¨ng cÊp")
Talk(1,"","<color=red>Lçi<color>: Kh«ng thÓ th¨ng cÊp trang bŞ ®ang khãa b¶o hiÓm!")
return
end


if (numitem == 0) then
Msg2Player("B¹n ch­a ®Æt nguyªn liÖu th¨ng cÊp vµo !")
Talk(1,"","<color=red>Lçi<color>: Ch­a cã nguyªn liÖu th¨ng cÊp!")
return
end

if (numitem == -1) then
Msg2Player("B¹n chØ cã thÓ ®Æt 1 nguyªn liÖu th¨ng cÊp ")
Talk(1,"","<color=red>Lçi<color>: V­ît qu¸ sè l­îng yªu cÇu: 1 viªn Tö Thñy Tinh!")
return
end

if (numitem == -2) then
Msg2Player("Nguyªn liÖu ®Æt vµo kh«ng ph¶i Tö Thñy Tinh ")
Talk(1,"","<color=red>Lçi<color>: Nguyªn liÖu ®Æt vµo kh«ng ph¶i lµ Tö Thñy Tinh!")
return
end





	a = GetDetailTypeItem(itemidx)
	b = GetParticularItem(itemidx)		
	c = GetLevelItem(itemidx)

	if (a == 2 and b == 28) then
	Msg2Player("Trang bŞ kÕt h«n kh«ng thÓ th¨ng cÊp !")
	Talk(1,"","Trang bŞ kÕt h«n kh«ng thÓ th¨ng cÊp !")
	return
	end
	Msg2Player("TEST "..c.." ")
	if c < 1 or c >= 10 then
	Msg2Player("Trang bŞ cña b¹n ®¹t cÊp tèi ®a, kh«ng thÓ th¨ng cÊp")
	Talk(1,"","<color=red>Lçi<color>: Kh«ng thÓ th¨ng cÊp trang bŞ cÊp 10!")
	return
	end

	d = GetSeriItem(itemidx)
	
	lucky1 = GetEquipMagicLucky(itemidx,1)
	lucky2 = GetEquipMagicLucky(itemidx,2)
	lucky3 = GetEquipMagicLucky(itemidx,3)
	lucky4 = GetEquipMagicLucky(itemidx,4)
	lucky5 = GetEquipMagicLucky(itemidx,5)
	lucky6 = GetEquipMagicLucky(itemidx,6)
	
	Level411 = GetEquipMagicLevel(itemidx,1)
	Id411 = GetEquipMagicId(itemidx,1)
	Level412 = GetEquipMagicLevel(itemidx,2)
	Id412 = GetEquipMagicId(itemidx,2)
	Level413 = GetEquipMagicLevel(itemidx,3)
	Id413 = GetEquipMagicId(itemidx,3)
	Level414 = GetEquipMagicLevel(itemidx,4) 
	Id414 = GetEquipMagicId(itemidx,4)
	Level415 = GetEquipMagicLevel(itemidx,5)
	Id415 = GetEquipMagicId(itemidx,5)
	Level416 = GetEquipMagicLevel(itemidx,6)
	Id416 = GetEquipMagicId(itemidx,6)
	random41 = GetEquipMagicRandomSeed(itemidx)
	mayman = GetItemBoxLucky(itemidx)

	sx = random(1,130)
	DelEquipItemQuestKey()
	sxtinh =100 - c*10
	if sxtinh > 50 then
	sxtinh = 50
	end 
	if sx < sxtinh then
		Msg2Player("<color=yellow>Chóc mõng b¹n ®· th¨ng cÊp thµnh c«ng trang bŞ [<color=green>"..GetNameItemBox(itemidx).."<color=yellow>] tõ cÊp "..c.." lªn cÊp "..(c+1).." !")
		if c >= 7 then
			Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] ®· th¨ng cÊp thµnh c«ng trang bŞ [<color=green>"..GetNameItemBox(itemidx).."<color=red>] tõ cÊp "..c.." lªn cÊp "..(c+1).." !")
			AddGlobalCountNews("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color>] ®· th¨ng cÊp thµnh c«ng trang bŞ [<color=green>"..GetNameItemBox(itemidx).."<color>] tõ cÊp "..c.." lªn cÊp "..(c+1).." ! ",1)
		end
		DelEquipIdx(itemidx)
		if GetIdxItemBoxUpdateItem() == 0 and GetIdxItemBoxQuestKey() == 0 then
			AddItemPrama(0,a,b,c+1,d,random41,Level411,Level412,Level413,Level414,Level415,Level416,1,mayman,8,2,0)
			inlogin("Thanh Cong: "..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.." ")
		else
			a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(idx)
			inlogin(""..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.."")
			Talk(1,"","hack ha em")
		end
	else
		inlogin("Thang cap That bai: "..GetAccount().." - "..GetName().." - "..(100 - c*10).."% ")
		Msg2Player("Th¨ng cÊp trang bŞ thÊt b¹i, x¸c suÊt th¨ng cÊp: <color=yellow>"..(100-c*10).."% ")
		Talk(1,"","Th¨ng cÊp trang bŞ thÊt b¹i, x¸c suÊt th¨ng cÊp: <color=yellow>"..(100-c*10).."% ")
	
	end
end



function inlogin(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThangCapTBHuyenTinh.txt", "a");
if LoginLog then
write(LoginLog,""..string.."\n");
end
closefile(LoginLog)
end







function thangcapht()
Say("<color=green>Qu¶n Lı Vi S¬n §¶o <color>: Chän lo¹i HuyÒn Tinh cÇn th»ng cÊp: ",4,
"HuyÒn Tinh 2/thangcapht2",
"HuyÒn Tinh 3/thangcapht3",
"HuyÒn Tinh 4/thangcapht4",

"Tho¸t./no")
end


ht2 = 45
ht3 = 46
ht4 = 47
ht5 = 48

function thangcapht2()
num = GetItemCount(ht2)
vang = GetCash()

if num < 3 then
Talk(1,"","B¹n kh«ng ®ñ 3 viªn HuyÒn Tinh 2")
return
end
for i=1,num do
	if GetItemCount(ht2) >= 3 then
		if GetCash() >= 7000 then
			xs = random(1,100)
			Pay(7000)
			if xs < 75 then
				DelItem(ht2)
				DelItem(ht2)
				DelItem(ht2)
				AddEventItem(ht3)
				Msg2Player("Th¨ng  cÊp thµnh c«ng 1 viªn HuyÒn Tinh 3")
			else
				DelItem(ht2)
				Msg2Player("Th¨ng cÊp thÊt b¹i, mÊt 1 viªn HuyÒn Tinh 2")
			end	
		else		
			Msg2Player("B¹n kh«ng ®ñ 7000 l­îng !")
		end
	end
end


end

function thangcapht3()
num = GetItemCount(ht3)
vang = GetCash()

if num < 3 then
Talk(1,"","B¹n kh«ng ®ñ 3 viªn HuyÒn Tinh 3")
return
end
for i=1,num do
	if GetItemCount(ht3) >= 3 then
		if GetCash() >= 10000 then
			xs = random(1,100)
			Pay(10000)
			if xs < 65 then
				DelItem(ht3)
				DelItem(ht3)
				DelItem(ht3)
				AddEventItem(ht4)
				Msg2Player("Th¨ng  cÊp thµnh c«ng 1 viªn HuyÒn Tinh 4")
			else
				DelItem(ht3)
				Msg2Player("Th¨ng cÊp thÊt b¹i, mÊt 1 viªn HuyÒn Tinh 3")
			end	
		else		
			Msg2Player("B¹n kh«ng ®ñ 10000 l­îng !")
		end
	end
end


end

function thangcapht4()
num = GetItemCount(ht4)
vang = GetCash()

if num < 3 then
Talk(1,"","B¹n kh«ng ®ñ 3 viªn HuyÒn Tinh 4")
return
end
for i=1,num do
	if GetItemCount(ht4) >= 3 then
		if GetCash() >= 12000 then
			xs = random(1,100)
			Pay(12000)
			if xs < 55 then
				DelItem(ht4)
				DelItem(ht4)
				DelItem(ht4)
				AddEventItem(ht5)
				Msg2Player("Th¨ng  cÊp thµnh c«ng 1 viªn HuyÒn Tinh 5")
			else
				DelItem(ht4)
				Msg2Player("Th¨ng cÊp thÊt b¹i, mÊt 1 viªn HuyÒn Tinh 4")
			end	
		else		
			Msg2Player("B¹n kh«ng ®ñ 12000 l­îng !")
		end
	end
end


end


function no()
end

function roikhoi()
Say("<color=green>Qu¶n Lı Vi S¬n §¶o <color>: Ng­¬i ch¾c ch¾n muèn rêi khái ®©y chø ?",2,
"Ta ch¾c ch¾n muèn rêi khái /roikhoi2",
"Ta ch­a muèn xuèng ®¶o /no")
end

function roikhoi2()
Msg2World("§¹i hiÖp [<color=yellow>"..GetName().."<color=red>] ®· rêi khëi Vi S¬n §¶o !")
NewWorld(53,200*8,200*16)
SetRevPos(19)
KickOutSelf()

end

function nhannv()
Talk(1,"","SÏ cËp nhËt trong thêi gian tíi !")
end

function kiemtra()
num = 0
idx = PlayerIndex
for i=1,GetCountPlayerMax() do
PlayerIndex = i
w,x,y = GetWorldPos()
if w == 24 then
num = num + 1
end
end
PlayerIndex = idx
Msg2Player("Sè l­îng ng­êi ch¬i ®ang ë Vi S¬n §¶o : <color=green>"..num.." ng­êi !")


end