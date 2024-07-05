Include("\\datascript\\thanbi\\logvodanh.lua")
Include("\\script\\lib\\thuvien.lua")

function main()
-- Say("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>: Ta chuyªn mua b¸n vËt phÈm gi¸ trÞ cao b»ng ng©n l­îng",4,
-- "Mua X¸ Lîi Kim §¬n /muathanbi",
-- "Mua LÖnh Bµi PLD /mualb",
-- "Mua Qu¶ Hoµng Kim/muaquahk",
-- "Mua BÝ Kip 120 /muabk120",
-- "Tho¸t./no")
-- end
Talk(1,"","TÝnh n¨ng ®ang cËp nhÊt ...C¶m ¬n c¸c h¹ ®· tham gia <color =bule>BÝch Long<color> Vâ L©m")
end

function muabk120()
Say("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>: B¹n cã ch¾c ch¾n muèn mua Bi Kip 120 víi gi¸ <color=yellow>200<color> vµng ",2,
"Mua Bi Kip 120/yesbk120",
"Kh«ng mua/no")
end

function yesbk120()

if CheckFreeBoxItem(0,10,8,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng !")
return
end
 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 200 and GetTask(101) >= 200 and CheckFreeBoxItem(0,10,8,1) ~= 0 then
	SetTask(99,GetTask(99) - 200)
	SetTask(101,GetTask(101) - 200)
	if GetTask(99) == vang-200 and GetTask(101) == vang2 - 200 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(0,10,8,1) ~= 0 then
		AddEventItem(19)
		inlogbk("Log: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B¹n nhËn ®­îc 1 Bi KÝp 120")
		Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." ®· mua thµnh c«ng <color=yellow>BÝ Kip 120<color> t¹i Shop ThÇn BÝ Th­¬ng Nh©n")
		
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ <color=yellow>200<color> vµng, kh«ng thÓ giao dÞch!")
end
end

function muaphivan()
Say("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>: B¹n cã ch¾c ch¾n muèn mua Phi V©n ThÇn M· víi gi¸ <color=yellow>250<color> vµng ",2,
"Mua Phi V©n/yespv",
"Kh«ng mua/no")
end

function yespv()
if CheckFreeBoxItem(0,10,8,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng !")
return
end
 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 250 and GetTask(101) >= 250 and CheckFreeBoxItem(0,10,8,1) ~= 0 then
	SetTask(99,GetTask(99) - 250)
	SetTask(101,GetTask(101) - 250)
	if GetTask(99) == vang-250 and GetTask(101) == vang2 - 250 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(0,10,8,1) ~= 0 then
		AddItem(0,10,8,1,0,0,0)
		inlogphivan("Log: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B¹n nhËn ®­îc 1 Phi V©n ThÇn M· ")
		Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." ®· mua thµnh c«ng <color=yellow>ThÇn M· Phi V©n<color> t¹i Shop ThÇn BÝ Th­¬ng Nh©n")
		
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ <color=yellow>250<color> vµng, kh«ng thÓ giao dÞch!")
end
end

function xoanv()
for i=1,getn(VoDanh) do
	if VoDanh[i][3] ~= 9999 then
		Talk(1,"","§· xãa tµi kho¶n: "..VoDanh[i][1].." - Nh©n vËt: "..VoDanh[i][2].." ")
		VoDanh[i][3] = 9999
		savebang()
		return
	end
end
end
function kiemtranv()
vt = kiemtranv2()
if vt == 0 then
Talk(1,"","HiÖn kh«ng cã nh©n vËt nµo cÇn gi¶i quyÕt c¶ !")
return
end
Talk(1,"","Tµi Kho¶n s¾p hÕt h¹n: [<color=green>"..VoDanh[vt][1].."<color>] - NV: "..VoDanh[vt][2].." - Mua ngµy: "..VoDanh[vt][4].." th¸ng "..VoDanh[vt][5].." ")
end
function kiemtranv2()
for i=1,getn(VoDanh) do
	if VoDanh[i][3] ~= 9999 then
		return i
	end
end
return 0
end

