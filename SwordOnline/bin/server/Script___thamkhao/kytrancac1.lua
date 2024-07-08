Include("\\script\\lib\\thuvien.lua")
Include("\\script\\Global\\sourcejx49.lua")

Include("\\datascript\\napcard\\dscard10.lua")
Include("\\datascript\\napcard\\dscard500.lua")
Include("\\datascript\\napcard\\dscard1000.lua")
Include("\\datascript\\napcard\\dscard30.lua")

Include("\\datascript\\napcard\\card20\\card20_1.lua")
Include("\\datascript\\napcard\\card20\\card20_2.lua")
Include("\\datascript\\napcard\\card20\\card20_3.lua")
Include("\\datascript\\napcard\\card20\\card20_4.lua")
Include("\\datascript\\napcard\\card20\\card20_5.lua")
Include("\\datascript\\napcard\\card20\\card20_6.lua")

Include("\\datascript\\napcard\\card50\\card50_1.lua")
Include("\\datascript\\napcard\\card50\\card50_2.lua")
Include("\\datascript\\napcard\\card50\\card50_3.lua")
Include("\\datascript\\napcard\\card50\\card50_4.lua")
Include("\\datascript\\napcard\\card50\\card50_5.lua")

Include("\\datascript\\napcard\\card100\\card100_1.lua")
Include("\\datascript\\napcard\\card100\\card100_2.lua")
Include("\\datascript\\napcard\\card100\\card100_3.lua")
Include("\\datascript\\napcard\\card100\\card100_4.lua")
Include("\\datascript\\napcard\\card100\\card100_5.lua")

Include("\\datascript\\napcard\\card200\\card200_1.lua")
Include("\\datascript\\napcard\\card200\\card200_2.lua")
Include("\\datascript\\napcard\\card200\\card200_3.lua")
Include("\\datascript\\napcard\\card200\\card200_4.lua")
Include("\\datascript\\napcard\\card200\\card200_5.lua")

Include("\\datascript\\napcard\\card300\\card300_1.lua")
Include("\\datascript\\napcard\\card300\\card300_2.lua")
Include("\\datascript\\napcard\\card300\\card300_3.lua")
Include("\\datascript\\napcard\\card300\\card300_4.lua")
Include("\\datascript\\napcard\\card300\\card300_5.lua")

function main()
SayNew("<color=green>Kú Tr©n C¸c : <color>  HiÖn t¹i b¹n cã <color=red>"..GetTask(99).."<color> vµng",2,
"N¹p thÎ/napthe",
"Tho¸t./no")
end


function napthe()
if GetAccount() == "" then
SayNew("Seri: <color=red>"..GetTaskTemp(32).."<color> \nM· ThÎ  <color=green>"..GetTaskTemp(33).."",5,
"NhËp Seri/nhapseri",
"NhËp M· ThÎ/nhapmathe",
"KiÔm tra vµ n¹p thÎ/napcard",
"Xoa The/xoathe",
"Tho¸t./no")
else
SayNew("Seri: <color=red>"..GetTaskTemp(32).."<color> \nM· ThÎ  <color=green>"..GetTaskTemp(33).."",4,
"NhËp Seri/nhapseri",
"NhËp M· ThÎ/nhapmathe",
"KiÔm tra vµ n¹p thÎ/napcard",
"Tho¸t./no")
end
end

function nhapseri()
OpenStringBox(2,"NhËp Seri","acceptseri")end

function acceptseri(num)
num2 = tonumber(num)
if num2 < 100000 or num2 > 999999 then
Talk(1,"napthe","Seri chØ ®­îc nhËp vµo 6 ch÷ sè tõ 100000 - 999999 ")
return
end
SetTaskTemp(32,num2)
Talk(1,"napthe","Seri ®· nhËp: <color=red> "..num2.." ")
end


function nhapmathe()
OpenStringBox(2,"NhËp M· ThÎ","acceptmathe")end

function acceptmathe(num)
num2 = tonumber(num)
if num2 < 100000 or num2 > 999999 then
Talk(1,"napthe","M· ThÎ chØ ®­îc nhËp vµo 6 ch÷ sè tõ 100000 - 999999 ")
return
end
SetTaskTemp(33,num2)
Talk(1,"napthe","M· thÎ ®· nhËp: <color=green> "..num2.." ")
end

function napcard()
if GetTaskTemp(32) > 115000 then
Talk(1,"","<color=green>Kú Tr©n C¸c<color>: Card kh«ng tån t¹i. Vui lßng kiÓm tra chÝnh x¸c giïm ! ")
return
end
sr = GetTaskTemp(32) 
if sr >= 100001 and sr <= 100500 then
	NAPCARD1(CARD10,"CARD10")
