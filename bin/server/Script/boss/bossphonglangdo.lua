Include("\\datascript\\banghoi\\dstuthuytinh.lua")
Include("\\datascript\\banghoi\\dsxaloikimdon.lua")
Include("\\script\\lib\\thuvien.lua")


function main()
Say("<color=green>Qu¶n Lý Phong L¨ng §é <color>: Ta chuyªn qu¶n lý tÊt c¶ vÊn ®Ò vÒ Phong L¨ng §é ",5,
"KiÓm tra sè l­îng Tö Thñy Tinh ký göi /kiemtrattt",
"KiÓm tra sè l­îng X¸ Lîi Kim §¬n ký göi /kiemtrattt1",
"Ta muèn rót Tö Thñy Tinh /rutttt",
"Ta muèn rót X¸ Lîi Kim §¬n /rutttt1",
"Thoat./no")
end

function kiemtrattt()
bang = GetTongName()
vt =checktontai(bang)
if GetTongName() == "" then
Talk(1,"","Ng­¬i kh«ng cã Bang Héi th× kh«ng cÇn ph¶i nãi chuyÖn víi ta ®©u !")
return
end
if vt == 0 then
	Talk(1,"","Bang héi cña ng­¬i kh«ng cã ký göi Tö Thñy Tinh ë chç ta !")
else
	Talk(1,"","HiÖn t¹i cßn <color=pink>"..DSTTT[vt][2].." viªn Tö Thñy Tinh<color> ký göi t¹i ®©y !")
end

end
function kiemtrattt1()
bang = GetTongName()
vt =checktontai1(bang)
if GetTongName() == "" then
Talk(1,"","Ng­¬i kh«ng cã Bang Héi th× kh«ng cÇn ph¶i nãi chuyÖn víi ta ®©u !")
return
end
if vt == 0 then
	Talk(1,"","Bang héi cña ng­¬i kh«ng cã ký göi Tö Thñy Tinh ë chç ta !")
else
	Talk(1,"","HiÖn t¹i cßn <color=pink>"..DSXL[vt][2].." viªn X¸ Lîi Kim §¬n<color> ký göi t¹i ®©y !")
end
end

function rutttt()
bang = GetTongName()
vt =checktontai(bang)
if GetTongName() == "" then
Talk(1,"","Ng­¬i kh«ng cã Bang Héi th× kh«ng cÇn ph¶i nãi chuyÖn víi ta ®©u !")
return
end

if GetTongFigure() == 3 then
if vt == 0 then
	Talk(1,"","Bang héi cña ng­¬i kh«ng cã ký göi Tö Thñy Tinh ë chç ta !")
else
	if DSTTT[vt][2] <= 0 then
		Talk(1,"","<color=green>Qu¶n Lý Phong L¨ng §é <color>: HiÖn t¹i ta kh«ng cã gi÷ viªn Tö Thñy Tinh nµo cña nhµ ng­¬ c¶ !")
	else
		num = 0
		for i=1,DSTTT[vt][2] do
			if CheckFreeBoxItem(4,29,1,1) == 0 then
				break
			end
			num = num + 1
			AddEventItem(29)
			DSTTT[vt][2] = DSTTT[vt][2] - 1 
			Msg2Player("B¹n nhËn ®­îc 1 <color=pink>Tö Thñy Tinh.")	
		end
		if num ~= 0 then
			Msg2SubWorld(""..chucvu(GetTongFigure()).." "..bang.."- <color=yellow>"..GetName().."<color=red> ®· rót <color=pink>"..num.." viªn Tö Thñy Tinh <color=red>ký göi t¹i Qu¶n Lý Phong L¨ng §é !")
		else
			Talk(1,"","R­¬ng ®Çy råi mµ cßn rót hoµi vËy !")
		end
		BANG = TaoBang(DSTTT,"DSTTT")				
		LuuBang("datascript/banghoi/dstuthuytinh.lua",BANG)
	end
end
else
	Talk(1,"","ChØ cã Bang Chñ míi cã thÓ rót Tö Thñy Tinh §­îc !")
end


end


function rutttt1()
bang = GetTongName()
vt =checktontai1(bang)
if GetTongName() == "" then
Talk(1,"","Ng­¬i kh«ng cã Bang Héi th× kh«ng cÇn ph¶i nãi chuyÖn víi ta ®©u !")
return
end

if GetTongFigure() == 3 then
if vt == 0 then
	Talk(1,"","Bang héi cña ng­¬i kh«ng cã ký göi viªn X¸ Lîi Kim §¬n nµo ë chç ta !")
