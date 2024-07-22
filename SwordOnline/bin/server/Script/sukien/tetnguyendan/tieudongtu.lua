Include("\\script\\lib\\thuvien.lua")

Include("\\script\\event\\tetnguyendan\\dstopngay.lua")
Include("\\script\\event\\tetnguyendan\\dstopevent.lua")


function KetThucDuaTopNgay()
LoginLog = openfile("Data/DanhSachDuaTopNgay.txt", "a");
if LoginLog then
write(LoginLog,"Ngay "..DUA_TOP[3][1].." ["..DUA_TOP[1][1].." - "..DUA_TOP[1][2].." - "..DUA_TOP[1][3].."] ["..DUA_TOP[2][1].." - "..DUA_TOP[2][2].." - "..DUA_TOP[2][3].."] ,\n");
end
closefile(LoginLog)
Msg2Player("�� c�p nh�t x�p h�ng")
end


function CapNhatDuaTopNgay()
if GetName() == DUA_TOP[1][2] then
		DUA_TOP[1][3] = GetTask(972)
		return
end
if GetName() == DUA_TOP[2][2] then
		DUA_TOP[2][3] = GetTask(972)
		return
end

if GetTask(972) > DUA_TOP[1][3] or GetTask(972) > DUA_TOP[2][3] then
	if DUA_TOP[1][3] > DUA_TOP[2][3] then
			DUA_TOP[2][1] = GetAccount() 
			DUA_TOP[2][2] = GetName() 
			DUA_TOP[2][3] = GetTask(972)		
	else
			DUA_TOP[1][1] = GetAccount() 
			DUA_TOP[1][2] = GetName() 
			DUA_TOP[1][3] = GetTask(972)	
	end
end
end


function xephang()
if DUA_TOP[1][3] > DUA_TOP[2][3] then
return 2
else
return 1
end
end

ThongBaoXepHang = 0
AutoSave = 0

function main()




end

function nhanthuonglathuthaydo()
vt = checktentoplathu()
if vt == 0 then
Talk(1,"","B�n kh�ng c� t�n trong danh s�ch nh�n th��ng Top L� Th� Th�y ��")
return
end

if CheckFreeBoxItem(4,364,1,1) == 0 then
		Talk(1,"","H�nh trang kh�ng �� ch� tr�ng, kh�ng th� nh�n th��ng")
		return
end

if PHAN_THUONG[vt][3] == 1 then
		idxitem = AddItem(0,4,3,random(5,10),0,0,0)
		idxitem = AddItem(0,3,3,random(5,10),0,0,0)
		idxitem = AddItem(0,3,4,random(5,10),0,0,0)
		idxitem = AddItem(0,9,3,random(5,10),0,0,0)
		
		AddEventItem(691)
		AddEventItem(691)
		
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng Top S� Ki�n ���c: <color=yellow>1 Set An Bang v� 2 R��ng An Bang")
		thoigian = tonumber(date("%H%M%d%m"))
		PHAN_THUONG[vt][1] = thoigian
		PHAN_THUONG[vt][3] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/nhagiao/dsnhanthuong.lua",BANG)

elseif PHAN_THUONG[vt][3] == 2 then
		idxitem = AddItem(0,4,3,1,0,0,0)
		idxitem = AddItem(0,3,3,1,0,0,0)
		idxitem = AddItem(0,3,4,1,0,0,0)
		idxitem = AddItem(0,9,3,1,0,0,0)
		
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng Top S� Ki�n ���c: <color=yellow>1 Set An Bang")
		thoigian = tonumber(date("%H%M%d%m"))
		PHAN_THUONG[vt][1] = thoigian
		PHAN_THUONG[vt][3] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/nhagiao/dsnhanthuong.lua",BANG)
