Include("\\datascript\\banghoi\\bosspld.lua")
Include("\\script\\lib\\thuvien.lua")


function main()
SayNew("<color=green>Qu�n L� Phong L�ng �� <color>: Ta chuy�n qu�n l� t�t c� v�n �� v� Phong L�ng �� ",3,
"Ki�m tra ph�n th��ng c�n l�i /kiemtra",
"Ta mu�n l�y ph�n th��ng Boss/rutphanthuong",
"Thoat./no")
end

function kiemtra()
SayNew("<color=green>Qu�n L� Phong L�ng �� <color>: Ng��i mu�n ki�m tra g� ?",3,
"Ta mu�n ki�m tra s� l��ng v�t ph�m g�i/kiemtrapld",
"Tho�t./no")
end

function kiemtrapld()
bang = GetTongName()
vt =checktontai(bang)
if GetTongName() == "" then
Talk(1,"","Ng��i kh�ng c� Bang H�i th� kh�ng c�n ph�i n�i chuy�n v�i ta ��u !")
return
end
if vt == 0 then
	Talk(1,"","Bang h�i c�a ng��i kh�ng c� k� g�i T�i H�ng Bao � ch� ta !")
else
	Msg2Player("<color=yellow>Hi�n t�i ta �ang gi� c�a ng��i: ")
	Msg2Player("<color=green>- "..BOSSPLD[vt][2].." T� Th�y Tinh")
	Msg2Player("<color=green>- "..BOSSPLD[vt][3].." X� L�i Kim ��n")
	Msg2Player("<color=green>- "..BOSSPLD[vt][4].." M�nh Ho�ng Kim")
	Msg2Player("<color=green>- "..BOSSPLD[vt][5].." �� T�i T�o")
	Msg2Player("<color=green>- "..BOSSPLD[vt][6].." v�n l��ng")
end
end


function rutphanthuong()
SayNew("<color=green>Qu�n L� Phong L�ng �� <color>: Ng��i mu�n r�t ph�n th��ng n�o ?",6,
"Ta mu�n r�t T� Th�y Tinh /rutphanthuong1",
"Ta mu�n r�t X� L�i Kim ��n /rutphanthuong1",
"Ta mu�n r�t M�nh Ho�ng Kim /rutphanthuong1",
"Ta mu�n r�t �� T�i T�o /rutphanthuong1",
"Ta mu�n r�t Ng�n L��ng /rut_nganluong",
"Tho�t./no")
end

function rutphanthuong1(nsel)
vitri = nsel + 1

IDITEM = -1
NAMEITEM = ""
if vitri == 1 then
	IDITEM = 29
	NAMEITEM = "T� Th�y Tinh"
	VITRIITEM = 2
elseif vitri == 2 then
	IDITEM = 59
	NAMEITEM = "X� L�i Kim ��n"
	VITRIITEM = 3
elseif vitri == 3 then
	IDITEM = RandomNew(895, 903)
	NAMEITEM = "M�nh Ho�ng Kim"
	VITRIITEM = 4
elseif vitri == 4 then
	IDITEM = 415
	NAMEITEM = "�� T�i T�o"
	VITRIITEM = 5
end

if (IDITEM == -1) then
return
end
if CheckFreeBoxItem(4,29,1,1) == 0 then
				Talk(1,"","H�nh trang �� ��y, kh�ng th� r�t !")
				return
end
			
			
bang = GetTongName()
vt =checktontai(bang)
if GetTongName() == "" then
Talk(1,"","Ng��i kh�ng c� Bang H�i th� kh�ng c�n ph�i n�i chuy�n v�i ta ��u !")
return
end

if GetTongFigure() == 3 then
if vt == 0 then
	Talk(1,"","Bang h�i c�a ng��i kh�ng c� k� g�i T�i H�ng Bao � ch� ta !")
