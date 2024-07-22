Include("\\script\\lib\\thuvien.lua")
Include("\\script\\source.lua")
Include("\\datascript\\veso\\danhsachdangky.lua")
Include("\\datascript\\veso\\danhsachtrunggiai.lua")


tilethang = 35

function main()
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if (gio == 20 and phut >= 30) or gio > 20 then
	if GetGlbMissionV(50) ~= ngay then
		SetGlbMissionV(50,ngay)
		sotrung = random(1,99)
		sotrung2 = random(1,99)
		if sotrung2 == sotrung then
			sotrung2 = random(1,99)
		end
		for k=1,5 do Msg2SubWorld("<color=yellow>ThÇn Tµi: KÕt qu¶ VÐ Sè May M¾n ngµy "..ngay.." lµ: <color=pink>"..sotrung.." vµ "..sotrung2.." ") end
		AddGlobalCountNews("ThÇn Tµi: KÕt qu¶ VÐ Sè May M¾n ngµy "..ngay.." lµ: <color=pink>"..sotrung.."<color> vµ <color=pink>"..sotrung2.."<color>. Chóc mõng nh÷ng ®¹i hiÖp may m¾n tróng gi¶i ",3)
		addphanthuong(sotrung,sotrung2)
	end
end

SayNew("<color=green>ThÇn Tµi<color>: PhÇn th­ëng VÐ Sè CÇu May sÏ thay ®æi theo ngµy ®Ó ®¶m b¶o c©n b»ng game.\nPhÇn th­ëng nÕu tróng gi¶i ngµy h«m nay lµ: <color=yellow>x"..tilethang.." lÇn ®Æt c­îc <color>",4,
"Mua VÐ Sè CÇu May /banveso",
"NhËn phÇn th­ëng tróng sè /nhanphanthuong",
"§Æt c­íc may m¾n/quayso",
"Tho¸t./no")
end
function nhanphanthuong()
vt = checkds2()
if vt == 0 then
Talk(1,"","B¹n kh«ng cã tªn trong danh s¸ch nhËn th­ëng !")
return
end

tienvan = GetCash()
vang = GetTask(99)

if GetName() == dstrungthuong[vt][1] then
	if dstrungthuong[vt][5] == 1 then
		dstrungthuong[vt][1] = ""
		if dstrungthuong[vt][1] == "" then
			Earn(dstrungthuong[vt][4] * 10000)
			savebang2()
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/VeSo/NhanPhanThuong.txt", "a");
				if LoginLog then
					write(LoginLog,""..GetAccount().." - "..GetName().." - Tien Nhan: "..(dstrungthuong[vt][4] * 10000).." Van Luong - Time: "..thoigian.."\n");
				end
				closefile(LoginLog)
			if GetCash() ~= tienvan + dstrungthuong[vt][4] * 10000 then
				a = GetCash()
				Pay(a)
				Talk(1,"","Hack ha em, anh tru het tien cua em roi nhe !")

				LoginLog = openfile("Data/VeSo/CoLoiHack.txt", "a");
				if LoginLog then
					write(LoginLog,"Account: "..GetAccount().." - "..GetName().." - "..a.." van luong \n");
				end
				closefile(LoginLog)
			end
			Msg2Player("B¹n nhËn ®­îc "..dstrungthuong[vt][4].." v¹n l­îng !")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	elseif dstrungthuong[vt][5] == 2 then
		dstrungthuong[vt][1] = ""
		if dstrungthuong[vt][1] == "" then
			SetTask(99,GetTask(99) + dstrungthuong[vt][4] * 20)
			SetTask(101,GetTask(101) + dstrungthuong[vt][4] * 20)
			savebang2()

				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/VeSo/NhanPhanThuong.txt", "a");
				if LoginLog then
					write(LoginLog,""..GetAccount().." - "..GetName().." - Tien Nhan: "..(dstrungthuong[vt][4] * 20).." Vang - Time: "..thoigian.."\n");
				end
				closefile(LoginLog)
			if GetTask(99) ~= vang + dstrungthuong[vt][4] * 20 then
				a = GetTask(99)
				SetTask(99,0)
				SetTask(101,0)
				Talk(1,"","Hack ha em, anh tru het tien cua em roi nhe !")

				LoginLog = openfile("Data/VeSo/CoLoiHack.txt", "a");
				if LoginLog then
					write(LoginLog,"Account: "..GetAccount().." - "..GetName().." - "..a.." vang \n");
				end
				closefile(LoginLog)
			end
			Msg2Player("B¹n nhËn ®­îc "..(dstrungthuong[vt][4]*20).." vµng !")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	end
else
	Talk(1,"","Lçi tªn trong danh s¸ch, liªn hÖ GM ®Ó gi¶i quyÕt !")
end
end

function checkds2()
num = 0
for i=1,getn(dstrungthuong) do
	if GetName() == dstrungthuong[i][1] then
		num = i
		break
	end
end
return num
end

