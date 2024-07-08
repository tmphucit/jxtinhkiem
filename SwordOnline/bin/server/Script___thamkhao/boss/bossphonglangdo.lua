Include("\\datascript\\banghoi\\bosspld.lua")
Include("\\script\\lib\\thuvien.lua")


function main()
SayNew("<color=green>Qu¶n Lý Phong L¨ng §é <color>: Ta chuyªn qu¶n lý tÊt c¶ vÊn ®Ò vÒ Phong L¨ng §é ",3,
"KiÓm tra phÇn th­ëng cßn l¹i /kiemtra",
"Ta muèn lÊy phÇn th­ëng Boss/rutphanthuong",
"Thoat./no")
end

function kiemtra()
SayNew("<color=green>Qu¶n Lý Phong L¨ng §é <color>: Ng­¬i muèn kiÓm tra g× ?",3,
"Ta muèn kiÓm tra sè l­îng vËt phÈm göi/kiemtrapld",
"Tho¸t./no")
end

function kiemtrapld()
bang = GetTongName()
vt =checktontai(bang)
if GetTongName() == "" then
Talk(1,"","Ng­¬i kh«ng cã Bang Héi th× kh«ng cÇn ph¶i nãi chuyÖn víi ta ®©u !")
return
end
if vt == 0 then
	Talk(1,"","Bang héi cña ng­¬i kh«ng cã ký göi Tói Hång Bao ë chç ta !")
else
	Msg2Player("<color=yellow>HiÖn t¹i ta ®ang gi÷ cña ng­¬i: ")
	Msg2Player("<color=green>- "..BOSSPLD[vt][2].." Tö Thñy Tinh")
	Msg2Player("<color=green>- "..BOSSPLD[vt][3].." X¸ Lîi Kim §¬n")
	Msg2Player("<color=green>- "..BOSSPLD[vt][4].." M·nh Hoµng Kim")
	Msg2Player("<color=green>- "..BOSSPLD[vt][5].." §¸ T¸i T¹o")
	Msg2Player("<color=green>- "..BOSSPLD[vt][6].." v¹n l­îng")
end
end


function rutphanthuong()
SayNew("<color=green>Qu¶n Lý Phong L¨ng §é <color>: Ng­¬i muèn rót phÇn th­ëng nµo ?",6,
"Ta muèn rót Tö Thñy Tinh /rutphanthuong1",
"Ta muèn rót X¸ Lîi Kim §¬n /rutphanthuong1",
"Ta muèn rót M·nh Hoµng Kim /rutphanthuong1",
"Ta muèn rót §¸ T¸i T¹o /rutphanthuong1",
"Ta muèn rót Ng©n L­îng /rut_nganluong",
"Tho¸t./no")
end

function rutphanthuong1(nsel)
vitri = nsel + 1

IDITEM = -1
NAMEITEM = ""
if vitri == 1 then
	IDITEM = 29
	NAMEITEM = "Tö Thñy Tinh"
	VITRIITEM = 2
elseif vitri == 2 then
	IDITEM = 59
	NAMEITEM = "X¸ Lîi Kim §¬n"
	VITRIITEM = 3
elseif vitri == 3 then
	IDITEM = RandomNew(895, 903)
	NAMEITEM = "M·nh Hoµng Kim"
	VITRIITEM = 4
elseif vitri == 4 then
	IDITEM = 415
	NAMEITEM = "§¸ T¸i T¹o"
	VITRIITEM = 5
end

if (IDITEM == -1) then
return
end
if CheckFreeBoxItem(4,29,1,1) == 0 then
				Talk(1,"","Hµnh trang ®· ®Çy, kh«ng thÓ rót !")
				return
end
			
			
bang = GetTongName()
vt =checktontai(bang)
if GetTongName() == "" then
Talk(1,"","Ng­¬i kh«ng cã Bang Héi th× kh«ng cÇn ph¶i nãi chuyÖn víi ta ®©u !")
return
end

if GetTongFigure() == 3 then
if vt == 0 then
	Talk(1,"","Bang héi cña ng­¬i kh«ng cã ký göi Tói Hång Bao ë chç ta !")
else
	if BOSSPLD[vt][VITRIITEM] <= 0 then
		Talk(1,"","<color=green>Qu¶n Lý Phong L¨ng §é <color>: HiÖn t¹i ta kh«ng cã gi÷ "..NAMEITEM.." nµo cña nhµ ng­¬i c¶ !")
	else

		BOSSPLD[vt][VITRIITEM] = BOSSPLD[vt][VITRIITEM] - 1 					
		BANG = TaoBang(BOSSPLD,"BOSSPLD")
		LuuBang("datascript/banghoi/bosspld.lua",BANG)
		SaveData()

	
		idxitem = AddEventItem(IDITEM)
		Msg2Player("B¹n nhËn ®­îc 1 <color=pink>"..GetNameItemBox(idxitem).." ")	
		Msg2SubWorld(""..chucvu(GetTongFigure()).." "..bang.."- <color=yellow>"..GetName().."<color=red> ®· rót <color=pink>"..GetNameItemBox(idxitem).." <color=red>ký göi t¹i Qu¶n Lý Phong L¨ng §é !")
		inlog("[Tói: "..GetItemCount(IDITEM).."] [Kho: "..BOSSPLD[vt][VITRIITEM].."]  ["..GetNameItemBox(idxitem).."]["..GetAccount().."]["..GetName().."]["..GetIP().."]")

	end
