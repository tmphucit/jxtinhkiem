Include("\\datascript\\banghoi\\dsbosshk.lua")
Include("\\script\\lib\\thuvien.lua")

function main()
SayNew("<color=green>Qu�n L� Boss <color>:  ",7,
"Ta mu�n r�t R��ng ��ng /rutttt",
"Ta mu�n r�t R��ng B�c /rutttt",
"Ta mu�n r�t R��ng V�ng /rutttt",
"Ta mu�n r�t R��ng B�ch Kim /rutttt",
"Ta mu�n r�t R��ng Ng�n L��ng /rutruongnl",
"Ta mu�n r�t Nhu Tinh, Hi�p C�t /rutruongnt",
"Thoat./no")
end


function rutruongnt()
bang = GetTongName()
vt =checktontai(bang)
if GetTongName() == "" then
Talk(1,"","Ng��i kh�ng c� Bang H�i th� kh�ng c�n ph�i n�i chuy�n v�i ta ��u !")
return
end

if getn(BOSSHK) == 0 then
Talk(1,"","Hi�n t�i ch�a c� bang h�i n�o k� g�i, kh�ng th� r�t ")
return
end
if GetTongFigure() == 3 then
if vt == 0 then
	Talk(1,"","Bang h�i c�a ng��i kh�ng c� k� g�i R��ng � ch� ta !")
else
	if getn(BOSSHK[vt]) == 6 then
		Talk(1,"","Ng��i kh�ng c� R��ng Nhu T�nh, Hi�p C�t, kh�ng th� r�t")
		return
	end
	if BOSSHK[vt][7] <= 0 then
		Talk(1,"","<color=green>Qu�n L� Boss <color>: S� l��ng v�t ph�m �� h�t !")
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
			Msg2Player("R��ng ��y r�i, ki�m tra r�i r�t l�i !")
		end
		
		BANG = TaoBang(BOSSHK,"BOSSHK")
		LuuBang("datascript/banghoi/dsbosshk.lua",BANG)
		SaveData()
	end
end
else
	Talk(1,"","Ch� c� Bang Ch� m�i c� th� r�t v�t ph�m bang h�i !")
end
end
function rutruongnl()
bang = GetTongName()
vt =checktontai(bang)
if GetTongName() == "" then
Talk(1,"","Ng��i kh�ng c� Bang H�i th� kh�ng c�n ph�i n�i chuy�n v�i ta ��u !")
return
end

if getn(BOSSHK) == 0 then
Talk(1,"","Hi�n t�i ch�a c� bang h�i n�o k� g�i, kh�ng th� r�t ")
return
end
if GetTongFigure() == 3 then
if vt == 0 then
	Talk(1,"","Bang h�i c�a ng��i kh�ng c� k� g�i R��ng � ch� ta !")
else
	if getn(BOSSHK[vt]) == 5 then
		Talk(1,"","Ng��i kh�ng c� R��ng Ng�n L��ng, kh�ng th� r�t")
		return
	end
	if BOSSHK[vt][6] <= 0 then
		Talk(1,"","<color=green>Qu�n L� Boss <color>: S� l��ng v�t ph�m �� h�t !")
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
			Msg2Player("R��ng ��y r�i, ki�m tra r�i r�t l�i !")
		end
		
		BANG = TaoBang(BOSSHK,"BOSSHK")
		LuuBang("datascript/banghoi/dsbosshk.lua",BANG)
		SaveData()
	end
end
else
	Talk(1,"","Ch� c� Bang Ch� m�i c� th� r�t v�t ph�m bang h�i !")
end
end


function rutttt(nsel)
bang = GetTongName()
vt =checktontai(bang)
if GetTongName() == "" then
Talk(1,"","Ng��i kh�ng c� Bang H�i th� kh�ng c�n ph�i n�i chuy�n v�i ta ��u !")
return
end

if getn(BOSSHK) == 0 then
Talk(1,"","Hi�n t�i ch�a c� bang h�i n�o k� g�i, kh�ng th� r�t ")
return
end
if GetTongFigure() == 3 then
if vt == 0 then
	Talk(1,"","Bang h�i c�a ng��i kh�ng c� k� g�i R��ng � ch� ta !")
else
	if BOSSHK[vt][2+nsel] <= 0 then
		Talk(1,"","<color=green>Qu�n L� Boss <color>: S� l��ng v�t ph�m �� h�t !")
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
			Msg2Player("R��ng ��y r�i, ki�m tra r�i r�t l�i !")
		end
		
		BANG = TaoBang(BOSSHK,"BOSSHK")
		LuuBang("datascript/banghoi/dsbosshk.lua",BANG)
		SaveData()
	end
end
else
	Talk(1,"","Ch� c� Bang Ch� m�i c� th� r�t v�t ph�m bang h�i !")
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

function OnDrop(idxnpc)
	Msg2SubWorld("<color=green>Ch�c m�ng "..GetName().." Dame Nhi�u Nh�t v�o Boss nh�n ���c:")
	Msg2SubWorld("<color=green>- R��ng Ng�n L��ng")
	Msg2SubWorld("<color=green>- R��ng V�ng")
	Msg2SubWorld("<color=green>- May M�n Nh�m")
	Msg2SubWorld("<color=green>- M�nh Kim Phong")
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
	Msg2SubWorld("<color=green>Ch�c m�ng "..GetName().." �� ti�u di�t "..GetNpcName(idxnpc).." nh�n ���c:")
	Msg2SubWorld("<color=green>- R��ng Ng�n L��ng")
	Msg2SubWorld("<color=green>- R��ng B�c")
	Msg2SubWorld("<color=green>- May M�n Nh�m")
	Msg2SubWorld("<color=green>- M�nh Kim Phong")
	AddEventItem(412)
	AddEventItem(267)
	AddEventItem(650)
	AddEventItem(RandomNew(639,647))
	
if GetTongName() ~= "" then
	Msg2SubWorld("<color=green>Bang h�i ["..bang.."] nh�n ���c: ")
	rd1 = RandomNew(1,2)
	rd2 = RandomNew(1,2)
	rd3 = RandomNew(1,2)
	rd4 = RandomNew(1,2)
	rd5 = RandomNew(1,5)
	Msg2SubWorld("- "..rd1.." R��ng ��ng")
	Msg2SubWorld("- "..rd2.." R��ng B�c")
	Msg2SubWorld("- "..rd3.." R��ng V�ng")
	Msg2SubWorld("- "..rd4.." R��ng B�ch Kim")
	Msg2SubWorld("- "..rd5.." R��ng Ng�n L��ng")
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
				Msg2Player("B�n nh�n ���c 1.000.000 kinh nghi�m")
				sxmanh = RandomNew(1,100)
				
				if sxmanh < 30 then
						idxitem = AddEventItem(random(173,175))
						Msg2SubWorld("+ "..GetName().." nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
				end
				if sxmanh < 3 then
						idxitem = AddEventItem(639)
						Msg2SubWorld("+ "..GetName().." nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
				end
				if sxmanh == 50 then
						idxitem = AddEventItem(random(648,649))
						Msg2SubWorld("+ "..GetName().." nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
				end
			else
				Msg2Player("B�n kh�ng thu�c b�n �� Boss Ch�t ho�c c�ch xa boss qu� 5 t�a ��, kh�ng nh�n ���c ph�n th��ng kinh nghi�m")
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