else
	if DSXL[vt][2] <= 0 then
		Talk(1,"","<color=green>Qu¶n Lý Phong L¨ng §é <color>: HiÖn t¹i ta kh«ng cã gi÷ viªn X¸ Lîi Kim §¬n nµo cña nhµ ng­¬i c¶ !")
	else
		num = 0
		for i=1,DSXL[vt][2] do
			if CheckFreeBoxItem(4,29,1,1) == 0 then
				break
			end
			num = num + 1
			AddEventItem(59)
			DSXL[vt][2] = DSXL[vt][2] - 1 
			Msg2Player("B¹n nhËn ®­îc 1 <color=pink>X¸ Lîi Kim §¬n")	
		end
		if num ~= 0 then
			Msg2SubWorld(""..chucvu(GetTongFigure()).." "..bang.."- <color=yellow>"..GetName().."<color=red> ®· rót <color=pink>"..num.." viªn X¸ Lîi Kim §¬n <color=red>ký göi t¹i Qu¶n Lý Phong L¨ng §é !")
		else
			Talk(1,"","R­¬ng ®Çy råi mµ cßn rót hoµi vËy !")
		end
		BANG = TaoBang(DSXL,"DSXL")				
		LuuBang("datascript/banghoi/dsxaloikimdon.lua",BANG)
	end
end
else
	Talk(1,"","ChØ cã Bang Chñ míi cã thÓ rót X¸ Lîi Kim §¬n §­îc !")
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

function OnDrop()
end

function OnDeath()
name = GetName()
bang = GetTongName()
idx = PlayerIndex
h,m,s = GetTimeNew()

if h < 17 then

if GetTongName() == "" then
	Msg2SubWorld("Chóc mõng "..GetName().." ®· tiªu diÖt Boss Phong L¨ng §é §¹o TÆc vµ mang vÒ cho m×nh <color=yellow>5 viªn X¸ Lîi Kim §¬n !")
	for k=1,5 do AddEventItem(29) end
	Msg2Player("B¹n nhËn ®­îc <color=pink>5 X¸ Lîi Kim §¬n")
else
	soluong = random(10,30)
	Msg2SubWorld("Chóc mõng "..GetName().." ®· tiªu diÖt Boss Phong L¨ng §é §¹o TÆc vµ mang vÒ cho <color=yellow>[Bang Héi - "..bang.."] <color=red> "..soluong.." viªn X¸ Lîi Kim §¬n !")
	if getn(DSXL) == 0 then
		DSXL[getn(DSXL)+1] = {bang,soluong,"59"}
	else
		vt = checktontai1(bang)
		if  vt == 0 then
			DSXL[getn(DSXL)+1] = {bang,soluong,"59"}
		else
			DSXL[vt][2] = DSXL[vt][2] + soluong
		end
	end
	BANG = TaoBang(DSXL,"DSXL")				
	LuuBang("datascript/banghoi/dsxaloikimdon.lua",BANG)

	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		if GetName() ~= "" and GetName() ~= nil then
			if GetTongName() == bang then
				for k=1,1000 do AddOwnExp(20000) end
				Msg2Player("B¹n nhËn ®­îc <color=yellow>20.000.000<color=red> kinh nghiÖm !")
			end
		end
	end
end

else
if GetTongName() == "" then
	Msg2SubWorld("Chóc mõng "..GetName().." ®· tiªu diÖt Boss Phong L¨ng §é §¹o TÆc vµ mang vÒ cho m×nh <color=yellow>3 viªn Tö Thñy Tinh !")
	for k=1,3 do AddEventItem(29) end
	Msg2Player("B¹n nhËn ®­îc <color=pink>3 Tö Thñy Tinh")
else
	soluong = random(5,15)
	Msg2SubWorld("Chóc mõng "..GetName().." ®· tiªu diÖt Boss Phong L¨ng §é §¹o TÆc vµ mang vÒ cho <color=yellow>[Bang Héi - "..bang.."] <color=red> "..soluong.." viªn Tö Thñy Tinh !")
	if getn(DSTTT) == 0 then
		DSTTT[getn(DSTTT)+1] = {bang,soluong,"29"}
	else
		vt = checktontai(bang)
		if  vt == 0 then
			DSTTT[getn(DSTTT)+1] = {bang,soluong,"29"}
		else
			DSTTT[vt][2] = DSTTT[vt][2] + soluong
		end
	end
	BANG = TaoBang(DSTTT,"DSTTT")				
	LuuBang("datascript/banghoi/dstuthuytinh.lua",BANG)

	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		if GetName() ~= "" and GetName() ~= nil then
			if GetTongName() == bang then
				for k=1,1000 do AddOwnExp(20000) end
				Msg2Player("B¹n nhËn ®­îc <color=yellow>20.000.000<color=red> kinh nghiÖm !")
			end
		end
	end
end

end


PlayerIndex = idx
end

function checktontai(bang)
for i=1,getn(DSTTT) do 
	if DSTTT[i][1] == bang then
		return i
	end
end
return 0
end

function checktontai1(bang)
for i=1,getn(DSXL) do 
	if DSXL[i][1] == bang then
		return i
	end
end
return 0
end