elseif PHAN_THUONG[vt][3] == 3 then
	idxitem = AddItem(0,7,15,random(5,10),0,0,0)
	idxitem = AddItem(0,8,3,random(5,10),0,0,0)
	idxitem = AddItem(0,5,5,random(5,10),0,0,0)
	idxitem = AddItem(0,6,3,random(5,10),0,0,0)
	idxitem = AddItem(0,2,30,random(5,10),0,0,0)
		
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng Top S� Ki�n ���c: <color=yellow>1 Set ��nh Qu�c")
		thoigian = tonumber(date("%H%M%d%m"))
		PHAN_THUONG[vt][1] = thoigian
		PHAN_THUONG[vt][3] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/nhagiao/dsnhanthuong.lua",BANG)
else
	Talk(1,"","B�n �� nh�n ph�n th��ng n�y r�i, kh�ng th� nh�n th�m")
end
end

function checktentoplathu()
if getn(PHAN_THUONG) == 0 then
return 0
end

for i=1,getn(PHAN_THUONG) do
	if GetName() == PHAN_THUONG[i][2] then
		return i
	end
end
return 0
end

function nhanthuongtopngay()
vt = checktentopngay()
if vt == 0 then
Talk(1,"","B�n kh�ng c� t�n trong danh s�ch nh�n th��ng Top Ng�y")
return
end

if PHAN_THUONG[vt][2] == 1 then
		idxitem = AddEventItem(694)
		Msg2Player("Ch�c m�ng, b�n �� nh�n ���c "..GetNameItemBox(idxitem).."")
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
		
elseif PHAN_THUONG[vt][2] == 2 then
		idxitem = AddEventItem(691)
		Msg2Player("Ch�c m�ng, b�n �� nh�n ���c "..GetNameItemBox(idxitem).."")
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
elseif PHAN_THUONG[vt][2] == 3 then
		SayNew("B�n vui l�ng ch�n ph�n th��ng: ",3,
		"R��ng Hi�p C�t /nhanthuongtopngay1",
		"R��ng Nhu T�nh /nhanthuongtopngay1",
		"Tho�t./no")
elseif PHAN_THUONG[vt][2] == 4 then
		SayNew("B�n vui l�ng ch�n ph�n th��ng: ",3,
		"R��ng ��nh Qu�c /nhanthuongtopngay1",
		"R��ng Thi�n Ho�ng /nhanthuongtopngay1",
		"Tho�t./no")
elseif PHAN_THUONG[vt][2] == 5 then
		SayNew("B�n vui l�ng ch�n ph�n th��ng: ",5,
		"D�y Chuy�n An Bang /nhanthuongtopngay1",
		"Nh�n C�c Hoa /nhanthuongtopngay1",
		"Nh�n K� Huy�t /nhanthuongtopngay1",
		"Ng�c B�i An Bang /nhanthuongtopngay1",
		"Tho�t./no")		
	elseif PHAN_THUONG[vt][2] == 6 then
		SayNew("B�n vui l�ng ch�n ph�n th��ng: ",6,
		"N�n ��nh Qu�c /nhanthuongtopngay1",
		"�o ��nh Qu�c /nhanthuongtopngay1",
		"Bao Tay ��nh Qu�c /nhanthuongtopngay1",
		"Gi�y ��nh Qu�c /nhanthuongtopngay1",
		"Th�t L�ng ��nh Qu�c /nhanthuongtopngay1",
		"Tho�t./no")			
	elseif PHAN_THUONG[vt][2] == 7 then
		idxitem = AddEventItem(694)
		Msg2Player("Ch�c m�ng, b�n �� nh�n ���c "..GetNameItemBox(idxitem).."")
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
else
		Talk(1,"","B�n �� nh�n ph�n th��ng r�i, kh�ng th� nh�n th�m")
end
end

function nhanthuongtopngay1(nsel)
i = nsel + 1
vt = checktentopngay()
if vt == 0 then
Talk(1,"","B�n kh�ng c� t�n trong danh s�ch nh�n th��ng Top Ng�y")
return
end