elseif sr >= 100501 and sr <= 101000 then
	NAPCARD1(CARD30,"CARD30")
elseif sr >= 101001 and sr <= 101500 then
	NAPCARD1(CARD500,"CARD500")
elseif sr >= 101501 and sr <= 102000 then
	NAPCARD1(CARD1000,"CARD1000")
elseif sr >= 102001 and sr <= 102500 then
	NAPCARD1(card20_1,"card20_1")
elseif sr >= 102501 and sr <= 103000 then
	NAPCARD1(card20_2,"card20_2")
elseif sr >= 103001 and sr <= 103500 then
	NAPCARD1(card20_3,"card20_3")
elseif sr >= 103501 and sr <= 104000 then
	NAPCARD1(card20_4,"card20_4")
elseif sr >= 104001 and sr <= 104500 then
	NAPCARD1(card20_5,"card20_5")
elseif sr >= 104501 and sr <= 105000 then
	NAPCARD1(card20_6,"card20_6")
elseif sr >= 105001 and sr <= 105500 then
	NAPCARD1(card50_1,"card50_1")
elseif sr >= 105501 and sr <= 106000 then
	NAPCARD1(card50_2,"card50_2")
elseif sr >= 106001 and sr <= 106500 then
	NAPCARD1(card50_3,"card50_3")
elseif sr >= 106501 and sr <= 107000 then
	NAPCARD1(card50_4,"card50_4")
elseif sr >= 107001 and sr <= 107500 then
	NAPCARD1(card50_5,"card50_5")
elseif sr >= 107501 and sr <= 108000 then
	NAPCARD1(card100_1,"card100_1")
elseif sr >= 108001 and sr <= 108500 then
	NAPCARD1(card100_2,"card100_2")
elseif sr >= 108501 and sr <= 109000 then
	NAPCARD1(card100_3,"card100_3")
elseif sr >= 109001 and sr <= 109500 then
	NAPCARD1(card100_4,"card100_4")
elseif sr >= 109501 and sr <= 110000 then
	NAPCARD1(card100_5,"card100_5")
elseif sr >= 110001 and sr <= 110500 then
	NAPCARD1(card200_1,"card200_1")
elseif sr >= 110501 and sr <= 111000 then
	NAPCARD1(card200_2,"card200_2")
elseif sr >= 111001 and sr <= 111500 then
	NAPCARD1(card200_3,"card200_3")
elseif sr >= 111501 and sr <= 112000 then
	NAPCARD1(card200_4,"card200_4")
elseif sr >= 112001 and sr <= 112500 then
	NAPCARD1(card200_5,"card200_5")

elseif sr >= 112501 and sr <= 113000 then
	NAPCARD1(card300_1,"card300_1")
elseif sr >= 113001 and sr <= 113500 then
	NAPCARD1(card300_2,"card300_2")
elseif sr >= 113501 and sr <= 114000 then
	NAPCARD1(card300_3,"card300_3")
elseif sr >= 114001 and sr <= 114500 then
	NAPCARD1(card300_4,"card300_4")
elseif sr >= 114501 and sr <= 115000 then
	NAPCARD1(card300_5,"card300_5")

else
	Talk(1,"","Card kh«ng tån t¹i, vui lßng kiÓm tra l¹i Seri vµ M· ThÎ")
end
end


function NAPCARD1(mang,tenmang)
checkmt = 0
	for i=1,getn(mang) do	if GetTaskTemp(32) == mang[i][2] then		if GetTaskTemp(33) == mang[i][3] then
			checkmt = 1			if mang[i][1] == 0 then			Talk(1,"","<color=green>Kú Tr©n C¸c <color>: <color=red>ThÎ ®· ®­îc sö dông !!!")			else			mang[i][1] = 0			thoigian = tonumber(date("%H%M%d%m"))			b = mang[i][4]			SetTask(99,GetTask(99) + b)
			SetTask(101,GetTask(101) + b )
			

			LuuThayDoiVang("Account: "..GetAccount().." - Char: "..GetName().." them "..b.." vang = "..GetTask(99).."")
			Msg2Player("B¹n ®· n¹p thÎ thµnh c«ng. B¹n nhËn ®­îc  "..b.." vµng")			LuuDanhSachNapCard("\""..tenmang.."\","..GetTaskTemp(32)..","..GetTaskTemp(33)..","..b.."")			SaveData()			Msg2Player("§· n¹p d÷ liÖu vµo hÖ thèng !")			
			

			Talk(0,"")
			end	
		end
	end
	end
