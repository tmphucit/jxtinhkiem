Include("\\script\\lib\\thuvien.lua")
Include("\\script\\event\\trungthu\\dsbanhconheo.lua")


task = 956
AutoSave = 0

function main()
SayNew("<color=green>Ti�u ��ng T�: <color> V� huynh ��i g�p ta c� vi�c g� kh�ng?...",2,
"Nh�n th��ng s� ki�n Top B�nh Trung Thu Con heo /nhanthuongconheo",
--"T�ng b�nh Trung Thu Con heo /noplaco",
--"Ki�m tra danh s�ch Top S� Ki�n /kiemtratop",
"Tho�t./no")
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

if gio == 17 and ngay == 3 and thang == 10 then
Talk(1,"","S� ki�n t�m th�i kh�a �� ch�t danh s�ch �ua Top S� ki�n Trung Thu.\n- 18h00 h�m nay s� ���c s� d�ng ti�p. \n- 17h00 ng�y 05/10 k�t th�c to�n b� S� ki�n Trung Thu")
return
end

OpenStringBox(2,"Nh�p s� l��ng","noplaco1")
end


function noplaco1(num2)
if num2 == "" then
return
end
num = tonumber(num2)
if num == 0 then
return
end
if num > 100 then
Talk(1,"","T�i �a 100 B�nh Trung Thu Con Heo / 1 l�n n�p")
return
end

if GetItemCount(121) < num then
Talk(1,"","S� l��ng B�nh Trung Thu Con Heo kh�ng �� �� n�p")
return
end

ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
	
soluong = 0
for i=1,num do
	if CheckFreeBoxItem(0,10,2,2) == 0 then
		Msg2Player("H�nh trang kh�ng �� 2 x 3 ch� tr�ng, ng�ng n�p")
		break
	end
	DelItem(121)
	
	if ngay == 3 and gio < 17 then
		SetTask(957, GetTask(957) + 1)
	end
	soluong = soluong + 1
	
	XacSuatVatPham()
	
	
	if GetTask(task) < 100 then	
		SetTask(task, GetTask(task) + 1)
		AddOwnExp(1000000)
	end			
end

if soluong > 0 then
	Msg2Player("B�n �� s� d�ng "..soluong.." B�nh Trung Thu Con Heo")
	Msg2Player("Gi�i h�n: "..GetTask(task).." / 100")
	
	ngay = tonumber(date("%d"))
	thang = tonumber(date("%m"))
	gio = tonumber(date("%H"))

		vt = checkds()
		if vt == 0 then
				vtmin = checkmin()
				if GetTask(957) > DSTOP[vtmin][2] then
					DSTOP[vtmin][1] = GetName()
					DSTOP[vtmin][2] = GetTask(957)
				end
		else
				DSTOP[vt][2] = GetTask(957)
		end
		Msg2Player("B�nh Trung Thu Con Heo �� s� d�ng: <color=yellow>"..GetTask(957).." c�i")
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
					Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng B�nh Trung Thu Con Heo nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 < 192 then
					idxitem = AddEventItem(random(28,31))
					Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng B�nh Trung Thu Con Heo nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 == 197 then
					idxitem = AddEventItem(687)
					Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng B�nh Trung Thu Con Heo nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")				
			elseif sx2 == 198 then
					idxitem = AddEventItem(120)
					Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng B�nh Trung Thu Con Heo nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")				
			elseif sx2 == 199 then
					idxitem = AddEventItem(random(0,1))
					Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng B�nh Trung Thu Con Heo nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 == 200 then
					idxitem = AddEventItem(random(698,699))
					Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng B�nh Trung Thu Con Heo nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
			end
end
end


function no()
end


function kiemtratop()
phut = tonumber(date("%M"))


	SapXepHangDuaTop()
	Msg2Player("<color=green>Danh sach Top S� Ki�nTrung Thu:")
	for k=1,getn(DSTOP) do
		if k <= getn(DSTOP) then
			Msg2Player("- H�ng "..k..": "..DSTOP[k][1].." - "..DSTOP[k][2].." c�i")
		end
	end
	
	
	if AutoSave ~= phut then
		AutoSave = phut
		savebang()
	end
end

function savebang()
BANG = TaoBang(DSTOP,"DSTOP")		
LuuBang("script/event/trungthu/dsbanhconheo.lua",BANG)
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

function checkds()
for i=1,getn(DSTOP) do
	if GetName() == DSTOP[i][1] then
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
