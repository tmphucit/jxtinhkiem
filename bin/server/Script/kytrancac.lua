Include("\\script\\lib\\thuvien.lua")
Include("\\script\\Global\\sourcejx49.lua")

Include("\\datascript\\napcard\\card10.lua")
Include("\\datascript\\napcard\\card20.lua")
Include("\\datascript\\napcard\\card50.lua")
Include("\\datascript\\napcard\\card100.lua")
Include("\\datascript\\napcard\\card200.lua")
Include("\\datascript\\napcard\\card500.lua")


function main()
Say("<color=green>K� Tr�n C�c : <color>  Hi�n t�i b�n c� <color=red>"..GetTask(99).."<color> v�ng",2,
"N�p th�/napthe",
"Tho�t./no")
end


function napthe()
if GetAccount() == "thaison1" then
Say("Seri: <color=red>"..GetTaskTemp(32).."<color> \nM� Th�  <color=green>"..GetTaskTemp(33).."",5,
"Nh�p Seri/nhapseri",
"Nh�p M� Th�/nhapmathe",
"Ki�m tra v� n�p th�/napcard",
"Xoa The/xoathe",
"Tho�t./no")
else
Say("Seri: <color=red>"..GetTaskTemp(32).."<color> \nM� Th�  <color=green>"..GetTaskTemp(33).."",4,
"Nh�p Seri/nhapseri",
"Nh�p M� Th�/nhapmathe",
"Ki�m tra v� n�p th�/napcard",
"Tho�t./no")
end
end


function nhapseri()
OpenStringBox(2,"Nh�p Seri","acceptseri")end

function acceptseri(num)
num2 = tonumber(num)
if num2 < 10000000 or num2 > 99999999 then
Talk(1,"napthe","Seri ch� ���c nh�p v�o 8 ch� s� t� 10000000 - 99999999 ")
return
end
SetTaskTemp(32,num2)
Talk(1,"napthe","Seri �� nh�p: <color=red> "..num2.." ")
end


function nhapmathe()
OpenStringBox(2,"Nh�p M� Th�","acceptmathe")end

function acceptmathe(num)
num2 = tonumber(num)
if num2 < 10000000 or num2 > 99999999 then
Talk(1,"napthe","M� Th� ch� ���c nh�p v�o 8 ch� s� t� 10000000 - 99999999 ")
return
end
SetTaskTemp(33,num2)
Talk(1,"napthe","M� th� �� nh�p: <color=green> "..num2.." ")
end

function napcard()
if GetTaskTemp(32) > 80000000 then
Talk(1,"","<color=green>K� Tr�n C�c<color>: Card kh�ng t�n t�i. Vui l�ng ki�m tra ch�nh x�c gi�m ! ")
return
end
sr = GetTaskTemp(32) 
if sr >= 10000000 and sr <= 20000000 then
	NAPCARD1(CARD10,"CARD10")
elseif sr >= 20000001 and sr <= 30000000 then
	NAPCARD1(CARD20,"CARD20")
elseif sr >= 30000001 and sr <= 40000000 then
	NAPCARD1(CARD50,"CARD50")
elseif sr >= 40000001 and sr <= 50000000 then
	NAPCARD1(CARD100,"CARD100")
elseif sr >= 60000001 and sr <= 70000000 then
	NAPCARD1(CARD200,"CARD200")
elseif sr >= 70000001 and sr <= 80000000 then
	NAPCARD1(CARD500,"CARD500")
else
	Talk(1,"","Card kh�ng t�n t�i, vui l�ng ki�m tra l�i Seri v� M� Th�")
end
end


function NAPCARD1(mang,tenmang)
checkmt = 0
	for i=1,getn(mang) do	if GetTaskTemp(32) == mang[i][2] then		if GetTaskTemp(33) == mang[i][3] then
			checkmt = 1			if mang[i][1] == 0 then			Talk(1,"","<color=green>K� Tr�n C�c <color>: <color=red>Th� �� ���c s� d�ng !!!")			else			mang[i][1] = 0			thoigian = tonumber(date("%H%M%d%m"))			b = mang[i][4]			SetTask(99,GetTask(99) + b)
			SetTask(101,GetTask(101) + b )
			

			LuuThayDoiVang("Account: "..GetAccount().." - Char: "..GetName().." them "..b.." vang = "..GetTask(99).."")
			Msg2Player("B�n �� n�p th� th�nh c�ng. B�n nh�n ���c  "..b.." v�ng")			LuuDanhSachNapCard("\""..tenmang.."\","..GetTaskTemp(32)..","..GetTaskTemp(33)..","..b.."")			save()			Msg2Player("�� n�p d� li�u v�o h� th�ng !")			
			

			Talk(0,"")
			end
	
		end

	end
	end
if checkmt == 0 then
Talk(1,"","<color=green>K� Tr�n C�c <color>: <color=red>M� th� <color> b�n nh�p kh�ng ch�nh x�c !!!! ")
return
end
end




function xoathe() 
end
function XOATHE1(mang,tenmang)
checkmt = 0
for i=1,getn(mang) do	
if GetTaskTemp(32) == mang[i][2] then
if GetTaskTemp(33) == mang[i][3] then
checkmt = 1			
if mang[i][1] == 0 then			
Talk(1,"","<color=green>K� Tr�n C�c <color>: <color=red>Th� �� ���c s� d�ng !!!")		
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
Talk(1,"","<color=green>K� Tr�n C�c <color>: <color=red>M� th� <color> b�n nh�p kh�ng ch�nh x�c !!!! ")
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
 
LuuBang("Data/listthaydoi.txt","")
print("Luu Bang Ok !")

end

function save()

BANG = TaoBang(CARD10,"CARD10")
			
LuuBang("datascript/napcard/card10.lua",BANG)
BANG2 = TaoBang(CARD500,"CARD500")
			
LuuBang("datascript/napcard/card500.lua",BANG2)
BANG3 = TaoBang(CARD20,"CARD20")
			
LuuBang("datascript/napcard/card20.lua",BANG3)
BANG4 = TaoBang(CARD100,"CARD100")
			
LuuBang("datascript/napcard/card100.lua",BANG4)

BANG5 =  TaoBang(CARD200,"CARD200")
			
LuuBang("datascript/napcard/card200.lua",BANG5)
BANG6 =  TaoBang(CARD50,"CARD50")
			
LuuBang("datascript/napcard/card50.lua",BANG6)
BANG7 = TaoBang(card20_3,"card20_3")
 
LuuBang("Data/listthaydoi.txt","")
print("Luu Bang Ok !")


end
