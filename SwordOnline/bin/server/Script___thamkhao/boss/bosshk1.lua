Include("\\datascript\\banghoi\\dsbosshk.lua")
Include("\\script\\lib\\thuvien.lua")

function main()
SayNew("<color=green>Qu¶n Lý Boss <color>:  ",7,
"Ta muèn rót R­¬ng §ång /rutttt",
"Ta muèn rót R­¬ng B¹c /rutttt",
"Ta muèn rót R­¬ng Vµng /rutttt",
"Ta muèn rót R­¬ng B¹ch Kim /rutttt",
"Ta muèn rót R­¬ng Ng©n L­îng /rutruongnl",
"Ta muèn rót Nhu Tinh, HiÖp Cèt /rutruongnt",
"Thoat./no")
end


function rutruongnt()
bang = GetTongName()
vt =checktontai(bang)
if GetTongName() == "" then
Talk(1,"","Ng­¬i kh«ng cã Bang Héi th× kh«ng cÇn ph¶i nãi chuyÖn víi ta ®©u !")
return
end

if getn(BOSSHK) == 0 then
Talk(1,"","HiÖn t¹i ch­a cã bang héi nµo ký göi, kh«ng thÓ rót ")
return
end
if GetTongFigure() == 3 then
if vt == 0 then
	Talk(1,"","Bang héi cña ng­¬i kh«ng cã ký göi R­¬ng ë chç ta !")
else
	if getn(BOSSHK[vt]) == 6 then
		Talk(1,"","Ng­¬i kh«ng cã R­¬ng Nhu T×nh, HiÖp Cèt, kh«ng thÓ rót")
		return
	end
	if BOSSHK[vt][7] <= 0 then
		Talk(1,"","<color=green>Qu¶n Lý Boss <color>: Sè l­îng vËt phÈm ®· hÕt !")
	else
		num = 0
		for i=1,BOSSHK[vt][7] do
			if CheckFreeBoxItem(4,412,1,1) == 0 then
				break
			end
			num = num + 1
			AddEventItem(random(270,271))
			BOSSHK[vt][7] = BOSSHK[vt][7] - 1 
		end
		if num == 0 then
			Msg2Player("R­¬ng ®Çy råi, kiÓm tra råi rót l¹i !")
		end
		
		BANG = TaoBang(BOSSHK,"BOSSHK")
		LuuBang("datascript/banghoi/dsbosshk.lua",BANG)
		SaveData()
	end
end
else
	Talk(1,"","ChØ cã Bang Chñ míi cã thÓ rót vËt phÈm bang héi !")
end
end
function rutruongnl()
bang = GetTongName()
vt =checktontai(bang)
if GetTongName() == "" then
Talk(1,"","Ng­¬i kh«ng cã Bang Héi th× kh«ng cÇn ph¶i nãi chuyÖn víi ta ®©u !")
return
end

if getn(BOSSHK) == 0 then
Talk(1,"","HiÖn t¹i ch­a cã bang héi nµo ký göi, kh«ng thÓ rót ")
return
end
if GetTongFigure() == 3 then
if vt == 0 then
	Talk(1,"","Bang héi cña ng­¬i kh«ng cã ký göi R­¬ng ë chç ta !")
else
	if getn(BOSSHK[vt]) == 5 then
		Talk(1,"","Ng­¬i kh«ng cã R­¬ng Ng©n L­îng, kh«ng thÓ rót")
		return
	end
	if BOSSHK[vt][6] <= 0 then
		Talk(1,"","<color=green>Qu¶n Lý Boss <color>: Sè l­îng vËt phÈm ®· hÕt !")
	else
		num = 0
		for i=1,BOSSHK[vt][6] do
			if CheckFreeBoxItem(4,412,1,1) == 0 then
				break
			end
			num = num + 1
			AddEventItem(412)
			BOSSHK[vt][6] = BOSSHK[vt][6] - 1 
		end
		if num == 0 then
			Msg2Player("R­¬ng ®Çy råi, kiÓm tra råi rót l¹i !")
		end
		
		BANG = TaoBang(BOSSHK,"BOSSHK")
		LuuBang("datascript/banghoi/dsbosshk.lua",BANG)
		SaveData()
	end
end
else
	Talk(1,"","ChØ cã Bang Chñ míi cã thÓ rót vËt phÈm bang héi !")
end
end


function rutttt(nsel)
bang = GetTongName()
vt =checktontai(bang)
if GetTongName() == "" then
Talk(1,"","Ng­¬i kh«ng cã Bang Héi th× kh«ng cÇn ph¶i nãi chuyÖn víi ta ®©u !")
return
end

if getn(BOSSHK) == 0 then
Talk(1,"","HiÖn t¹i ch­a cã bang héi nµo ký göi, kh«ng thÓ rót ")
return
end
if GetTongFigure() == 3 then
if vt == 0 then
	Talk(1,"","Bang héi cña ng­¬i kh«ng cã ký göi R­¬ng ë chç ta !")