function muavodanh()
Say("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>: \nCÆp NhÉn V« Danh Giíi ChØ [30 ngµy]. \nGi¸: 10 Kim Nguyªn B¶o\nNg­¬i cã ch¾c ch¾n muèn mua kh«ng? ",2,
"Ta ®ång ý mua vËt phÇm nµy /muavodanh2",
"Xin lçi ®· lµm phiÒn ng­¬i/no")
end


function muavodanh2()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))

slknb = GetItemCount(17)
if GetItemCount(17) >= 10 then
	for i=1,10 do DelItem(17) end
	if GetItemCount(17) == slknb - 10 then
		item1=AddItem(0,3,31,2,0,0,0)
		SetTimeItem(item1,550324);
		item2=AddItem(0,3,32,2,0,0,0)
		SetTimeItem(item2,550324);
		thoigian = tonumber(date("%H%M%d%m"))
		VoDanh[getn(VoDanh)+1] = {GetAccount(),GetName(),GetLevel(),ngay,thang,time}
		savebang()
		Msg2SubWorld("Chóc mõng "..GetName().." ®· mua thµnh c«ng trang bÞ V« Danh Giíi ChØ [30 ngµy] ")
		Msg2Player("<color=green>H¹n sö dông: Ngµy "..ngay.." Th¸ng "..(thang+1).." N¨m 2015")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","§Ó mua vËt phÇm nµy cÇn <color=yellow>10 Kim Nguyªn B¶o<color> !")
end


end

