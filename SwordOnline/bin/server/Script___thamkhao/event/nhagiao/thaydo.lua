function main()
SayNew("D��i �nh m�t tr�i kh�ng c� ngh� n�o cao qu� h�n ngh� d�y h�c.\nNh�n s� ��n ��y g�p ta c� vi�c g�?",5,
"T�ng B� Ch� Nh�t T� Vi S� /tangbochu",
"Mua v�t ph�m s� ki�n /muavatpham",
"Gia h�n s� ki�n Nh� Gi�o Vi�t Nam /giahan", 
"Nh�n th��ng m�c s� ki�n /nhanthuongmoc",
"Tho�t./no")
end

function nhanthuongmoc()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� s� d�ng l�ng ��n!")
	return
end

if GetTask(971) == 0 then
	if GetTask(970) >= 2000000 then
			SetTask(971, GetTask(971) + 1)
			if GetTask(971) == 1 then
				
			idxname = AddEventItem(random(0,1))
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng M�c 1 - B� Ch� Nh�t T� Vi S� ���c: <color=yellow>"..GetNameItemBox(idxname).." ")
			inlog2("["..GetNameItemBox(idxname).."] "..GetAccount().." - "..GetName().."")
				
			end
	else
		Talk(1,"","M�c 1 ��t ���c: "..GetTask(970).."000 / 2.000.000.000")
	end
elseif GetTask(971) == 1 then
	if GetTask(970) >= 4000000 then
			SetTask(971, GetTask(971) + 1)
			if GetTask(971) == 2 then
						
			idxname = AddEventItem(random(698,699))
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng M�c 2 - B� Ch� Nh�t T� Vi S� ���c: <color=yellow>"..GetNameItemBox(idxname).." ")
			inlog2("["..GetNameItemBox(idxname).."] "..GetAccount().." - "..GetName().."")
				
			end
	else
		Talk(1,"","M�c 2 ��t ���c: "..GetTask(970).."000 / 4.000.000.000")
	end
elseif GetTask(971) == 2 then
		if GetTask(970) >= 6000000 then
			SetTask(971, GetTask(971) + 1)
			if GetTask(971) == 3 then
				
				ketqua = 12 * 30 * 24 + 15 * 24 
				SetTask(947, ketqua)
				sx = random(1,100)
				if sx < 35 then
					idxname = AddEventItem(698)
					Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng M�c 3 - B� Ch� Nh�t T� Vi S� ���c: <color=yellow>"..GetNameItemBox(idxname).." ")
					inlog2("["..GetNameItemBox(idxname).."] "..GetAccount().." - "..GetName().."")
				elseif sx < 70 then
					idxname = AddEventItem(699)
					Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng M�c 3 - B� Ch� Nh�t T� Vi S� ���c: <color=yellow>"..GetNameItemBox(idxname).." ")
					inlog2("["..GetNameItemBox(idxname).."] "..GetAccount().." - "..GetName().."")				
				elseif sx < 85 then
					idxname = AddEventItem(694)
					Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng M�c 3 - B� Ch� Nh�t T� Vi S� ���c: <color=yellow>"..GetNameItemBox(idxname).." ")
					inlog2("["..GetNameItemBox(idxname).."] "..GetAccount().." - "..GetName().."")					
				elseif sx < 95 then
					idxname = AddEventItem(692)
					Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng M�c 3 - B� Ch� Nh�t T� Vi S� ���c: <color=yellow>"..GetNameItemBox(idxname).." ")
					inlog2("["..GetNameItemBox(idxname).."] "..GetAccount().." - "..GetName().."")				
				else
					idxname = AddEventItem(691)
					Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng M�c 3 - B� Ch� Nh�t T� Vi S� ���c: <color=yellow>"..GetNameItemBox(idxname).." ")
					inlog2("["..GetNameItemBox(idxname).."] "..GetAccount().." - "..GetName().."")				
				end
					

			end
	else
		Talk(1,"","M�c 3 ��t ���c: "..GetTask(970).."000 / 6.000.000.000")
	end