if checkmt == 0 then
Talk(1,"","<color=green>Kú Tr©n C¸c <color>: <color=red>M· thÎ <color> b¹n nhËp kh«ng chÝnh x¸c !!!! ")
return
end
end




function xoathe()
if GetTaskTemp(32) < 700000 then
Talk(1,"","<color=green>Kú Tr©n C¸c<color>: Seri cña b¹n kh«ng thuéc Server Long HiÖp. Vui lßng kiÓm tra chÝnh x¸c giïm ! ")
return
end
sr = GetTaskTemp(32) 
if sr >= 100001 and sr <= 100500 then
	NAPCARD1(CARD10,"CARD10")
elseif sr >= 100501 and sr <= 101000 then
	NAPCARD1(CARD30,"CARD30")
elseif sr >= 101001 and sr <= 101500 then
	NAPCARD1(CARD500,"CARD500")
elseif sr >= 101501 and sr <= 102000 then
	NAPCARD1(CARD1000,"CARD1000")
elseif sr >= 102001 and sr <= 102500 then
	NAPCARD1(card20_1,"card20_1")
elseif sr >= 102501 and sr <= 103000 then
	NAPCARD1(card20_2,"card20_2")
elseif sr >= 103001 and sr <= 103500 then
	NAPCARD1(card20_3,"card20_3")
elseif sr >= 103501 and sr <= 104000 then
	NAPCARD1(card20_4,"card20_4")
elseif sr >= 104001 and sr <= 104500 then
	NAPCARD1(card20_5,"card20_5")
elseif sr >= 104501 and sr <= 105000 then
	NAPCARD1(card20_6,"card20_6")
elseif sr >= 105001 and sr <= 105500 then
	NAPCARD1(card50_1,"card50_1")
elseif sr >= 105501 and sr <= 106000 then
	NAPCARD1(card50_2,"card50_2")
elseif sr >= 106001 and sr <= 106500 then
	NAPCARD1(card50_3,"card50_3")
elseif sr >= 106501 and sr <= 107000 then
	NAPCARD1(card50_4,"card50_4")
elseif sr >= 107001 and sr <= 107500 then
	NAPCARD1(card50_5,"card50_5")
elseif sr >= 107501 and sr <= 108000 then
	NAPCARD1(card100_1,"card100_1")
elseif sr >= 108001 and sr <= 108500 then
	NAPCARD1(card100_2,"card100_2")
elseif sr >= 108501 and sr <= 109000 then
	NAPCARD1(card100_3,"card100_3")
elseif sr >= 109001 and sr <= 109500 then
	NAPCARD1(card100_4,"card100_4")
elseif sr >= 109501 and sr <= 110000 then
	NAPCARD1(card100_5,"card100_5")
elseif sr >= 110001 and sr <= 110500 then
	NAPCARD1(card200_1,"card200_1")
elseif sr >= 110501 and sr <= 111000 then
	NAPCARD1(card200_2,"card200_2")
elseif sr >= 111001 and sr <= 111500 then
	NAPCARD1(card200_3,"card200_3")
elseif sr >= 111501 and sr <= 112000 then
	NAPCARD1(card200_4,"card200_4")
elseif sr >= 112001 and sr <= 112500 then
	NAPCARD1(card200_5,"card200_5")

elseif sr >= 112501 and sr <= 113000 then
	NAPCARD1(card300_1,"card300_1")
elseif sr >= 113001 and sr <= 113500 then
	NAPCARD1(card300_2,"card300_2")
elseif sr >= 113501 and sr <= 114000 then
	NAPCARD1(card300_3,"card300_3")
elseif sr >= 114001 and sr <= 114500 then
	NAPCARD1(card300_4,"card300_4")
elseif sr >= 114501 and sr <= 115000 then
	NAPCARD1(card300_5,"card300_5")

else
	Talk(1,"","Card kh«ng tån t¹i, vui lßng kiÓm tra l¹i Seri vµ M· ThÎ")
end
end
function XOATHE1(mang,tenmang)
checkmt = 0
for i=1,getn(mang) do	
if GetTaskTemp(32) == mang[i][2] then
if GetTaskTemp(33) == mang[i][3] then
checkmt = 1			
if mang[i][1] == 0 then			
Talk(1,"","<color=green>Kú Tr©n C¸c <color>: <color=red>ThÎ ®· ®­îc sö dông !!!")		
else			
mang[i][1] = 0			
thoigian = tonumber(date("%H%M%d%m"))			
b = mang[i][4]		
LuuDanhSachXoaCard(""..tenmang.." - "..GetTaskTemp(32).." - "..GetTaskTemp(33).." - "..b.."")				
Msg2Player("Xoa the thanh cong !")			
Talk(0,"")
end	
end
end
end
if checkmt == 0 then
Talk(1,"","<color=green>Kú Tr©n C¸c <color>: <color=red>M· thÎ <color> b¹n nhËp kh«ng chÝnh x¸c !!!! ")
return
end
end