function muasudolenh()
if CheckFreeBoxItem(4,14,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng cßn chç trèng vui lßng kiÓm tra l¹i !")
return
end

slknb = GetItemCount(14) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 10 and GetTask(101) >= 10 and CheckFreeBoxItem(4,14,1,1) ~= 0 then
	SetTask(99,GetTask(99) - 10)
	SetTask(101,GetTask(101) - 10)
	if GetTask(99) == vang-10 and GetTask(101) == vang2 - 10 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(4,14,1,1) ~= 0 then
		AddEventItem(14)
		inlogsudolenh("Vang: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B¹n nhËn ®­îc 1 S­ §å LÖnh")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ <color=yellow>10<color> vµng, kh«ng thÓ giao dÞch !")
end
end

function muathienson()
if CheckFreeBoxItem(4,161,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng cßn chç trèng vui lßng kiÓm tra l¹i !")
return
end

slknb = GetItemCount(161) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 55 and GetTask(101) >= 55 and CheckFreeBoxItem(4,161,1,1) ~= 0 then
	SetTask(99,GetTask(99) - 55)
	SetTask(101,GetTask(101) - 55)
	if GetTask(99) == vang-55 and GetTask(101) == vang2 - 55 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(4,161,1,1) ~= 0 then
		AddEventItem(161)
		inlogtstl("Vang: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B¹n nhËn ®­îc 1 Thien Son Tuyet Lien")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ <color=yellow>55<color> vµng, kh«ng thÓ giao dÞch !")
end
end

function muatt()
Say("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>: Ta chuyªn mua b¸n vËt phÈm gi¸ trÞ cao b»ng ng©n l­îng",3,
"Mua Lam Thñy Tinh/mualtt",
"Mua Lôc Thñy Tinh/mualamtt",
"Tho¸t./no")
end

function muaquahk()
Say("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>: Qu¶ Hoµng Kim ng­¬i muèn mua theo h×nh thøc nµo?  ",3,
"50 v¹n /muaquahk1",
"4 vµng /muaquahk2",
"Tho¸t./no")
end


function muaquahk1()
sl = GetItemCount(22)
a = GetCash()
if GetCash()  >= 500000 then
	Pay(500000)
	if GetCash() == (a-500000) then
		AddEventItem(22)
		Msg2Player("B¹n nhËn ®­îc 1 Qu¶ Hoµng Kim !")
		inlogquahk("Tien Van: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 50 v¹n l­îng !")
end
end


function muaquahk2()
if CheckFreeBoxItem(4,22,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng cßn chç trèng vui lßng kiÓm tra l¹i !")
return
end

slknb = GetItemCount(22) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 4 and GetTask(101) >= 4 and CheckFreeBoxItem(4,22,1,1) ~= 0 then
	SetTask(99,GetTask(99) - 4)
	SetTask(101,GetTask(101) - 4)
	if GetTask(99) == vang-4 and GetTask(101) == vang2 - 4 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(4,22,1,1) ~= 0 then
		AddEventItem(22)
		inlogquahk("Vang: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B¹n nhËn ®­îc 1 Qu¶ Hoµng Kim")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ <color=yellow>4<color> vµng, kh«ng thÓ giao dÞch !")
end
end

function mualtt()
sl = GetItemCount(28)
a = GetCash()
if GetCash()  >= 2500000 then
	Pay(2500000)
	if GetCash() == (a-2500000) then
		AddEventItem(28)
		Msg2Player("B¹n nhËn ®­îc 1 Lôc Thñy Tinh !")
		inlogtb("Luc Thuy Tinh: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 250 v¹n l­îng !")
end
end


function mualamtt()
sl = GetItemCount(30)
a = GetCash()
if GetCash()  >= 2500000 then
	Pay(2500000)
	if GetCash() == (a-2500000) then
		AddEventItem(30)
		Msg2Player("B¹n nhËn ®­îc 1 Lam Thñy Tinh !")
		inlogtb("Lam Thuy Tinh: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 250 v¹n l­îng !")
end
end

function muamdtb()
Say("Chän h×nh thøc thanh to¸n:" ,3,
"60 v¹n l­îng /muamdtb1",
"2 vµng/muamdtb2",
"Tho¸t./no")
end

function muamdtb1()
sl = GetItemCount(253)
a = GetCash()
if GetCash()  >= 600000 then
	Pay(600000)
	if GetCash() == (a-600000) then
		for k=1,20 do AddEventItem(253) end
		Msg2Player("B¹n nhËn ®­îc 20 MËt §å ThÇn BÝ !")
		inlog("Tien Van: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 60 v¹n l­îng !")
end
end



function muamdtb2()
if CheckFreeBoxItem(4,253,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng cßn chç trèng vui lßng kiÓm tra l¹i !")
return
end


slknb = GetItemCount(253) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 2 and GetTask(101) >= 2 and CheckFreeBoxItem(4,253,1,1) ~= 0 then
	SetTask(99,GetTask(99) - 2)
	SetTask(101,GetTask(101) - 2)
	if GetTask(99) == vang-2 and GetTask(101) == vang2 - 2 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(4,253,1,1) ~= 0 then
		for i=1,20 do AddEventItem(253) end
		inlog("Vang: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B¹n nhËn ®­îc 20 MËt §å ThÇn BÝ")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ <color=yellow>2<color> vµng, kh«ng thÓ giao dÞch !")
end
end

function muathanbi()
sl = GetItemCount(59)
a = GetCash()
if GetCash()  >= 2000000 then
	Pay(2000000)
	if GetCash() == (a-2000000) then
		AddEventItem(59)
		inlogtbxaloi("Xa Loi: "..GetName().." - "..GetAccount().." - "..GetPK().." - "..GetLevel().." ")
		Msg2Player("B¹n nhËn ®­îc 1 X¸ Lîi Kim §¬n !")
		Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 200 v¹n l­îng !")
end
end

function mualb()
sl = GetItemCount(135)
a = GetCash()
if GetCash()  >= 300000 then
	Pay(300000)
	if GetCash() == (a-300000) then
		AddEventItem(135)
		Msg2Player("B¹n nhËn ®­îc 1 LÖnh Bµi Phong L¨ng §é !")
		Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 30 v¹n l­îng !")
end
end

function no()
end

function inlogquahk(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/QuaHoangKim.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogtbxaloi(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/XaLoiKimDon.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogtstl(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/ThienSonTuyetLien.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogtb(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/LenhBaiPLD.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogsudolenh(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/SuDoLenh.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end





function inlogphivan(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/MuaPhiVan.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogbk(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/MuaBiKip120.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/ViSonDao.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function giaodich()
Sale(30)
end

function trangphuccuoi()
Sale(31)
end


function savebang()
BANG = TaoBang(VoDanh,"VoDanh")				
LuuBang("datascript/thanbi/logvodanh.lua",BANG)
end