function addphanthuong(kqso,kqso2)
ngay = tonumber(date("%d"))
Msg2SubWorld("Danh s¸ch nh÷ng ng­êi tróng gi¶i: ")
stt = 0
tienthu = 0
knbthu = 0
tienchi = 0
knbchi = 0

savebang3()

for i=1,getn(dsmuaveso) do	
	if dsmuaveso[i][5] == 1 then
		tienthu = tienthu +dsmuaveso[i][4]
	elseif dsmuaveso[i][5] == 2 then
		knbthu = knbthu +dsmuaveso[i][4]
	end

	if dsmuaveso[i][3] == kqso or dsmuaveso[i][3] == kqso2 then
		stt = stt + 1
		Msg2SubWorld(""..stt.."."..dsmuaveso[i][1]..": <color=green>"..(dsmuaveso[i][4]*tilethang).." "..donvi2(dsmuaveso[i][5]).." ")

		if dsmuaveso[i][5] == 1 then
			tienchi = tienchi +dsmuaveso[i][4]*tilethang
		elseif dsmuaveso[i][5] == 2 then
			knbchi = knbchi +dsmuaveso[i][4]*tilethang
		end

		dstrungthuong[getn(dstrungthuong)+1] = {dsmuaveso[i][1],dsmuaveso[i][2],dsmuaveso[i][3],dsmuaveso[i][4]*tilethang,dsmuaveso[i][5],ngay}
	end
end
dsmuaveso = {}

savebang()
savebang2()

LoginLog = openfile("Data/VeSo/ThongKeVeSo.txt", "a");
if LoginLog then
	write(LoginLog,"Ngay: "..ngay.." - Tien Van Thu: "..tienthu.." - KNB Thu: "..knbthu.." - Tien Chi: "..tienchi.." - KNB Chi: "..knbchi.." \n");
end
closefile(LoginLog)

end


function quayso()
Talk(1,"","Chøc n¨ng ®ang cËp nhËt !")
end

function banveso()

gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if (gio == 20 and phut >= 30) or gio > 20 then
Talk(1,"","Thêi gian mua vÐ sè b¾t ®Çu vµo lóc 0h00 - 20h30 mçi ngµy !")
return
end

SayNew("<color=green>ThÇn Tµi<color>:\nSè ®· chän: <color=red>"..GetTaskTemp(45).."<color>\nSè tiÒn c­îc: <color=yellow>"..GetTaskTemp(46) .." "..donvi().." ",4,
"NhËp Sè /chonso",
"§Æt Cuéc /chonloaitien",
"X¸c nhËn mua vÐ sè /xacnhan",
"Tho¸t./no")
end


function chonso()
OpenStringBox(2,"NhËp sè tõ 1 - 99","okveso")
end


function okveso(numa)
num = tonumber(numa)

	
if num > 0 and num < 100 then
	SetTaskTemp(45,num)
	Msg2Player("B¹n ®· chän sè: <color=yellow>"..num.." ")
	chonloaitien()
else
	Talk(1,"","<color=red>Lçi: VÐ sè chØ ®­îc nhËp tõ 1 - 99 !")
end
end

function savebang()
BANG = TaoBang(dsmuaveso,"dsmuaveso")				
LuuBang("datascript/veso/danhsachdangky.lua",BANG)
end
function savebang2()
BANG = TaoBang(dstrungthuong,"dstrungthuong")				
LuuBang("datascript/veso/danhsachtrunggiai.lua",BANG)
end
function savebang3()
BANG = TaoBang(dsmuaveso,"dsmuaveso")				
LuuBang("datascript/veso/backupdanhsachdangky.lua",BANG)
end



function chonloaitien()
SetTaskTemp(46,0)
SayNew("<color=green>ThÇn Tµi<color>: Chon lo¹i ®¬n vÞ tiÒn tÖ:",3,
"Ng©n l­îng/tiente",
"Kim Nguyªn B¶o /tiente",
"Tho¸t./no")
end
function tiente(nsel)
SetTaskTemp(47,nsel+1)
Msg2Player("B¹n ®· chän ®¬n vÞ tiÒn tÖ: <color=yellow>"..donvi().." ")
nhapsotien()
end
function donvi()
if GetTaskTemp(47) == 1 then
return "V¹n L­îng"
elseif GetTaskTemp(47) == 2 then
return "Kim Nguyªn B¶o"
else
return ""
end
end
function donvi2(num)
if num == 1 then
return "V¹n L­îng"
elseif num == 2 then
return "Kim Nguyªn B¶o"
else
return ""
end
end

function nhapsotien()
if GetTaskTemp(47) == 1 then
	OpenStringBox(2,"NhËp 50-500 v¹n","oknhaptien")
elseif GetTaskTemp(47) == 2 then
	OpenStringBox(2,"NhËp 1-5 KNB","oknhaptien")
else
	chonloaitien()
end
end


function oknhaptien(numa)
num = tonumber(numa)

if GetTaskTemp(47) == 0 then
Talk(1,"","<color=red>Lçi: B¹n ch­a chän lo¹i ®¬n vÞ tiÒn tÖ !")
return
end