if PHAN_THUONG[vt][2] == 3 then
	if i == 1 then
		idxitem = AddEventItem(698)
		Msg2Player("Ch�c m�ng, b�n �� nh�n ���c "..GetNameItemBox(idxitem).."")	
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
	elseif i == 2 then
		idxitem = AddEventItem(699)
		Msg2Player("Ch�c m�ng, b�n �� nh�n ���c "..GetNameItemBox(idxitem).."")		
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
	end
elseif PHAN_THUONG[vt][2] == 4 then
	if i == 1 then
		idxitem = AddEventItem(692)
		Msg2Player("Ch�c m�ng, b�n �� nh�n ���c "..GetNameItemBox(idxitem).."")			
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
	elseif i == 2 then
		idxitem = AddEventItem(694)
		Msg2Player("Ch�c m�ng, b�n �� nh�n ���c "..GetNameItemBox(idxitem).."")		
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
	end
elseif PHAN_THUONG[vt][2] == 5 then
	if i == 1 then
		idxitem = AddItem(0,4,3,random(5,9),0,0,0)
		Msg2Player("Ch�c m�ng, b�n �� nh�n ���c "..GetNameItemBox(idxitem).."")		
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
	elseif i == 2 then
		idxitem = AddItem(0,3,3,random(5,9),0,0,0)
		Msg2Player("Ch�c m�ng, b�n �� nh�n ���c "..GetNameItemBox(idxitem).."")		
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
	elseif i == 3 then
		idxitem = AddItem(0,3,4,random(5,9),0,0,0)
		Msg2Player("Ch�c m�ng, b�n �� nh�n ���c "..GetNameItemBox(idxitem).."")		
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
	elseif i == 4 then
		idxitem = AddItem(0,9,3,random(5,9),0,0,0)
		Msg2Player("Ch�c m�ng, b�n �� nh�n ���c "..GetNameItemBox(idxitem).."")		
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
	end
elseif PHAN_THUONG[vt][2] == 6 then
	if i == 1 then
		idxitem = AddItem(0,7,15,random(5,9),0,0,0)
		Msg2Player("Ch�c m�ng, b�n �� nh�n ���c "..GetNameItemBox(idxitem).."")		
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
	elseif i == 2 then
		idxitem = AddItem(0,2,30,random(5,9),0,0,0)
		Msg2Player("Ch�c m�ng, b�n �� nh�n ���c "..GetNameItemBox(idxitem).."")		
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
	elseif i == 3 then
		idxitem = AddItem(0,8,3,random(5,9),0,0,0)
		Msg2Player("Ch�c m�ng, b�n �� nh�n ���c "..GetNameItemBox(idxitem).."")		
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
	elseif i == 4 then
		idxitem = AddItem(0,5,5,random(5,9),0,0,0)
		Msg2Player("Ch�c m�ng, b�n �� nh�n ���c "..GetNameItemBox(idxitem).."")		
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
	elseif i == 5 then
		idxitem = AddItem(0,6,3,random(5,9),0,0,0)
		Msg2Player("Ch�c m�ng, b�n �� nh�n ���c "..GetNameItemBox(idxitem).."")		
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
	end
else
		Talk(1,"","B�n �� nh�n ph�n th��ng r�i, kh�ng th� nh�n th�m")
end
end

function checktentopngay()
if getn(PHAN_THUONG) == 0 then
return 0
end

for i=1,getn(PHAN_THUONG) do
	if GetName() == PHAN_THUONG[i][1] then
		return i
	end
end
return 0
end

function nhanthuongmoc()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� s� d�ng l�ng ��n!")
	return
end

if GetTask(965) == 0 then
	if GetTask(963) >= 1000000 then
			SetTask(965, GetTask(965) + 1)
			if GetTask(965) == 1 then
				
			itemname = AddEventItem(120)
			SetBindItem(itemname, 1)
			itemname = AddEventItem(120)
			SetBindItem(itemname, 1)
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng M�c 1 - L� Th� Th�y �� ���c: <color=yellow>2 Ti�n Th�o L� 6 Gi� ")
			inlog2("[Ti�n Th�o L�] "..GetAccount().." - "..GetName().."")
				
			end
	else
		Talk(1,"","M�c 1 ��t ���c: "..GetTask(963).."000 / 1.000.000.000")
	end