else
	Talk(1,"","B�n �� nh�n �� t�t c� ph�n th��ng, kh�ng th� nh�n th�m")
end
end


function giahan()
SayNew("<color=green>Th�y ��:<color> Gia h�n s� ki�n m�t ph� <color=yellow>100 Ti�n ��ng<color>, ng��i th�y sao?",2,
"Ta ch�c ch�n mu�n gia h�n s� ki�n/giahan1",
"Tho�t./no")
end

function muavatpham()
SayNew("<color=green>Th�y ��:<color>",2,
"Mua 100 ch� S� gi� 10 Ti�n ��ng/muavatpham1",
"Tho�t./no")
end

function muavatpham1()
	if CheckFreeBoxItem(0,10,2,2) == 0 then
			Msg2Player("H�nh trang kh�ng �� 2 x 3 ch� tr�ng, kh�ng th� mua")
			return
		end
		
vang = GetItemCount(697)
if vang >= 10 then
	for k=1,10 do DelItem(697) end	
	if GetItemCount(697) == vang - 10 then
		for i=1,100 do AddEventItem(907) end	
		inlog4("["..GetItemCount(907).."] "..GetAccount().." - "..GetName().."")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Ng��i kh�ng �� 10 Ti�n ��ng �� mua v�t ph�m")
end
end

function giahan1()
if GetTask(969) >= 2 then
	Talk(1,"","Gi�i h�n s� ki�n c�a b�n �� ��t m�c t�i �a <color=yellow>2 l�n<color> !")
	return
end

vang = GetItemCount(697)
if vang >= 100 then
	for k=1,100 do DelItem(697) end	
	if GetItemCount(697) == vang - 100 then
		SetTask(969, GetTask(969) + 1)
		Msg2Player("B�n �� gia h�n s� ki�n Nh� Gi�o Vi�t Nam l�n <color=yellow>"..GetTask(969).." l�n")
		inlog5("["..GetTask(969).."] "..GetAccount().." - "..GetName().."")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Ng��i kh�ng �� 100 Ti�n ��ng �� gia h�n s� ki�n")
end
end

function tangbochu()
sl1 = GetItemCount(904)
sl2 = GetItemCount(905)
sl3 = GetItemCount(906)
sl4 = GetItemCount(907)
cash = GetCash()

if sl1 == 0 or sl2 == 0 or sl3 == 0 or sl4 == 0 or cash < 10000 then
Talk(1,"","Ng��i �ang ��a gi�n v�i ta sao? Khi n�o gom �� m�nh hay ��n t�m ta.")
return
end

gh = gioihan()
if GetTask(970) >= gh then
	Talk(1,"","Ng��i c�n ph�i gia h�n m�i c� th� t�ng ti�p !")
	return
end
	

soluong = 0
for i=1,20 do
		if GetItemCount(904) == 0 or GetItemCount(905) == 0 or GetItemCount(906) == 0 or GetItemCount(907) == 0 or cash < 10000 then
			break;
		end
		if GetTask(970) >= gh then		
			Msg2Player("V��t gi�i h�n b� ch�, ng�ng t�ng")
			break;
		end
		if CheckFreeBoxItem(0,10,2,2) == 0 then
			Msg2Player("H�nh trang kh�ng �� 2 x 3 ch� tr�ng, ng�ng t�ng")
			break
		end
	
		DelItem(904)
		DelItem(905)
		DelItem(906)
		DelItem(907)
		Pay(10000)
		soluong = soluong + 1
		SetTask(970, GetTask(970) + 2000)
		AddOwnExp(2000000)			
		XacSuatVatPham()	
end

if soluong > 0 then
		Msg2Player("B�n �� t�ng "..soluong.." b� ch� Nh�t T� Vi S� ")
		Msg2Player("Gi�i h�n: "..GetTask(970).."000 / "..gh.."000")
end
end