if num < 0 then
Talk(1,"","<color=red>Lçi: Kh«ng ®­îc ®Ó trèng !")
return
end

if GetTaskTemp(47) == 1 then
	if num >= 50 and num <= 500 then
		SetTaskTemp(46,num)
		Msg2Player("B¹n ®· nhËp sè tiÒn c­îc: <color=yellow>"..num.." v¹n l­îng.")
		banveso()
	else
		Talk(1,"","Lçi: ChØ ®­îc ®Æt c­îc tõ 50 - 500 v¹n l­îng !")
	end
elseif GetTaskTemp(47) == 2 then
	if num > 0 and num <= 5 then
		SetTaskTemp(46,num)
		Msg2Player("B¹n ®· nhËp sè tiÒn c­îc: <color=yellow>"..num.." Kim Nguyªn B¶o")
		banveso()
	else
		Talk(1,"","Lçi: ChØ ®­îc ®Æt c­îc tõ 1 - 5 Kim Nguyªn B¶o !")
	end
else
	Talk(1,"","<color=red>Lçi: B¹n ch­a chän lo¹i ®¬n vÞ tiÒn tÖ !")	
end
end

function xacnhan()
vt = checkds()

if vt  > 10 then
Msg2Player("H«m nay b¹n ®· mua 10 sè råi, kh«ng thÓ mua thªm !")
return
end

van = GetCash()
knb = GetItemCount(17)

if GetTaskTemp(47) == 0 or GetTaskTemp(45) == 0 or GetTaskTemp(46) == 0 then
Talk(1,"","B¹n ch­a nhËp ®ñ c¸c b­íc yªu cÇu !")
return
end

if GetTaskTemp(47) == 1 and GetTaskTemp(46) >= 50 and GetTaskTemp(46) <= 500 and vt <= 10 then
	tienvannhap = GetTaskTemp(46) * 10000
	if GetCash() >= tienvannhap then
		Pay(tienvannhap)
		if GetCash() == van-tienvannhap then
			dsmuaveso[getn(dsmuaveso)+1] = {GetName(),GetAccount(),GetTaskTemp(45),GetTaskTemp(46),GetTaskTemp(47)}
			Msg2SubWorld("§¹i hiÖp [<color=green>"..GetName().."<color=red>] ®· thö vËn may víi <color=yellow>VÐ Sè May M¾n "..GetTaskTemp(45).." cña ThÇn Tµi<color=red>, chóc b¹n may m¾n giµnh ®­îc gi¶i th­ëng x"..tilethang.." tiÒn c­îc !")
			savebang()
	
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/VeSo/MuaVeSoTienVan.txt", "a");
				if LoginLog then
					write(LoginLog,""..GetAccount().." - "..GetName().." - So: "..GetTaskTemp(45).." - Tien "..GetTaskTemp(46).." - Time: "..thoigian.."\n");
				end
				closefile(LoginLog)
			
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
		Talk(1,"","B¹n kh«ng mang ®ñ <color=yellow>"..tienvannhap.." l­îng<color>, kh«ng thÓ mua vÐ sè !")
	end
elseif GetTaskTemp(47) == 2 and GetTaskTemp(46) >= 1 and GetTaskTemp(46) <= 5 and vt <= 10 then
	knbnhap = GetTaskTemp(46)
	if GetItemCount(17) >= knbnhap then
		for k=1,knbnhap do DelItem(17) end
		if GetItemCount(17) == knb-knbnhap then
				dsmuaveso[getn(dsmuaveso)+1] = {GetName(),GetAccount(),GetTaskTemp(45),GetTaskTemp(46),GetTaskTemp(47)}
				Msg2SubWorld("§¹i hiÖp [<color=green>"..GetName().."<color=red>] ®· thö vËn may víi <color=yellow>VÐ Sè May M¾n "..GetTaskTemp(45).." cña ThÇn Tµi<color=red>, chóc b¹n may m¾n giµnh ®­îc gi¶i th­ëng x"..tilethang.." tiÒn c­îc !")
			savebang()
	
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/VeSo/MuaVeSoKNB.txt", "a");
				if LoginLog then
					write(LoginLog,""..GetAccount().." - "..GetName().." - So: "..GetTaskTemp(45).." - Tien "..GetTaskTemp(46).." - Time: "..thoigian.."\n");
				end
				closefile(LoginLog)
				Talk(0,"")
		else
			Talk(1,"","hack ha em ")
		end
	else
		Talk(1,"","B¹n kh«ng mang ®ñ <color=yellow>"..knbnhap.." Kim Nguyªn B¶o<color>, kh«ng thÓ mua vÐ sè !")
	end		
else
	Talk(1,"","Lçi: kh«ng nhËp ®ñ d÷ liÖu yªu cÇu !")
end

end





function checkds()
num = 0
for i=1,getn(dsmuaveso) do
	if GetName() == dsmuaveso[i][1] then
		num = num + 1
	end
end
return num
end

function no()
end