elseif GetTask(965) == 1 then
	if GetTask(963) >= 2000000 then
			SetTask(965, GetTask(965) + 1)
			if GetTask(965) == 2 then
						
			itemname = AddEventItem(random(0,1))
			SetBindItem(itemname, 1)
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng M�c 2 - L� Th� Th�y �� ���c: <color=yellow>"..GetNameItemBox(itemname).." ")
			inlog2("["..GetNameItemBox(itemname).."] "..GetAccount().." - "..GetName().."")
				
			end
	else
		Talk(1,"","M�c 2 ��t ���c: "..GetTask(963).."000 / 2.000.000.000")
	end
elseif GetTask(965) == 2 then
		if GetTask(963) >= 1500000 then
			SetTask(965, GetTask(965) + 1)
			if GetTask(965) == 3 then
				
				
				AddEventItem(685)	
				Msg2Player("B�n nh�n ���c 1 V� Phong V�n Lo�n Chi�n")
				if GetGlbMissionV(37) == 1111 then
					SetGlbMissionV(37, 0)
					idxitem = AddEventItem(691)
					AddGlobalCountNews("Ch�c m�ng "..GetName().." nh�n th��ng M�c 3 - L� Th� Th�y �� ���c <color=yellow>"..GetNameItemBox(idxitem).."",1)
					Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng M�c 3 - L� Th� Th�y �� ���c <color=yellow>"..GetNameItemBox(idxitem).."")		
				elseif GetGlbMissionV(37) == 2222 then
					SetGlbMissionV(37, 0)
					idxitem = AddEventItem(692)
					AddGlobalCountNews("Ch�c m�ng "..GetName().." nh�n th��ng M�c 3 - L� Th� Th�y �� ���c <color=yellow>"..GetNameItemBox(idxitem).."",1)
					Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng M�c 3 - L� Th� Th�y �� ���c <color=yellow>"..GetNameItemBox(idxitem).."")			
				elseif GetGlbMissionV(37) == 3333 then
					SetGlbMissionV(37, 0)
					idxitem = AddEventItem(694)
					AddGlobalCountNews("Ch�c m�ng "..GetName().." nh�n th��ng M�c 3 - L� Th� Th�y �� ���c <color=yellow>"..GetNameItemBox(idxitem).."",1)
					Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng M�c 3 - L� Th� Th�y �� ���c <color=yellow>"..GetNameItemBox(idxitem).."")			
				else		
					
					
					itemname = AddEventItem(random(698,699))
					Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng M�c 3 - L� Th� Th�y �� ���c: <color=yellow>"..GetNameItemBox(itemname).." ")
					inlog2("["..GetNameItemBox(itemname).."] "..GetAccount().." - "..GetName().."")
					
					
					
				end
			end
	else
		Talk(1,"","M�c 3 ��t ���c: "..GetTask(963).."000 / 3.000.000.000")
	end



else
	Talk(1,"","B�n �� nh�n �� t�t c� ph�n th��ng, kh�ng th� nh�n th�m")
end
end

function giahan()
SayNew("<color=green>Ti�u ��ng T�:<color> Gia h�n s� ki�n m�t ph� <color=yellow>50 Ti�n ��ng<color>, ng��i th�y sao?",2,
"Ta ch�c ch�n mu�n gia h�n s� ki�n/giahan1",
"Tho�t./no")
end

function giahan1()
if GetTask(962) >= 2 then
	Talk(1,"","Gi�i h�n s� ki�n c�a b�n �� ��t m�c t�i �a <color=yellow>2 l�n<color> !")
	return
end