end
else
	Talk(1,"","ChØ cã Bang Chñ míi cã thÓ rót "..NAMEITEM.." ®­îc")
end
end


function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/RutPhongLangDo.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end


function rut_nganluong()
bang = GetTongName()
vt =checktontai(bang)
if GetTongName() == "" then
Talk(1,"","Ng­¬i kh«ng cã Bang Héi th× kh«ng cÇn ph¶i nãi chuyÖn víi ta ®©u !")
return
end

if GetTongFigure() == 3 then
if vt == 0 then
	Talk(1,"","Bang héi cña ng­¬i kh«ng cã ký göi Ng©n L­îng ë chç ta !")
else
	if BOSSPLD[vt][6] <= 0 then
		Talk(1,"","<color=green>Qu¶n Lý Phong L¨ng §é <color>: HiÖn t¹i ta kh«ng cã gi÷ Ng©n L­îng nµo cña nhµ ng­¬i c¶ !")
	else
	
	truoc = GetCash()
			vang = BOSSPLD[vt][6]
			BOSSPLD[vt][6] = 0
			Earn(vang * 10000)
			Msg2Player("B¹n nhËn ®­îc <color=pink>"..vang.." v¹n l­îng")	
			Msg2SubWorld(""..chucvu(GetTongFigure()).." "..bang.."- <color=yellow>"..GetName().."<color=red> ®· rót <color=pink>"..vang.." v¹n l­îng <color=red>ký göi t¹i Qu¶n Lý Phong L¨ng §é !")

		inlog("[Ng©n l­îng] [Tr­íc: "..truoc.."] [Sau: "..GetCash().."] ["..GetAccount().."]["..GetName().."]["..GetIP().."]")

			
		BANG = TaoBang(BOSSPLD,"BOSSPLD")
		LuuBang("datascript/banghoi/bosspld.lua",BANG)
		SaveData()
	end
end
else
	Talk(1,"","ChØ cã Bang Chñ míi cã thÓ rót Ng©n L­îng ®­îc !")
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
ngay = tonumber(date("%d"))

if GetTongName() == "" then
	Msg2SubWorld("Chóc mõng "..GetName().." ®· tiªu diÖt Boss Phong L¨ng §é §¹o TÆc vµ mang vÒ cho m×nh <color=yellow>3 Viªn Thñy Tinh!")
	for k=1,3 do AddEventItem(random(28,30)) end
else


	Msg2SubWorld("Chóc mõng "..GetName().." ®· tiªu diÖt Boss Phong L¨ng §é §¹o TÆc vµ mang vÒ cho <color=yellow>[Bang Héi - "..bang.."] <color=red>:")
	
	thuytinh = RandomNew(5,10)
	xaloi = RandomNew(5,10)
	manhhk = RandomNew(1,2)
	
	Msg2SubWorld("- "..thuytinh.." Tö Thñy Tinh")
	Msg2SubWorld("- "..xaloi.." X¸ Lîi Kim §¬n")
	Msg2SubWorld("- "..manhhk.." M·nh Hoµng Kim")
	Msg2SubWorld("- 1 §¸ T¸i T¹o")
	Msg2SubWorld("- 500 v¹n l­îng")
	if getn(BOSSPLD) == 0 then
		BOSSPLD[getn(BOSSPLD)+1] = {bang,thuytinh,xaloi,manhhk,1,500}
	else
		vt = checktontai(bang)
		if  vt == 0 then
			BOSSPLD[getn(BOSSPLD)+1] = {bang,thuytinh,xaloi,manhhk,1,500}
		else
			BOSSPLD[vt][2] = BOSSPLD[vt][2] + thuytinh
			BOSSPLD[vt][3] = BOSSPLD[vt][3] + xaloi
			BOSSPLD[vt][4] = BOSSPLD[vt][4] + manhhk
			BOSSPLD[vt][5] = BOSSPLD[vt][5] + 1
			BOSSPLD[vt][6] = BOSSPLD[vt][6] + 500
		end
	end
	BANG = TaoBang(BOSSPLD,"BOSSPLD")		
	LuuBang("datascript/banghoi/bosspld.lua",BANG)
		for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		if GetName() ~= "" and GetName() ~= nil then
			if GetTongName() == bang then
					for k=1,200 do AddOwnExp(100000) end
					Msg2Player("B¹n nhËn ®­îc <color=yellow>20.000.000<color=red> kinh nghiÖm !")
			end
		end
	end
end

PlayerIndex = idx
end

function checktontai(bang)
for i=1,getn(BOSSPLD) do 
	if BOSSPLD[i][1] == bang then
		return i
	end
end
return 0
end