else
	if BOSSPLD[vt][VITRIITEM] <= 0 then
		Talk(1,"","<color=green>Qu�n L� Phong L�ng �� <color>: Hi�n t�i ta kh�ng c� gi� "..NAMEITEM.." n�o c�a nh� ng��i c� !")
	else

		BOSSPLD[vt][VITRIITEM] = BOSSPLD[vt][VITRIITEM] - 1 					
		BANG = TaoBang(BOSSPLD,"BOSSPLD")
		LuuBang("datascript/banghoi/bosspld.lua",BANG)
		SaveData()

	
		idxitem = AddEventItem(IDITEM)
		Msg2Player("B�n nh�n ���c 1 <color=pink>"..GetNameItemBox(idxitem).." ")	
		Msg2SubWorld(""..chucvu(GetTongFigure()).." "..bang.."- <color=yellow>"..GetName().."<color=red> �� r�t <color=pink>"..GetNameItemBox(idxitem).." <color=red>k� g�i t�i Qu�n L� Phong L�ng �� !")
		inlog("[T�i: "..GetItemCount(IDITEM).."] [Kho: "..BOSSPLD[vt][VITRIITEM].."]  ["..GetNameItemBox(idxitem).."]["..GetAccount().."]["..GetName().."]["..GetIP().."]")

	end
end
else
	Talk(1,"","Ch� c� Bang Ch� m�i c� th� r�t "..NAMEITEM.." ���c")
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
Talk(1,"","Ng��i kh�ng c� Bang H�i th� kh�ng c�n ph�i n�i chuy�n v�i ta ��u !")
return
end

if GetTongFigure() == 3 then
if vt == 0 then
	Talk(1,"","Bang h�i c�a ng��i kh�ng c� k� g�i Ng�n L��ng � ch� ta !")
else
	if BOSSPLD[vt][6] <= 0 then
		Talk(1,"","<color=green>Qu�n L� Phong L�ng �� <color>: Hi�n t�i ta kh�ng c� gi� Ng�n L��ng n�o c�a nh� ng��i c� !")
	else
	
	truoc = GetCash()
			vang = BOSSPLD[vt][6]
			BOSSPLD[vt][6] = 0
			Earn(vang * 10000)
			Msg2Player("B�n nh�n ���c <color=pink>"..vang.." v�n l��ng")	
			Msg2SubWorld(""..chucvu(GetTongFigure()).." "..bang.."- <color=yellow>"..GetName().."<color=red> �� r�t <color=pink>"..vang.." v�n l��ng <color=red>k� g�i t�i Qu�n L� Phong L�ng �� !")

		inlog("[Ng�n l��ng] [Tr��c: "..truoc.."] [Sau: "..GetCash().."] ["..GetAccount().."]["..GetName().."]["..GetIP().."]")

			
		BANG = TaoBang(BOSSPLD,"BOSSPLD")
		LuuBang("datascript/banghoi/bosspld.lua",BANG)
		SaveData()
	end
end
else
	Talk(1,"","Ch� c� Bang Ch� m�i c� th� r�t Ng�n L��ng ���c !")
end
end


function chucvu(qq)
if qq == 2 then
return "Tr��ng L�o"
else
return "Bang Ch� "
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
	Msg2SubWorld("Ch�c m�ng "..GetName().." �� ti�u di�t Boss Phong L�ng �� ��o T�c v� mang v� cho m�nh <color=yellow>3 Vi�n Th�y Tinh!")
	for k=1,3 do AddEventItem(random(28,30)) end
else


	Msg2SubWorld("Ch�c m�ng "..GetName().." �� ti�u di�t Boss Phong L�ng �� ��o T�c v� mang v� cho <color=yellow>[Bang H�i - "..bang.."] <color=red>:")
	
	thuytinh = RandomNew(5,10)
	xaloi = RandomNew(5,10)
	manhhk = RandomNew(1,2)
	
	Msg2SubWorld("- "..thuytinh.." T� Th�y Tinh")
	Msg2SubWorld("- "..xaloi.." X� L�i Kim ��n")
	Msg2SubWorld("- "..manhhk.." M�nh Ho�ng Kim")
	Msg2SubWorld("- 1 �� T�i T�o")
	Msg2SubWorld("- 500 v�n l��ng")
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
					Msg2Player("B�n nh�n ���c <color=yellow>20.000.000<color=red> kinh nghi�m !")
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