vang = GetItemCount(697)
if vang >= 50 then
	for k=1,50 do DelItem(697) end	
	if GetItemCount(697) == vang - 50 then
		SetTask(962, GetTask(962) + 1)
		Msg2Player("B�n �� gia h�n s� ki�n Ph� N� Vi�t Nam l�n <color=yellow>"..GetTask(962).." l�n")
		inlog5("["..GetTask(962).."] "..GetAccount().." - "..GetName().." - "..GetLevel().."")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Ng��i kh�ng �� 50 Ti�n ��ng �� gia h�n s� ki�n")
end
end

function ghepbohoahong()


soluong = 0
for i=1,100 do
	if CheckFreeBoxItem(0,3,0,1) == 0 then
		Msg2Player("H�nh trang kh�ng �� ch� tr�ng, ng�ng gh�p")
		break
	end
	if GetItemCount(729) > 0 and GetItemCount(730) > 0 and GetItemCount(731) > 0 and GetItemCount(732) > 0 and GetCash() >= 10000 then
		for k=729,732 do DelItem(k) end
		Pay(10000)
		AddEventItem(908)
		soluong = soluong + 1
	end
end

if soluong > 0 then
	Msg2Player("Gh�p th�nh c�ng "..soluong.." L� Th� Th�y ��")
else
	Talk(1,"","Nguy�n li�u kh�ng ��, vui l�ng ki�m tra l�i !")
end

end


function nhanthuongconheo()
vt = checkds()
if vt == 0 then
Talk(1,"","Nh�n v�t c�a b�n kh�ng c� t�n trong danh s�ch nh�n th��ng")
return
end

if DSTOP[vt][2] == 9999 then
Talk(1,"","B�n �� nh�n ph�n th��ng n�y r�i, kh�ng th� nh�n th�m")
return
end
if CheckFreeBoxItem(0,10,2,2) == 0 then
	Msg2Player("H�nh trang kh�ng �� 2 x 3 ch� tr�ng, kh�ng th� nh�n th��ng")
	return
end
	
	if vt == 1 then
			Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p "..GetName().." �� nh�n ph�n th��ng TOP "..vt..": ")
			idxitem = AddEventItem(691)
			Msg2SubWorld("<color=yellow>- "..GetNameItemBox(idxitem).."")
			idxitem = AddItem(0,10,5,5,0,0,0)
			Msg2SubWorld("<color=yellow>- "..GetNameItemBox(idxitem).."")
			DSTOP[vt][2] = 9999
			savebang()
	elseif vt == 2 then
		SayNew("B�n vui l�ng ch�n ph�n th��ng: ",4,
		"R��ng Thi�n Ho�ng /chonhang2",
		"R��ng ��nh Qu�c /chonhang2",
		"Chi�u D� /chonhang2",
		"Tho�t./no")
	elseif vt == 3 or vt == 4 then
		SayNew("B�n vui l�ng ch�n ph�n th��ng: ",3,
		"R��ng Thi�n Ho�ng /chonhang2",
		"R��ng ��nh Qu�c /chonhang2",
		"Tho�t./no")
	else
		SayNew("B�n vui l�ng ch�n ph�n th��ng: ",3,
		"R��ng Nhu T�nh /chonhang3",
		"R��ng Hi�p C�t /chonhang3",
		"Tho�t./no")
	end
end

function chonhang2(nsel)
vt = checkds()
if vt == 0 then
Talk(1,"","Nh�n v�t c�a b�n kh�ng c� t�n trong danh s�ch nh�n th��ng")
return
end

Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p "..GetName().." �� nh�n ph�n th��ng TOP "..vt..": ")
i = nsel + 1
if i == 1 then
	idxitem = AddEventItem(694)
	Msg2SubWorld("<color=yellow>- "..GetNameItemBox(idxitem).."")
	DSTOP[vt][2] = 9999
	savebang()
elseif i == 2 then
	idxitem = AddEventItem(692)
	Msg2SubWorld("<color=yellow>- "..GetNameItemBox(idxitem).."")
	DSTOP[vt][2] = 9999
	savebang()
