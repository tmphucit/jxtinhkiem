Include("\\datascript\\banghoi\\dstuthuytinh.lua")
Include("\\datascript\\banghoi\\dsxaloikimdon.lua")
Include("\\script\\lib\\thuvien.lua")


function main()
Say("<color=green>Qu�n L� Phong L�ng �� <color>: Ta chuy�n qu�n l� t�t c� v�n �� v� Phong L�ng �� ",5,
"Ki�m tra s� l��ng T� Th�y Tinh k� g�i /kiemtrattt",
"Ki�m tra s� l��ng X� L�i Kim ��n k� g�i /kiemtrattt1",
"Ta mu�n r�t T� Th�y Tinh /rutttt",
"Ta mu�n r�t X� L�i Kim ��n /rutttt1",
"Thoat./no")
end

function kiemtrattt()
bang = GetTongName()
vt =checktontai(bang)
if GetTongName() == "" then
Talk(1,"","Ng��i kh�ng c� Bang H�i th� kh�ng c�n ph�i n�i chuy�n v�i ta ��u !")
return
end
if vt == 0 then
	Talk(1,"","Bang h�i c�a ng��i kh�ng c� k� g�i T� Th�y Tinh � ch� ta !")
else
	Talk(1,"","Hi�n t�i c�n <color=pink>"..DSTTT[vt][2].." vi�n T� Th�y Tinh<color> k� g�i t�i ��y !")
end

end
function kiemtrattt1()
bang = GetTongName()
vt =checktontai1(bang)
if GetTongName() == "" then
Talk(1,"","Ng��i kh�ng c� Bang H�i th� kh�ng c�n ph�i n�i chuy�n v�i ta ��u !")
return
end
if vt == 0 then
	Talk(1,"","Bang h�i c�a ng��i kh�ng c� k� g�i T� Th�y Tinh � ch� ta !")
else
	Talk(1,"","Hi�n t�i c�n <color=pink>"..DSXL[vt][2].." vi�n X� L�i Kim ��n<color> k� g�i t�i ��y !")
end
end

function rutttt()
bang = GetTongName()
vt =checktontai(bang)
if GetTongName() == "" then
Talk(1,"","Ng��i kh�ng c� Bang H�i th� kh�ng c�n ph�i n�i chuy�n v�i ta ��u !")
return
end

if GetTongFigure() == 3 then
if vt == 0 then
	Talk(1,"","Bang h�i c�a ng��i kh�ng c� k� g�i T� Th�y Tinh � ch� ta !")
else
	if DSTTT[vt][2] <= 0 then
		Talk(1,"","<color=green>Qu�n L� Phong L�ng �� <color>: Hi�n t�i ta kh�ng c� gi� vi�n T� Th�y Tinh n�o c�a nh� ng�� c� !")
	else
		num = 0
		for i=1,DSTTT[vt][2] do
			if CheckFreeBoxItem(4,29,1,1) == 0 then
				break
			end
			num = num + 1
			AddEventItem(29)
			DSTTT[vt][2] = DSTTT[vt][2] - 1 
			Msg2Player("B�n nh�n ���c 1 <color=pink>T� Th�y Tinh.")	
		end
		if num ~= 0 then
			Msg2SubWorld(""..chucvu(GetTongFigure()).." "..bang.."- <color=yellow>"..GetName().."<color=red> �� r�t <color=pink>"..num.." vi�n T� Th�y Tinh <color=red>k� g�i t�i Qu�n L� Phong L�ng �� !")
		else
			Talk(1,"","R��ng ��y r�i m� c�n r�t ho�i v�y !")
		end
		BANG = TaoBang(DSTTT,"DSTTT")				
		LuuBang("datascript/banghoi/dstuthuytinh.lua",BANG)
	end
end
else
	Talk(1,"","Ch� c� Bang Ch� m�i c� th� r�t T� Th�y Tinh ���c !")
end


end


function rutttt1()
bang = GetTongName()
vt =checktontai1(bang)
if GetTongName() == "" then
Talk(1,"","Ng��i kh�ng c� Bang H�i th� kh�ng c�n ph�i n�i chuy�n v�i ta ��u !")
return
end

if GetTongFigure() == 3 then
if vt == 0 then
	Talk(1,"","Bang h�i c�a ng��i kh�ng c� k� g�i vi�n X� L�i Kim ��n n�o � ch� ta !")
else
	if DSXL[vt][2] <= 0 then
		Talk(1,"","<color=green>Qu�n L� Phong L�ng �� <color>: Hi�n t�i ta kh�ng c� gi� vi�n X� L�i Kim ��n n�o c�a nh� ng��i c� !")
	else
		num = 0
		for i=1,DSXL[vt][2] do
			if CheckFreeBoxItem(4,29,1,1) == 0 then
				break
			end
			num = num + 1
			AddEventItem(59)
			DSXL[vt][2] = DSXL[vt][2] - 1 
			Msg2Player("B�n nh�n ���c 1 <color=pink>X� L�i Kim ��n")	
		end
		if num ~= 0 then
			Msg2SubWorld(""..chucvu(GetTongFigure()).." "..bang.."- <color=yellow>"..GetName().."<color=red> �� r�t <color=pink>"..num.." vi�n X� L�i Kim ��n <color=red>k� g�i t�i Qu�n L� Phong L�ng �� !")
		else
			Talk(1,"","R��ng ��y r�i m� c�n r�t ho�i v�y !")
		end
		BANG = TaoBang(DSXL,"DSXL")				
		LuuBang("datascript/banghoi/dsxaloikimdon.lua",BANG)
	end
end
else
	Talk(1,"","Ch� c� Bang Ch� m�i c� th� r�t X� L�i Kim ��n ���c !")
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

if h < 17 then

if GetTongName() == "" then
	Msg2SubWorld("Ch�c m�ng "..GetName().." �� ti�u di�t Boss Phong L�ng �� ��o T�c v� mang v� cho m�nh <color=yellow>5 vi�n X� L�i Kim ��n !")
	for k=1,5 do AddEventItem(29) end
	Msg2Player("B�n nh�n ���c <color=pink>5 X� L�i Kim ��n")
else
	soluong = random(10,30)
	Msg2SubWorld("Ch�c m�ng "..GetName().." �� ti�u di�t Boss Phong L�ng �� ��o T�c v� mang v� cho <color=yellow>[Bang H�i - "..bang.."] <color=red> "..soluong.." vi�n X� L�i Kim ��n !")
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
				Msg2Player("B�n nh�n ���c <color=yellow>20.000.000<color=red> kinh nghi�m !")
			end
		end
	end
end

else
if GetTongName() == "" then
	Msg2SubWorld("Ch�c m�ng "..GetName().." �� ti�u di�t Boss Phong L�ng �� ��o T�c v� mang v� cho m�nh <color=yellow>3 vi�n T� Th�y Tinh !")
	for k=1,3 do AddEventItem(29) end
	Msg2Player("B�n nh�n ���c <color=pink>3 T� Th�y Tinh")
else
	soluong = random(5,15)
	Msg2SubWorld("Ch�c m�ng "..GetName().." �� ti�u di�t Boss Phong L�ng �� ��o T�c v� mang v� cho <color=yellow>[Bang H�i - "..bang.."] <color=red> "..soluong.." vi�n T� Th�y Tinh !")
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
				Msg2Player("B�n nh�n ���c <color=yellow>20.000.000<color=red> kinh nghi�m !")
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