else
	if BOSSHK[vt][2+nsel] <= 0 then
		Talk(1,"","<color=green>Qu¶n Lý Boss <color>: Sè l­îng vËt phÈm ®· hÕt !")
	else
		num = 0
		for i=1,BOSSHK[vt][2+nsel] do
			if CheckFreeBoxItem(4,266+nsel,1,1) == 0 then
				break
			end
			num = num + 1
			AddEventItem(266+nsel)
			BOSSHK[vt][2+nsel] = BOSSHK[vt][2+nsel] - 1 
		end
		if num == 0 then
			Msg2Player("R­¬ng ®Çy råi, kiÓm tra råi rót l¹i !")
		end
		
		BANG = TaoBang(BOSSHK,"BOSSHK")
		LuuBang("datascript/banghoi/dsbosshk.lua",BANG)
		SaveData()
	end
end
else
	Talk(1,"","ChØ cã Bang Chñ míi cã thÓ rót vËt phÈm bang héi !")
end
end



function chucvu(qq)
if qq == 2 then
return "Tr­ëng L·o"
else
return "Bang Chñ "
end
end
function no()
end

function OnDrop(idxnpc)
	Msg2SubWorld("<color=green>Chóc mõng "..GetName().." Dame NhiÒu NhÊt vµo Boss nhËn ®­îc:")
	Msg2SubWorld("<color=green>- R­¬ng Ng©n L­îng")
	Msg2SubWorld("<color=green>- R­¬ng Vµng")
	Msg2SubWorld("<color=green>- May M¾n Nhãm")
	Msg2SubWorld("<color=green>- M·nh Kim Phong")
	AddEventItem(412)
	AddEventItem(268)
	AddEventItem(650)
	AddEventItem(RandomNew(639,647))
	
end

function OnDeath(idxnpc)
name = GetName()
bang = GetTongName()
w,x,y = GetWorldPos()
idx = PlayerIndex
h,m,s = GetTimeNew()
ngay = tonumber(date("%d"))
	Msg2SubWorld("<color=green>Chóc mõng "..GetName().." ®· tiªu diÖt "..GetNpcName(idxnpc).." nhËn ®­îc:")
	Msg2SubWorld("<color=green>- R­¬ng Ng©n L­îng")
	Msg2SubWorld("<color=green>- R­¬ng B¹c")
	Msg2SubWorld("<color=green>- May M¾n Nhãm")
	Msg2SubWorld("<color=green>- M·nh Kim Phong")
	AddEventItem(412)
	AddEventItem(267)
	AddEventItem(650)
	AddEventItem(RandomNew(639,647))
	
if GetTongName() ~= "" then
	Msg2SubWorld("<color=green>Bang héi ["..bang.."] nhËn ®­îc: ")
	rd1 = RandomNew(1,2)
	rd2 = RandomNew(1,2)
	rd3 = RandomNew(1,2)
	rd4 = RandomNew(1,2)
	rd5 = RandomNew(1,5)
	Msg2SubWorld("- "..rd1.." R­¬ng §ång")
	Msg2SubWorld("- "..rd2.." R­¬ng B¹c")
	Msg2SubWorld("- "..rd3.." R­¬ng Vµng")
	Msg2SubWorld("- "..rd4.." R­¬ng B¹ch Kim")
	Msg2SubWorld("- "..rd5.." R­¬ng Ng©n L­îng")
	if getn(BOSSHK) == 0 then
		BOSSHK[getn(BOSSHK)+1] = {bang,rd1,rd2,rd3,rd4,rd5,1}
	else
		vt = checktontai(bang)
		if  vt == 0 then
			BOSSHK[getn(BOSSHK)+1] = {bang,rd1,rd2,rd3,rd4,rd5,1}
		else
			BOSSHK[vt][2] = BOSSHK[vt][2] + rd1
			BOSSHK[vt][3] = BOSSHK[vt][3] + rd2
			BOSSHK[vt][4] = BOSSHK[vt][4] + rd3
			BOSSHK[vt][5] = BOSSHK[vt][5] + rd4
			BOSSHK[vt][6] = BOSSHK[vt][6] + rd5
			BOSSHK[vt][7] = BOSSHK[vt][7] + 1
					
		end
	end
	BANG = TaoBang(BOSSHK,"BOSSHK")
	LuuBang("datascript/banghoi/dsbosshk.lua",BANG)
	
	idxplayer = PlayerIndex
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w1,x1,y1 = GetWorldPos()
		if GetTongName() == bang then
			if w == w1 and (x1 >= x-40 and x1 <= x+40) and (y1 >= y-80 and y1 <= y+80) then
				AddOwnExp(1000000)
				Msg2Player("B¹n nhËn ®­îc 1.000.000 kinh nghiÖm")
				sxmanh = RandomNew(1,100)
				
				if sxmanh < 30 then
						idxitem = AddEventItem(random(173,175))
						Msg2SubWorld("+ "..GetName().." nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
				end
				if sxmanh < 3 then
						idxitem = AddEventItem(639)
						Msg2SubWorld("+ "..GetName().." nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
				end
				if sxmanh == 50 then
						idxitem = AddEventItem(random(648,649))
						Msg2SubWorld("+ "..GetName().." nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
				end
			else
				Msg2Player("B¹n kh«ng thuéc b¶n ®å Boss ChÕt hoÆc c¸ch xa boss qu¸ 5 täa ®é, kh«ng nhËn ®­îc phÇn th­ëng kinh nghiÖm")
			end
		end
	end
end


PlayerIndex = idxplayer
end

function checktontai(bang)
for i=1,getn(BOSSHK) do 
	if BOSSHK[i][1] == bang then
		return i
	end
end
return 0
end