elseif i == 3 then
	idxitem = AddItem(0,10,5,5,0,0,0)
	Msg2SubWorld("<color=yellow>- "..GetNameItemBox(idxitem).."")
	DSTOP[vt][2] = 9999
	savebang()
end
end

function chonhang3(nsel)
vt = checkds()
if vt == 0 then
Talk(1,"","Nh�n v�t c�a b�n kh�ng c� t�n trong danh s�ch nh�n th��ng")
return
end

Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p "..GetName().." �� nh�n ph�n th��ng TOP "..vt..": ")
i = nsel + 1
if i == 1 then
	idxitem = AddEventItem(699)
	Msg2SubWorld("<color=yellow>- "..GetNameItemBox(idxitem).."")
	DSTOP[vt][2] = 9999
	savebang()
elseif i == 2 then
	idxitem = AddEventItem(698)
	Msg2SubWorld("<color=yellow>- "..GetNameItemBox(idxitem).."")
	DSTOP[vt][2] = 9999
	savebang()
end
end
function noplaco()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))

--if gio == 17 and ngay == 1 and thang == 12 then
--Talk(1,"","S� ki�n t�m th�i kh�a �� ch�t danh s�ch �ua Top S� ki�n Nh� Gi�o Vi�t Nam.\n- 18h00 h�m nay s� ���c s� d�ng ti�p. \n- 17h00 ng�y 02/12 k�t th�c to�n b� s� ki�n")
--return
--end

if GetItemCount(908) == 0 then
Talk(1,"","H�nh trang kh�ng c� L� Th� Th�y ��, kh�ng th� n�p")
return
end

if GetTask(939) ~= ngay then
		SetTask(939, ngay)
		SetTask(972, 0)
end		
	
	DelItem(908)
	if thang == 11 or (thang == 12 and gio < 17) then
		SetTask(973, GetTask(973) + 1) -- TOP TONG
		SetTask(972, GetTask(972) + 1) -- TOP NGAY
	end
	if GetTask(972) <= 10 then
	  AddOwnExp(10000000)
	  Msg2Player("Gi�i h�n nh�n kinh nghi�m trong ng�y: <color=green>"..GetTask(972).." / 10 L� Th� ")
	end
	
--ngay = tonumber(date("%d"))
--thang = tonumber(date("%m"))
--gio = tonumber(date("%H"))
--
--	vt = checkds()
--	if vt == 0 then
--			vtmin = checkmin()
--			if GetTask(973) > DSTOP[vtmin][2] then
--				DSTOP[vtmin][1] = GetName()
--				DSTOP[vtmin][2] = GetTask(973)
--			end
--	else
--			DSTOP[vt][2] = GetTask(973)
--	end
--	Msg2Player("L� Th� Th�y �� �� s� d�ng: <color=yellow>"..GetTask(973).." c�i")
--	
--	if DUA_TOP[3][1] ~= ngay then
--			KetThucDuaTopNgay()
--			DUA_TOP = {{"","",0},{"","",0},	{ngay}}			
--		end
--		
--	if thang == 11 or (thang == 12 and gio < 17) then
--		Msg2Player("S� l��ng s� d�ng trong ng�y: <color=green>"..GetTask(972).." c�i")
--		CapNhatDuaTopNgay()	
--	end
		


end