function LuuDanhSachXoaCard(string)
thoigian = tonumber(date("%H%M%d%m"))
local IPData = openfile("Data/carddelete.txt", "a");
if IPData then
write(IPData,""..string.." - "..thoigian.."\n");
end
closefile(IPData)
end

function LuuDanhSachNapCard(string)
thoigian = tonumber(date("%H%M%d%m"))
local IPData = openfile("Data/cardthaydoi.txt", "a");
if IPData then
write(IPData,"{\""..GetAccount().."\",\""..GetName().."\","..string..","..thoigian.."},\n");
end
closefile(IPData)
end

function LuuThayDoiVang(string)
thoigian = tonumber(date("%H%M%d%m"))
local IPData = openfile("Data/listthaydoi.txt", "a");
if IPData then
write(IPData,""..string.." - Time: "..thoigian.."\n");
end
closefile(IPData)
end


function no()
end



function savetimer()
BANG = TaoBang(CARD10,"CARD10")			
LuuBang("datascript/napcard/dscard10.lua",BANG)
BANG2 = TaoBang(CARD500,"CARD500")			
LuuBang("datascript/napcard/dscard500.lua",BANG2)
BANG3 = TaoBang(CARD30,"CARD30")			
LuuBang("datascript/napcard/dscard30.lua",BANG3)
BANG4 = TaoBang(CARD1000,"CARD1000")			
LuuBang("datascript/napcard/dscard1000.lua",BANG4)

BANG5 = TaoBang(card20_1,"card20_1")			
LuuBang("datascript/napcard/card20/card20_1.lua",BANG5)
BANG6 = TaoBang(card20_2,"card20_2")			
LuuBang("datascript/napcard/card20/card20_2.lua",BANG6)
BANG7 = TaoBang(card20_3,"card20_3")			
LuuBang("datascript/napcard/card20/card20_3.lua",BANG7)
BANG8 = TaoBang(card20_4,"card20_4")			
LuuBang("datascript/napcard/card20/card20_4.lua",BANG8)
BANG9 = TaoBang(card20_5,"card20_5")			
LuuBang("datascript/napcard/card20/card20_5.lua",BANG9)
BANG10 = TaoBang(card20_6,"card20_6")			
LuuBang("datascript/napcard/card20/card20_6.lua",BANG10)

BANG15 = TaoBang(card50_1,"card50_1")			
LuuBang("datascript/napcard/card50/card50_1.lua",BANG15)
BANG16 = TaoBang(card50_2,"card50_2")			
LuuBang("datascript/napcard/card50/card50_2.lua",BANG16)
BANG17 = TaoBang(card50_3,"card50_3")			
LuuBang("datascript/napcard/card50/card50_3.lua",BANG17)
BANG18 = TaoBang(card50_4,"card50_4")			
LuuBang("datascript/napcard/card50/card50_4.lua",BANG18)
BANG19 = TaoBang(card50_5,"card50_5")			
LuuBang("datascript/napcard/card50/card50_5.lua",BANG19)

BANG25 = TaoBang(card100_1,"card100_1")			
LuuBang("datascript/napcard/card100/card100_1.lua",BANG25)
BANG26 = TaoBang(card100_2,"card100_2")			
LuuBang("datascript/napcard/card100/card100_2.lua",BANG26)
BANG27 = TaoBang(card100_3,"card100_3")			
LuuBang("datascript/napcard/card100/card100_3.lua",BANG27)
BANG28 = TaoBang(card100_4,"card100_4")			
LuuBang("datascript/napcard/card100/card100_4.lua",BANG28)
BANG29 = TaoBang(card100_5,"card100_5")			
LuuBang("datascript/napcard/card100/card100_5.lua",BANG29)

BANG35 = TaoBang(card200_1,"card200_1")			
LuuBang("datascript/napcard/card200/card200_1.lua",BANG35)
BANG36 = TaoBang(card200_2,"card200_2")			
LuuBang("datascript/napcard/card200/card200_2.lua",BANG36)
BANG37 = TaoBang(card200_3,"card200_3")			
LuuBang("datascript/napcard/card200/card200_3.lua",BANG37)
BANG38 = TaoBang(card200_4,"card200_4")			
LuuBang("datascript/napcard/card200/card200_4.lua",BANG38)
BANG39 = TaoBang(card200_5,"card200_5")			
LuuBang("datascript/napcard/card200/card200_5.lua",BANG39)