function XacSuatVatPham()
sx = RandomNew(1,40)
if sx == 20 then
			sx2 = RandomNew(1,200)
			if sx2 < 50 then
					idxitem = AddEventItem(random(173,174))
					Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			elseif sx2 < 80 then
					idxitem = AddEventItem(114)
					Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")		
			elseif sx2 < 120 then
					idxitem = AddEventItem(113)
					Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			elseif sx2 < 130 then
					idxitem = AddEventItem(118)
					Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			elseif sx2 < 140 then								
					sx3 = RandomNew(1,9)
					if sx3 == 1 then
					itemidx = AddItem(0,2,80,1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." t�ng Nh�t T� Vi S� nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 2 then
					itemidx = AddItem(0,4,21,1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." t�ng Nh�t T� Vi S� nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 3 then
					itemidx = AddItem(0,6,27,1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." t�ng Nh�t T� Vi S� nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 4 then
					itemidx = AddItem(0,5,25,1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." t�ng Nh�t T� Vi S� nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 5 then
					itemidx = AddItem(0,8,23,1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." t�ng Nh�t T� Vi S� nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 6 then
					itemidx = AddItem(0,7,42,1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." t�ng Nh�t T� Vi S� nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 7 then
					itemidx = AddItem(0,9,21,1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." t�ng Nh�t T� Vi S� nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 8 then
					itemidx = AddItem(0,3,40,1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." t�ng Nh�t T� Vi S� nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 9 then
					idxitem = AddItem(0,3,41,1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." t�ng Nh�t T� Vi S� nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
					end
			elseif sx2 < 170 then		
					sx3 = RandomNew(1,9)
					if sx3 == 1 then
						idxitem = AddItem(0,5,4,2,0,0,0)
						Msg2Player("B�n nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 2 then		
						idxitem = AddItem(0,4,2,2,0,0,0)
						Msg2Player("B�n nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 3 then
						idxitem = AddItem(0,7,14,2,0,0,0)
						Msg2Player("B�n nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 4 then
						idxitem = AddItem(0,9,2,2,0,0,0)
						Msg2Player("B�n nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 5 then
						idxitem = AddItem(0,2,29,2,0,0,0)
						Msg2Player("B�n nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 6 then
						idxitem = AddItem(0,3,2,2,0,0,0)
						Msg2Player("B�n nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 7 then
						idxitem = AddItem(0,6,2,2,0,0,0)
						Msg2Player("B�n nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 8 then
						idxitem = AddItem(0,8,2,2,0,0,0)
						Msg2Player("B�n nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 9 then
						idxitem = AddItem(0,3,1,2,0,0,0)
						Msg2Player("B�n nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
					end				
			elseif sx2 < 180 then
					idxitem = AddEventItem(117)
					Msg2Player("B�n nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 < 190 then
					idxitem = AddEventItem(115)
					Msg2Player("B�n nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")				
			elseif sx2 < 198 then
					idxitem = AddEventItem(116)
					Msg2SubWorld("Ch�c m�ng "..GetName().." t�ng Nh�t T� Vi S� nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 < 192 then
					idxitem = AddEventItem(random(28,31))
					Msg2SubWorld("Ch�c m�ng "..GetName().." t�ng Nh�t T� Vi S� nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 == 197 then
					idxitem = AddEventItem(687)
					Msg2SubWorld("Ch�c m�ng "..GetName().." t�ng Nh�t T� Vi S� nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")				
			elseif sx2 == 198 then
					idxitem = AddEventItem(120)
					Msg2SubWorld("Ch�c m�ng "..GetName().." t�ng Nh�t T� Vi S� nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")				
			elseif sx2 == 199 then
					idxitem = AddEventItem(random(0,1))
					Msg2SubWorld("Ch�c m�ng "..GetName().." t�ng Nh�t T� Vi S� nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 == 200 then
					idxitem = AddEventItem(random(698,699))
					Msg2SubWorld("Ch�c m�ng "..GetName().." t�ng Nh�t T� Vi S� nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
			end
end
end


function gioihan()
if GetTask(969) == 0 then
return 2000000
elseif GetTask(969) == 1 then
return 4000000
elseif GetTask(969) == 2 then
return 6000000
else
return 0
end
end

function no()
end
function inlog4(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/logMuaVatPham10Vang.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlog2(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/logMocSuKien.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlog5(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/logGiaHan.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end