function gioihan()
if GetTask(962) == 0 then
return 1000000
elseif GetTask(962) == 1 then
return 2000000
elseif GetTask(962) == 2 then
return 3000000
else
return 0
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
					Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng L� Th� Th�y �� nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 2 then
					itemidx = AddItem(0,4,21,1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng L� Th� Th�y �� nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 3 then
					itemidx = AddItem(0,6,27,1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng L� Th� Th�y �� nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 4 then
					itemidx = AddItem(0,5,25,1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng L� Th� Th�y �� nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 5 then
					itemidx = AddItem(0,8,23,1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng L� Th� Th�y �� nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 6 then
					itemidx = AddItem(0,7,42,1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng L� Th� Th�y �� nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 7 then
					itemidx = AddItem(0,9,21,1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng L� Th� Th�y �� nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 8 then
					itemidx = AddItem(0,3,40,1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng L� Th� Th�y �� nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 9 then
					idxitem = AddItem(0,3,41,1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng L� Th� Th�y �� nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
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
					Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng L� Th� Th�y �� nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 < 192 then
					idxitem = AddEventItem(random(28,31))
					Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng L� Th� Th�y �� nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 == 197 then
					idxitem = AddEventItem(687)
					Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng L� Th� Th�y �� nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")				
			elseif sx2 == 198 then
					idxitem = AddEventItem(120)
					Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng L� Th� Th�y �� nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")				
			elseif sx2 == 199 then
					idxitem = AddEventItem(random(0,1))
					Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng L� Th� Th�y �� nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 == 200 then
					idxitem = AddEventItem(random(698,699))
					Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng L� Th� Th�y �� nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
			end
end
end


function no()
end


function kiemtratop()
phut = tonumber(date("%M"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))

	SapXepHangDuaTop()
	Msg2Player("<color=green>Danh sach Top S� Ki�n Ph� N� Vi�t Nam:")
	for k=1,getn(DSTOP) do
		if k <= getn(DSTOP) then
			Msg2Player("- H�ng "..k..": "..DSTOP[k][1].." - "..DSTOP[k][2].." c�i")
		end
	end
	
	Msg2Player("<color=green>Danh sach Top Ng�y "..ngay.." / "..thang..":")
	xh = xephang()
	if xh == 2 then
	Msg2Player("- H�ng 1: "..DUA_TOP[1][2].." - S� l��ng: "..DUA_TOP[1][3].." c�i")
	Msg2Player("- H�ng 2: "..DUA_TOP[2][2].." - S� l��ng: "..DUA_TOP[2][3].." c�i")
	else
	Msg2Player("- H�ng 1: "..DUA_TOP[2][2].." - S� l��ng: "..DUA_TOP[2][3].." c�i")
	Msg2Player("- H�ng 2: "..DUA_TOP[1][2].." - S� l��ng: "..DUA_TOP[1][3].." c�i")
	end

	
	if AutoSave ~= phut then
		AutoSave = phut
		savebang()
	end
end

function savebang()
BANG = TaoBang(DSTOP,"DSTOP")		
LuuBang("script/event/nhagiao/dsbohoahong.lua",BANG)
BANG = TaoBang(DUA_TOP,"DUA_TOP")		
LuuBang("script/event/nhagiao/dstopngay.lua",BANG)
end

function checkmin()
vtmin = 1
giatrimin = DSTOP[vtmin][2]
for i=2,getn(DSTOP) do
		if giatrimin > DSTOP[i][2] then
			vtmin = i
			giatrimin = DSTOP[i][2]
		end
end
return vtmin
end
function checkmin_ngay()
vtmin = 1
giatrimin = DSTOP_NGAY[vtmin][2]
for i=2,getn(DSTOP_NGAY) do
		if giatrimin > DSTOP_NGAY[i][2] then
			vtmin = i
			giatrimin = DSTOP_NGAY[i][2]
		end
end
return vtmin
end


function checkds()
for i=1,getn(DSTOP) do
	if GetName() == DSTOP[i][1] then
		return i
	end
end
return 0
end

function checkds_ngay()
for i=1,getn(DSTOP_NGAY) do
	if GetName() == DSTOP_NGAY[i][1] then
		return i
	end
end
return 0
end


tam_duatop = {"",0}
function SapXepHangDuaTop()
for i=1,getn(DSTOP) do
	for j=1,getn(DSTOP) do
		if DSTOP[i][2] > DSTOP[j][2] then
			tam_duatop = DSTOP[i]
			DSTOP[i] = DSTOP[j]
			DSTOP[j] = tam_duatop
		end
	end
end

end