BANG45 = TaoBang(card300_1,"card300_1")			
LuuBang("datascript/napcard/card300/card300_1.lua",BANG45)
BANG46 = TaoBang(card300_2,"card300_2")			
LuuBang("datascript/napcard/card300/card300_2.lua",BANG46)
BANG47 = TaoBang(card300_3,"card300_3")			
LuuBang("datascript/napcard/card300/card300_3.lua",BANG47)
BANG48 = TaoBang(card300_4,"card300_4")			
LuuBang("datascript/napcard/card300/card300_4.lua",BANG48)
BANG49 = TaoBang(card300_5,"card300_5")			
LuuBang("datascript/napcard/card300/card300_5.lua",BANG49)

LuuBang("Data/listthaydoi.txt","")
print("Luu Bang Ok !")

end

function save()

BANG = TaoBang(CARD10,"CARD10")			
LuuBang("datascript/napcard/dscard10.lua",BANG)
BANG2 = TaoBang(CARD500,"CARD500")			
LuuBang("datascript/napcard/dscard500.lua",BANG2)
BANG3 = TaoBang(CARD30,"CARD30")			
LuuBang("datascript/napcard/dscard30.lua",BANG3)
BANG4 = TaoBang(CARD1000,"CARD1000")			
LuuBang("datascript/napcard/dscard1000.lua",BANG4)

BANG5 = TaoBang(card20_1,"card20_1")			
LuuBang("datascript/napcard/card20/card20_1.lua",BANG5)
BANG6 = TaoBang(card20_2,"card20_2")			
LuuBang("datascript/napcard/card20/card20_2.lua",BANG6)
BANG7 = TaoBang(card20_3,"card20_3")			
LuuBang("datascript/napcard/card20/card20_3.lua",BANG7)
BANG8 = TaoBang(card20_4,"card20_4")			
LuuBang("datascript/napcard/card20/card20_4.lua",BANG8)
BANG9 = TaoBang(card20_5,"card20_5")			
LuuBang("datascript/napcard/card20/card20_5.lua",BANG9)
BANG10 = TaoBang(card20_6,"card20_6")			
LuuBang("datascript/napcard/card20/card20_6.lua",BANG10)

BANG15 = TaoBang(card50_1,"card50_1")			
LuuBang("datascript/napcard/card50/card50_1.lua",BANG15)
BANG16 = TaoBang(card50_2,"card50_2")			
LuuBang("datascript/napcard/card50/card50_2.lua",BANG16)
BANG17 = TaoBang(card50_3,"card50_3")			
LuuBang("datascript/napcard/card50/card50_3.lua",BANG17)
BANG18 = TaoBang(card50_4,"card50_4")			
LuuBang("datascript/napcard/card50/card50_4.lua",BANG18)
BANG19 = TaoBang(card50_5,"card50_5")			
LuuBang("datascript/napcard/card50/card50_5.lua",BANG19)

BANG25 = TaoBang(card100_1,"card100_1")			
LuuBang("datascript/napcard/card100/card100_1.lua",BANG25)
BANG26 = TaoBang(card100_2,"card100_2")			
LuuBang("datascript/napcard/card100/card100_2.lua",BANG26)
BANG27 = TaoBang(card100_3,"card100_3")			
LuuBang("datascript/napcard/card100/card100_3.lua",BANG27)
BANG28 = TaoBang(card100_4,"card100_4")			
LuuBang("datascript/napcard/card100/card100_4.lua",BANG28)
BANG29 = TaoBang(card100_5,"card100_5")			
LuuBang("datascript/napcard/card100/card100_5.lua",BANG29)


BANG45 = TaoBang(card300_1,"card300_1")			
LuuBang("datascript/napcard/card300/card300_1.lua",BANG45)
BANG46 = TaoBang(card300_2,"card300_2")			
LuuBang("datascript/napcard/card300/card300_2.lua",BANG46)
BANG47 = TaoBang(card300_3,"card300_3")			
LuuBang("datascript/napcard/card300/card300_3.lua",BANG47)
BANG48 = TaoBang(card300_4,"card300_4")			
LuuBang("datascript/napcard/card300/card300_4.lua",BANG48)
BANG49 = TaoBang(card300_5,"card300_5")			
LuuBang("datascript/napcard/card300/card300_5.lua",BANG49)

LuuBang("Data/listthaydoi.txt","")
print("Luu Bang Ok !")


end