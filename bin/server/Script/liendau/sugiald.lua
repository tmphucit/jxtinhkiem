Include("\\script\\lib\\thuvien.lua")
Include("\\script\\liendau\\liendau_head.lua")
Include("\\script\\Global\\doimaump.lua")
Include("\\datascript\\liendau\\danhsach.lua")
Include("\\datascript\\liendau\\danhsachxephang.lua")


dsdau = {}
dsdau_temp = {}


function main()
W,X,Y = GetWorldPos()
if checkten() == 0 and W == 42 then
	SetTask(145,0)
	SetFightState(0)
	SetCamp(GetTask(16))
	SetCurCamp(GetTask(16))
	SetDeathScript("")
	BlockPKState(0)
	SetRevPos(19)
	NewWorld(53,200*8,200*16)
	Msg2Player("Ng��i ch�a ��ng k� chi�n ��i, h� th�ng t� ��ng ��a ng��i ra kh�i h�i tr��ng !")
else
	SetTask(145,checkten())
end



if W == 42 then
sugialiendau()
else
sugiadangkyliendau()
end
end






function sugialiendau()
ngay =  tonumber(date("%d"))
gio,phut,giay = GetTimeNew()
	if check_khoang_time_ld(1,4) == 1 and ngay >= ngaybatdau and ngay <= ngayketthuc then
		Say("<color=green>S� gi� Li�n ��u <color>: Hi�n �ang trong giai �o�n <color=yellow>B�o Danh Li�n ��u<color>, c�c b�n h�y nhanh ch�n ��ng k� ",5,
		"��ng k� tham gia li�n ��u /thamchien",
		"Xem th�ng tin li�n ��u /XemThongTin",
		"Xem Danh S�ch Top Cao Th�/xemtop",
		"C�a h�ng vinh d� /doipt",
		"Tho�t./no")
	else
		Say("<color=green>S� gi� H�i Tr��ng: <color>: Th�i gian b�o danh V� L�m Li�n ��u ch�a b�t ��u !",4,
		"Xem th�ng tin li�n ��u /XemThongTin",
		"Xem Danh S�ch Top Cao Th�/xemtop",
		"C�a h�ng vinh d� /doipt",
		"Tho�t./no")
	end
end

function xemtop()
if getn(danhsachxephang) >= 10 then
	Say("Danh s�ch Top 10 Chi�n ��i m�nh nh�t : ",10,
	"H�ng 1/xemtop2",
	"H�ng 2/xemtop2",
	"H�ng 3/xemtop2",
	"H�ng 4/xemtop2",
	"H�ng 5/xemtop2",
	"H�ng 6/xemtop2",
	"H�ng 7/xemtop2",
	"H�ng 8/xemtop2",
	"H�ng 9/xemtop2",
	"H�ng 10/xemtop2")
	
else
	Talk(1,"","Danh s�ch Top Cao Th� ch�a ���c c�p nh�t !")
end
end

function xemtop2(nsel)
i = nsel+1
if danhsachxephang[i] ~= nil then
sotran = danhsachxephang[i][6] + danhsachxephang[i][7] + danhsachxephang[i][8]
if danhsachxephang[i][6] == 0 and danhsachxephang[i][7] == 0 and danhsachxephang[i][8] == 0 then
tilethang = 0
else
tilethang = floor(danhsachxephang[i][6] / sotran * 100)
end
Say("Chi�n ��i: [<color=yellow>"..danhsachxephang[i][5].."<color>], th�nh vi�n: [<color=blue>"..danhsachxephang[i][3].."<color>] �� tham gia <color=red>"..sotran.."<color> tr�n\nTh�ng: "..danhsachxephang[i][6].." - H�a: "..danhsachxephang[i][7].." - Thua: "..danhsachxephang[i][8].."\nT� l� th�ng: "..tilethang.." %\n�i�m t�ch l�y chi�n ��i: "..danhsachxephang[i][4].."",1,
"K�t th�c ��i tho�i/no")
else
Talk(1,"","X�y ra l�i danh s�ch x�p h�ng !")
end
end
function XemThongTin()
if GetTask(145) == 0 then
Msg2Player("B�n ch�a ��ng k� chi�n ��i, vui l�ng r�i kh�i h�i tr��ng v� ��ng k� l�i !")
return
end

thang = xemthang()
thua = xemthua()
hoa = xemhoa()
if (thang == 0 and thua == 0 and hoa == 0) then
tilethang = 0
else
tilethang = floor(thang / ((thang + thua+ hoa)* 100))
end
Say("<color=green>S� gi� Li�n ��u <color>: T�n chi�n ��i: [<color=yellow>"..checkcd().."<color>] \n�i�m t�ch l�y chi�n ��i: <color=red>"..diemcd().."<color>\n�i�m vinh d�: <color=red>"..GetTask(124).."<color>\nX�p h�ng: <color=red>"..xemhang().."<color>\nTh�ng: "..thang.." - H�a: "..hoa.." - Thua: "..thua..". ",1,"Tho�t./no")
end

function doipt()
Say("Hi�n t�i b�n c� <color=red>"..GetTask(124).."<color> �i�m vinh d�. B�n mu�n ��i g� ?",5,
"Mua trang b� An Bang Li�n ��u /muaitem",
"Mua trang b� ��nh Qu�c Li�n ��u /muaitem",
"Mua L�nh B�i Vinh D� /muaitem",
"Mua V�t Ph�m Qu� /muaitem",
"Tho�t./no")
end


function muaitem(nsel)
i = nsel + 1
if i == 1 then
	muaanbang()
elseif i == 2 then
	muadinhquoc()
elseif i == 3 then
	mualbvd()
else
	muavpquy()
end
end

function muaanbang()
Say("<color=green>S� Gi� Li�n ��u<color>: B�n mu�n ��i g� ?",6,
"An Bang B�ng Tinh Th�ch Hang Li�n [10000 �i�m]/muaab1",
"An Bang C�c Hoa Th�ch Ch� Ho�n [7000 �i�m]/muaab1",
"An Bang K� Huy�t Th�ch Gi�i Ch� [7000 �i�m]/muaab1",
"An Bang �i�n Ho�ng Th�ch Ng�c B�i [6000 �i�m]/muaab1",
"Th�ng tin An Bang Li�n ��u /thongtinabliendau",
"Tho�t./no")
end

function thongtinabliendau()
Talk(2,"","An Bang Li�n ��u g�m 4 m�n, kh�ng th� d�ng chung v�i An Bang Th��ng, b�t bu�c ph�i �� 1 Set Li�n ��u ","An Bang Li�n ��u khi ��i l�nh b�i s� ra option ng�u nhi�n 15 - 20 v�i d�y chuy�n v� 25 - 30 v�i nh�n, ng�c b�i")
end
function muaab1(nsel)
xacnhanmuaitem(nsel+1)
end



function muadinhquoc()
Say("<color=green>S� Gi� Li�n ��u<color>: B�n mu�n ��i g� ?",7,
"��nh Qu�c � Sa Ph�t Qu�n [3000 �i�m]/muadq1",
"��nh Qu�c Thanh Sa Tr��ng Sam [3000 �i�m]/muadq1",
"��nh Qu�c Ng�n T�m Y�u ��i [1500 �i�m]/muadq1",
"��nh Qu�c X�ch Quy�n Nhuy�n Ngoa [1500 �i�m]/muadq1",
"��nh Qu�c T� ��ng H� Uy�n [1500 �i�m]/muadq1",
"Th�ng tin ��nh Qu�c Li�n ��u/thongtindqliendau",
"Tho�t./no")
end

function thongtindqliendau()
Talk(1,"","L�nh b�i mua � Shop Li�n ��u s� ��i ra trang b� ��nh Qu�c b�nh th��ng. Kh�ng c� b� trang b� ��nh Qu�c Li�n ��u ")
end

function muadq1(nsel)
xacnhanmuaitem(nsel+5)
end



function mualbvd()
Say("<color=green>S� Gi� Li�n ��u<color>: B�n mu�n ��i g� ?",5,
"L�nh b�i vinh d� Ho�ng Kim [600 �i�m]/mualbvd1",
"L�nh b�i vinh d� B�ch Ng�n [120 �i�m]/mualbvd1",
"L�nh b�i vinh d� Thanh ��ng [60 �i�m]/mualbvd1",
"L�nh b�i vinh d� H�n Thi�t [12 �i�m]/mualbvd1",
"Tho�t./no")
end

function mualbvd1(nsel)
xacnhanmuaitem(nsel+10)
end

function muavpquy()
Say("<color=green>S� Gi� Li�n ��u<color>: B�n mu�n ��i g� ?",3,
"Huy�n Tinh 6 [100 �i�m]/muavpquy1",
"Huy�n Tinh 7 [500 �i�m]/muavpquy1",
"Tho�t./no")
end

function muavpquy1(nsel)
xacnhanmuaitem(nsel+14)
end

function xacnhanmuaitem(num)
diem = GetTask(124)

if GetTask(124) >= mangitem[num][3] then
	SetTask(124,GetTask(124) - mangitem[num][3])
	if GetTask(124) == diem - mangitem[num][3] then
		AddEventItem(mangitem[num][1])
		Msg2Player("B�n nh�n ���c "..mangitem[num][2].." ")
	
		inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..num.." - "..mangitem[num][2].." ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","�� ��i "..mangitem[num][2].." c�n c� "..mangitem[num][3].." �i�m vinh d� ")
end


end


function inlogvinhdu(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ShopVinhDu.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end



mangitem = {
{35,"L�nh B�i [Li�n ��u] An Bang B�ng Tinh Th�ch H�ng Li�n",10000},
{36,"L�nh B�i [Li�n ��u] An Bang C�c Hoa Th�ch Ch� Ho�n",7000},
{37,"L�nh B�i [Li�n ��u] An Bang K� Huy�t Th�ch Gi�i Ch� ",7000},
{38,"L�nh B�i [Li�n ��u] An Bang �i�n Ho�ng Th�ch Ng�c B�i ",6000},
{39,"L�nh B�i ��nh Qu�c � Sa Ph�t Qu�n",3000},
{40,"L�nh B�i ��nh Qu�c Thanh Sa Tr��ng Sam",3000},
{41,"L�nh B�i ��nh Qu�c Ng�n T�m Y�u ��i ",1500},
{42,"L�nh B�i ��nh Qu�c X�ch Quy�n Nhuy�n Ngoa",1500},
{43,"L�nh B�i ��nh Qu�c T� ��ng H� Uy�n",1500},
{55,"L�nh b�i Vinh D� Ho�ng Kim",600},
{56,"L�nh b�i Vinh D� B�ch Ng�n",120},
{57,"L�nh b�i Vinh D� Thanh ��ng ",60},
{58,"L�nh b�i Vinh D� H�n Thi�t ",12},
{49,"Huy�n Tinh 6",100},
{50,"Huy�n Tinh 7",500},

}

function doipt1()
Sale(26,3)
Msg2Player("B�n hi�n �ang c� "..GetTask(124).." �i�m vinh d� !")
end

function thamchien()
if GetLevel() < 120 then
Talk(1,"","��ng c�p < 120 kh�ng th� tham gia li�n ��u !")
return
end

if checkten() == 0 then
	Talk(1,"","<color=green>S� gi� H�i Tr��ng: <color>: B�n ch�a ��ng k� chi�n ��i, vui l�ng r�i kh�i h�i tr��ng b�ng xa phu v� ��ng k� chi�n ��i cho tu�n m�i !")
return
end

if GetTask(145) == 0 then
Msg2Player("B�n ch�a ��ng k� chi�n ��i, vui l�ng r�i kh�i h�i tr��ng v� ��ng k� l�i !")
return
end

a = GetGlbMissionV(12)
if a >= 100 then
Talk(1,"","<color=green>S� gi� H�i Tr��ng: <color>: S� l��ng ��ng k� li�n ��u ��t 100 ng��i kh�ng th� ��ng k� th�m !") 
return
end
if check_sotran_max() == 1 then
Talk(1,"","<color=green>S� gi� H�i Tr��ng: <color>: B�n �� tham gia �� <color=red>"..sotranmax.."<color> trong th�ng n�y !")
return
end


if GetTaskTemp(22) == 0 and a < 100 then
	SetTaskTemp(22,1)
	SetGlbMissionV(12,a+1)
	SetTask(16,GetCurCamp())
	Talk(1,"","<color=green>S� gi� H�i Tr��ng: <color>: Ch�c m�ng b�n �� ��ng k� li�n ��u th�nh c�ng. Vui l�ng kh�ng r�i kh�i h�i tr��ng ��n khi b�t ��u giao chi�n ! ") 
	Msg2Player("Ch�c m�ng b�n �� ��ng k� li�n ��u th�nh c�ng. Vui l�ng kh�ng r�i kh�i h�i tr��ng ��n khi b�t ��u giao chi�n !")
else
	Talk(1,"","<color=green>S� gi� H�i Tr��ng: <color>: B�n �� ��ng k� tr�n ��u r�i , kh�ng th� ��ng k� th�m n�a ")
end
end

function save()
BANG = TaoBang(danhsach,"danhsach")				
LuuBang("datascript/liendau/danhsach.lua",BANG)
BANG2 = TaoBang(danhsachxephang,"danhsachxephang")				
LuuBang("datascript/liendau/danhsachxephang.lua",BANG2)
end

function savetimer()
BANG = TaoBang(danhsach,"danhsach")				
LuuBang("datascript/liendau/danhsach.lua",BANG)
BANG2 = TaoBang(danhsachxephang,"danhsachxephang")				
LuuBang("datascript/liendau/danhsachxephang.lua",BANG2)
end



function OnDeath(Launcher)
w,x,y = GetWorldPos()
if w == 43 and GetTaskTemp(22) > 0 then
bigiet = GetName()
PlayerIndex1 = NpcIdx2PIdx(Launcher)
OrgPlayer = PlayerIndex;
if PlayerIndex1 > 0 then
	PlayerIndex = PlayerIndex1
	giet = GetName()
	Msg2Player("B�n �� gi�t ch�t ��i th� ["..bigiet.."] v� gi�nh chi�n th�ng !!")
	phanthuongthang()
	kickmove()	
	PlayerIndex = OrgPlayer
	SetDeathScript("")
	SetFightState(0)
	SetPKState(0)
	BlockPKState(0)
	SetPunish(0);
	SetTaskTemp(22,0)
	Msg2Player("B�n �� b� ["..giet.."] ��nh b�i.")
	AddKinhNghiem(1)
	
end
end
end



function RunTimer()
ngay =  tonumber(date("%d"))
thang = tonumber(date("%m"))
gio,phut,giay = GetTimeNew()

if check_khoang_time_ld(1,4) == 1 then
Msg2SubWorld("V� l�m Li�n ��u �ang trong giai �o�n b�o danh, c�c b�n h�y nhanh ch�n ��n s� gi� h�i tr��ng �� ��ng k� !")
AddGlobalCountNews("V� l�m Li�n ��u �ang trong giai �o�n b�o danh, c�c b�n h�y nhanh ch�n ��n s� gi� h�i tr��ng �� ��ng k� !",1)
end

	if check_time_ld(4) == 1 then
		dsdau = {}
		for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if GetTaskTemp(22) == 1 and w == 42 then
			danhsach[GetTask(145)][8] = danhsach[GetTask(145)][8] + 1
			SetTempRevPos(42,186*8*32,190*16*32)
			SetLogoutRV(1)
			SetTaskTemp(50,0)
			SetCurCamp(4)
			SetCamp(4)
			NewWorld(42,199*8,187*16)
			Msg2Player("B�n ���c ��a ��n ph�ng ch� thi ��u, tr�n ��u s� b�t ��u sau 1 ph�t n�a !")
		end	
		end		
		dsdau_temp = {}
		for i=1,GetGlbMissionV(12) do
			dsdau_temp[i] = {"",""}
		end
	elseif check_time_ld(5) == 1 then
		for i=1,GetCountPlayerMax() do
		PlayerIndex = i
			w,x,y = GetWorldPos()
			if w == 42 and GetTaskTemp(22) == 1 then
				vitri = random(1,getn(dsdau_temp))
				if dsdau_temp[vitri][1] ~= "" then
					for u=1,getn(dsdau_temp) do
						if dsdau_temp[u][1] == "" then
							dsdau_temp[u][1] = GetName()
							dsdau_temp[u][2] = GetUUID()
							break
						end
					end
				else
					dsdau_temp[vitri][1] = GetName()
					dsdau_temp[vitri][2] = GetUUID()
				end
			end
		end
		for i=1,getn(dsdau_temp) do
			if dsdau_temp[i][1] ~= "" then
				dsdau[getn(dsdau)+1] = {dsdau_temp[i][1],dsdau_temp[i][2],0,0}
			end
		end	
		for j=1,GetCountPlayerMax() do
		PlayerIndex = j
			w,x,y = GetWorldPos()
			if w == 42 and GetTaskTemp(22) == 1 then 
				SetTaskTemp(22,vitridsdau())
				if GetTaskTemp(22) > getn(dsdau) then
					kickmove()
					Msg2Player("L�i v��t qu� danh s�ch thi ��u 1 !")
					inlog()
				elseif GetTaskTemp(22) > 0 then
					if GetTaskTemp(22) == getn(dsdau) and mod(GetTaskTemp(22),2) == 1 then
						Msg2Player("Kh�ng c� ��i th� cho b�n, v� th� b�n ���c x� th�ng !")
						phanthuongthang1()
						kickmove()
					else
						if mod(GetTaskTemp(22),2) == 0 then
						vitri = GetTaskTemp(22)
						else
						vitri=GetTaskTemp(22) + 1
						end
						SetDeathScript("\\script\\liendau\\sugiald.lua")
						NewWorld(43,TOADO[vitri/2][1]*8,TOADO[vitri/2][2]*16)
						SetCurCamp(mod(GetTaskTemp(22),2)+1)
						SetCamp(mod(GetTaskTemp(22),2)+1)
						DelItemPoison(1,10,0,1)
						DelItemPoison(1,10,0,2)
	
						SetFightState(0)
						SetLogoutRV(1)
						SetPunish(1);
						Msg2Player("B�n ���c ��a ��n ph�ng thi ��u, tr�n ��u s� ch�nh th�c b�t ��u sau 1 ph�t n�a ")
					end
				end
			end
		end
	elseif check_time_ld(6) == 1 then
		for i=1,GetCountPlayerMax() do
		PlayerIndex = i
			w,x,y = GetWorldPos()
			if w == 43 then
				SetFightState(1)
				SetPKState(2)
				BlockPKState(1)
				Msg2Player("Tr�n ��u b�t ��u.....")
			end
		end
	elseif check_khoang_time_ld(7,13) == 1 then
		-- Check tat ca doi thu con trong map va dua vao mang
		for i=1,GetCountPlayerMax() do
		PlayerIndex = i
			w,x,y = GetWorldPos()
			if w == 43 then
				if GetTaskTemp(22) > getn(dsdau) then
					kickmove()
					Msg2Player("L�i v��t qu� danh s�ch thi ��u 2 !")
					inlog()
				elseif GetTaskTemp(22) > 0 then
					dsdau[GetTaskTemp(22)][3] = 2
				end
			end
		end
		-- Check nguoi choi va mang
		for i=1,GetCountPlayerMax() do
		PlayerIndex = i
			w,x,y = GetWorldPos()				
			if w == 43 then
				if GetTaskTemp(22) > getn(dsdau) then
					kickmove()
					Msg2Player("L�i v��t qu� danh s�ch thi ��u 3 !")
					inlog()
				elseif GetTaskTemp(22) > 0 then
				if mod(GetTaskTemp(22),2) == 1 then
					if dsdau[GetTaskTemp(22)+1][3]  ~= 2 then
						phanthuongthang()	
						kickmove()
						Msg2Player("��i th� c�a b�n �� tho�t kh�i game, v� th� b�n gi�nh chi�n th�ng ")
					end
					elseif mod(GetTaskTemp(22),2) == 0 then
						if dsdau[GetTaskTemp(22)-1][3] ~= 2 then
							phanthuongthang()	
							kickmove()
							Msg2Player("��i th� c�a b�n �� tho�t kh�i game, v� th� b�n gi�nh chi�n th�ng ")
						end
					end
				end
			end
		end
	elseif check_time_ld(13) == 1 then
		-- Check tat ca doi thu con trong map va dua vao mang
		for i=1,GetCountPlayerMax() do
		PlayerIndex = i
			w,x,y = GetWorldPos()
			if w == 43 then
				if GetTaskTemp(22) > getn(dsdau) then
					kickmove()
					Msg2Player("L�i v��t qu� danh s�ch thi ��u 4 !")
					inlog()
				elseif GetTaskTemp(22) > 0  then
					dsdau[GetTaskTemp(22)][3] = 3
					dsdau[GetTaskTemp(22)][4] = GetTaskTemp(50)
				end
			end
		end
		-- Check nguoi choi va mang
		for i=1,GetCountPlayerMax() do
		PlayerIndex = i
			w,x,y = GetWorldPos()				
			if w == 43 then
				if GetTaskTemp(22) > getn(dsdau) then
					kickmove()
					Msg2Player("L�i v��t qu� danh s�ch thi ��u !")
				elseif GetTaskTemp(22) > 0 then
					if mod(GetTaskTemp(22),2) == 1 then
					if dsdau[GetTaskTemp(22)+1][3] ~= 3 then
						phanthuongthang()	
						kickmove()
						Msg2Player("��i th� c�a b�n �� tho�t kh�i game, v� th� b�n gi�nh chi�n th�ng ")
					else
						Msg2Player("T�ng Damage c�a b�n: "..GetTaskTemp(50).." - T�ng Damage c�a "..dsdau[GetTaskTemp(22)+1][1]..": "..dsdau[GetTaskTemp(22)+1][4].." ")
						if dsdau[GetTaskTemp(22)+1][4] < GetTaskTemp(50) then
							phanthuongthang()	
							kickmove()
							Msg2Player("Sau 4 ph�t thi ��u, kh�ng c� ai t� vong, b�n �� gi�nh chi�n th�ng v� c� s� damage v�o ��i th� nhi�u h�n !")
						elseif dsdau[GetTaskTemp(22)+1][4] > GetTaskTemp(50) then
							if w == 43 and GetTaskTemp(22) > 0 then
								AddKinhNghiem(1)
								Msg2Player("Sau 7 ph�t thi ��u, kh�ng c� ai t� vong, b�n b� x� thua v� c� s� damage ��nh v�o ��i th� �t h�n !")
							end
							kickmove()
						else											
							Msg2Player("Sau 7 ph�t thi ��u, hai b�n kh�ng ph�n th�ng b�i. K�t qu�: H�a")
							phanthuonghoa()
							kickmove()
						end
					end
			
					elseif mod(GetTaskTemp(22),2) == 0 then
					if dsdau[GetTaskTemp(22)-1][3] ~= 3 then
						phanthuongthang()	
						kickmove()
						Msg2Player("��i th� c�a b�n �� tho�t kh�i game, v� th� b�n gi�nh chi�n th�ng ")
	
					else
						Msg2Player("T�ng Damage c�a b�n: "..GetTaskTemp(50).." - T�ng Damage c�a "..dsdau[GetTaskTemp(22)-1][1]..": "..dsdau[GetTaskTemp(22)-1][4].." ")
						if dsdau[GetTaskTemp(22)-1][4] < GetTaskTemp(50) then
							phanthuongthang()	
							kickmove()
							Msg2Player("Sau 4 ph�t thi ��u, kh�ng c� ai t� vong, b�n �� gi�nh chi�n th�ng v� c� s� damage v�o ��i th� nhi�u h�n !")
						elseif dsdau[GetTaskTemp(22)-1][4] > GetTaskTemp(50) then
							if w == 43 and GetTaskTemp(22) > 0 then
								AddKinhNghiem(1)
								Msg2Player("Sau 7 ph�t thi ��u, kh�ng c� ai t� vong, b�n b� x� thua v� c� s� damage ��nh v�o ��i th� �t h�n !")
							end
							kickmove()
						else										
							Msg2Player("Sau 7ph�t thi ��u, hai b�n kh�ng ph�n th�ng b�i. K�t qu�: H�a")
							phanthuonghoa()
							kickmove()
						end
					end
					end
				end
			end
		end
		
		dsdau = {}
		SetGlbMissionV(12,0)
		if check_time_xh() == 1 then
			CapNhatThuHangLienDau()
		end	
	end
end

function vitridsdau()
for i=1,getn(dsdau) do
	if GetName() == dsdau[i][1] and GetUUID() == dsdau[i][2] then
		return i
	end
end
end

function kickmove()
SetDeathScript("")
SetTempRevPos(42,186*8*32,190*16*32)
NewWorld(42,186*8,190*16)
SetFightState(0)
SetPKState(0)
BlockPKState(0)
SetPunish(0);
SetTaskTemp(22,0)
end

function phanthuongthang1()
if GetTask(145) == 0 then
Msg2Player("B�n ch�a ��ng k� chi�n ��i, vui l�ng r�i kh�i h�i tr��ng v� ��ng k� l�i !")
return
end
w,x,y = GetWorldPos()
if w == 42 and GetTaskTemp(22) > 0 then
AddKinhNghiem(3)
SetTask(124,GetTask(124)+5)
Msg2Player("�i�m vinh d� hi�n t�i: "..GetTask(124).." �i�m ")
danhsach[GetTask(145)][4] = danhsach[GetTask(145)][4] + 3
danhsach[GetTask(145)][8] = danhsach[GetTask(145)][8] - 1
danhsach[GetTask(145)][6] = danhsach[GetTask(145)][6] + 1
Msg2Player("�i�m chi�n ��i hi�n t�i : "..danhsach[GetTask(145)][4].." �i�m ")
end
end

function phanthuongthang()
if GetTask(145) == 0 then
Msg2Player("B�n ch�a ��ng k� chi�n ��i, vui l�ng r�i kh�i h�i tr��ng v� ��ng k� l�i !")
return
end
w,x,y = GetWorldPos()
if w == 43 and GetTaskTemp(22) > 0 then
AddKinhNghiem(3)
SetTask(124,GetTask(124)+5)
Msg2Player("�i�m vinh d� hi�n t�i: "..GetTask(124).." �i�m ")
danhsach[GetTask(145)][4] = danhsach[GetTask(145)][4] + 3
danhsach[GetTask(145)][8] = danhsach[GetTask(145)][8] - 1
danhsach[GetTask(145)][6] = danhsach[GetTask(145)][6] + 1
Msg2Player("�i�m chi�n ��i hi�n t�i : "..danhsach[GetTask(145)][4].." �i�m ")
end
end

function phanthuonghoa()
if GetTask(145) == 0 then
Msg2Player("B�n ch�a ��ng k� chi�n ��i, vui l�ng r�i kh�i h�i tr��ng v� ��ng k� l�i !")
return
end
w,x,y = GetWorldPos()
if w == 43 and GetTaskTemp(22) > 0 then
AddKinhNghiem(2)
SetTask(124,GetTask(124)+2)
Msg2Player("�i�m vinh d� hi�n t�i: "..GetTask(124).." �i�m ")
danhsach[GetTask(145)][4] = danhsach[GetTask(145)][4] + 1
danhsach[GetTask(145)][8] = danhsach[GetTask(145)][8] - 1
danhsach[GetTask(145)][7] = danhsach[GetTask(145)][7] + 1
Msg2Player("�i�m chi�n ��i hi�n t�i : "..danhsach[GetTask(145)][4].." �i�m ")
end
end

function sugiadangkyliendau()
ngay = tonumber(date("%d"))
gio,phut,giay = GetTimeNew()
if ngay > ngayketthuc or ngay < ngaybatdau then
	Say("<color=green>S� gi� Li�n ��u <color>: Hi�n t�i �ang trong th�i gian ngh� ng�i, kh�ng c� b�t k� tr�n thi ��u n�o di�n ra. Th�i gian li�n ��u t� ng�y 8 ��n 28 h�ng th�ng.",3,
	"Ta ��n nh�n ph�n th��ng x�p h�ng li�n ��u /nhanphanthuong",
	"C�a h�ng vinh d� /doipt",
	"Tho�t ./no")
else
	Say("<color=green>S� gi� Li�n ��u <color>:",3,
	"Ta mu�n ��n v� l�m li�n ��u h�i tr��ng /denhoitruong",
	"Ta mu�n l�p chi�n ��i/lapchiendoi",
	"Tho�t/no")
end
end

function nhanphanthuong()
ngay = tonumber(date("%d"))
if ngay > ngayketthuc or ngay < ngaybatdau then
havemang = 0
	for i=1,getn(danhsachxephang) do
		if GetName() == danhsachxephang[i][3] then			
			havemang = 1
			if danhsachxephang[i][9] == 0 or danhsachxephang[i][9] == nil then
				nhanphanthuong2(i)
			else
				Talk(1,"","B�n �� nh�n ph�n th��ng x�p h�ng li�n ��u trong th�ng n�y r�i !")		
			end
		end
	end
if havemang == 0 then
Talk(1,"","B�n kh�ng c� trong danh s�ch x�p h�ng, kh�ng c� ph�n th��ng cho b�n !")
end
else
Talk(1,"","Th�i gian nh�n ph�n th��ng b�t ��u v�o 0h00 ng�y 29 !")
end
end


function nhanphanthuong2(num)
ngay = tonumber(date("%d"))
nl = danhsachxephang[num][9]
if ngay > ngayketthuc or ngay < ngaybatdau then
if num <= danhhieuliendau[getn(danhhieuliendau)][3] then
	if danhsachxephang[num][9] == 0 or danhsachxephang[num][9] == nil then
		danhsachxephang[num][9] = 1
		if danhsachxephang[num][9] == 1 then
			vitri = check_vitri_danhhieu(num)
			SetTask(124,GetTask(124) + danhhieuliendau[vitri][6])
			Talk(1,"","B�n nh�n ph�n th��ng li�n ��u h�ng "..num.." ���c <color=red>"..danhhieuliendau[vitri][6].."<color> �i�m vinh d� ")
			Talk(0,"")
		end
	end
end
end
end


function denhoitruong()
ngay = tonumber(date("%d"))
gio,phut,giay = GetTimeNew()

if GetLevel() < 120 then
Talk(1,"","��ng c�p < 120 kh�ng th� tham gia li�n ��u !")
return
end

if checkten() == 0 then
Talk(1,"","Ng��i ch�a ��ng k� chi�n ��i, kh�ng th� v�o h�i tr��ng ")
return
end

if GetTask(145) == 0 then
SetTask(145,checkstt())
Msg2Player("H� th�ng t� ��ng fix l�i do b� rollback, vui l�ng tham gia l�i !")
return
end
NewWorld(42,182*8,188*16)
LeaveTeam()
SetFightState(0)
SetTask(16,GetCurCamp())
SetRevPos(20)
SetCreateTeam(0);
SetTask(22,ngay) -- Task Lien Dau
SetDeathScript("\\script\\liendau\\sugiald.lua")
Msg2Player("Di chuy�n ��n h�i tr��ng li�n ��u .....")
Msg2Player("T�n chi�n ��i: "..danhsach[GetTask(145)][5].." ")
Msg2Player("<color=pink>T� ng�y 10/7/2014, t�t c� M�u T�ng Kim ��u ph�i b� v�o r��ng khi tham gia li�n ��u, n�u kh�ng s� b� x�a khi v�o tr�n ��u !")
Talk(1,"","H�y nhanh ch�n ��n <color=green>S� Gi� H�i Tr��ng <color> �� ��ng k� tr�n ��u ")
end

function checkstt()
for i=1,getn(danhsach) do
if GetName() == danhsach[i][3] then
return i
end
end
end
function lapchiendoi()
ngay = tonumber(date("%d"))
gio,phut,giay = GetTimeNew()

if ngay >= ngayketthuc or ngay < ngaybatdau then
Talk(1,"","<color=green>S� Gi� Li�n ��u: <color>: Ch� cho ph�p l�p chi�n ��i trong th�i gian thi ��u t� ng�y "..ngaybatdau.." ��n ng�y "..ngayketthuc.." h�ng th�ng ")
return
end

if GetLevel() < 120 then
Talk(1,"","<color=green>S� Gi� Li�n ��u: <color>:  ��ng c�p < 120 kh�ng th� tham gia li�n ��u !")
return
end
if GetFaction == "" or GetCurCamp() == 0 or GetCamp() == 0  then
Talk(1,"","<color=green>S� Gi� Li�n ��u: <color>:  B�n ch�a gia nh�p m�n ph�i kh�ng th� t�o chi�n ��i !")
return
end

if checkten() ~= 0 then
Talk(1,"","<color=green>S� Gi� Li�n ��u: <color>:  B�n �� ��ng k� chi�n ��i <color=yellow>["..danhsach[checkten()][5].."]<color> r�i, c�n mu�n ��ng k� g� n�a ")
return
end

OpenStringBox (1,"Nh�p t�n chi�n ��i" , "xnchiendoi")
end


function xnchiendoi(string)
if string == "" then
Talk(1,"","<color=green>S� Gi� Li�n ��u: <color>: T�n chi�n ��i kh�ng ���c �� tr�ng !")
return
end
if checktencd(string) ~= 0 then
Talk(1,"","<color=green>S� Gi� Li�n ��u: <color>:  T�n chi�n ��i b�n nh�p v�o �� t�n t�i, vui l�ng nh�p t�n kh�c! ")
return
end

danhsach[getn(danhsach)+1] = {GetAccount(),GetUUID(),GetName(),0,string,0,0,0,0}
SetTask(145,getn(danhsach))
Say("<color=green>S� gi� Li�n ��u <color>: B�n �� l�p ��i th�nh c�ng, t�n ��i l� <color=yellow>[<color=yellow>"..checkcd().." <color>] !",1,"K�t th�c ��i tho�i/no")
end

function xemhang()
if GetTask(145) == 0 then
return "V� Danh"
else
	hang = 0
	for i=1,getn(danhsach) do
		if danhsach[GetTask(145)][4] <= danhsach[i][4] then
			hang = hang + 1
		end
	end
return hang
end
end

function checktencd(string)
for i=1,getn(danhsach) do
	if string == danhsach[i][5] then
		return 1
	end
end
return 0
end

function diemcd()
if GetTask(145) == 0 then
return 0
else
return danhsach[GetTask(145)][4]
end
end
function xemthang()
if GetTask(145) == 0 then
return 0
else
return danhsach[GetTask(145)][6]
end
end

function xemhoa()
if GetTask(145) == 0 then
return 0
else
return danhsach[GetTask(145)][7]
end
end
function xemthua()
if GetTask(145) == 0 then
return 0
else
return danhsach[GetTask(145)][8]
end
end


function checkten()
check = 0
for i=1,getn(danhsach) do
if GetUUID() == danhsach[i][2] then
check = i
break
end
end
return check
end


function thutuds()
for i=1,getn(dsdau) do
if GetName() == dsdau[i][1] then
return i
end
end
end
function checkcd()
for i=1,getn(danhsach) do
if GetUUID() == danhsach[i][2] then
return danhsach[i][5]

end
end
end

function no()
if GetName() == "ThanhTest" then
CapNhatThuHangLienDau()
end

end
function inlog()
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/adminlog.txt", "a");
if LoginLog then
write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetGlbMissionV(12).." - "..GetTaskTemp(22).." - "..getn(dsdau).." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end



mangtam = {}
function CapNhatThuHangLienDau()
for i=1,512 do
mangtam[getn(mangtam)+1] = {"",0,"",0,"",0,0,0,0}
end
vtmin = check_min_mangtam()
for i=1,getn(danhsach) do
	if danhsach[i][4] > mangtam[vtmin][4] then
		mangtam[vtmin] = danhsach[i]
		vtmin = check_min_mangtam()
	end
end
print("Cap Nhat Xep Hang Moi Thanh Cong !")
SapXepThuHangLienDau()
print("Sap Xep Bang Xep Hang Xong")
danhsach_backup = danhsach
danhsach = {}
BANG2 = TaoBang(danhsach_backup,"danhsach_backup")				
LuuBang("datascript/liendau/danhsach_backup.lua",BANG2)

BANG1 = TaoBang(danhsach,"danhsach")				
LuuBang("datascript/liendau/danhsach.lua",BANG1)
danhsachxephang = mangtam
BANG3 = TaoBang(danhsachxephang,"danhsachxephang")				
LuuBang("datascript/liendau/danhsachxephang.lua",BANG3)

print("Reset danh sach xong !")
end

function check_min_mangtam()
min = mangtam[1][4]
vt_min = 1
for i=2,getn(mangtam) do
	if min > mangtam[i][4] then	
		min = mangtam[i][4]
		vt_min = i
	end
end
return vt_min
end

tam = {"",0,"",0,"",0,0,0,0}
function SapXepThuHangLienDau()
for i=1,getn(mangtam) do
	for j=1,getn(mangtam) do
		if mangtam[i][4] > mangtam[j][4] then
			tam = mangtam[i]
			mangtam[i] = mangtam[j]
			mangtam[j] = tam
		elseif mangtam[i][4] == mangtam[j][4] then
			if mangtam[i][6] > mangtam[j][6] then
				tam = mangtam[i]
				mangtam[i] = mangtam[j]
				mangtam[j] = tam
			elseif mangtam[i][8] < mangtam[j][8] then
				tam = mangtam[i]
				mangtam[i] = mangtam[j]
				mangtam[j] = tam
			end
		end
	end
end

end


function check_sotran_max()
for i=1,getn(danhsach) do
	if GetName() == danhsach[i][3] then
		sotran = danhsach[i][6] + danhsach[i][7] + danhsach[i][8] 
		if sotran >= sotranmax then
			return 1
		end
	end
end
return 0
end

kinhnghiem={{10,187},{50,262},{60,337},{70,412},{80,600},{90,750},{100,975},{999,0}}
soluongquai =  {{1,500,1200},{80,500,1200},{90,700,1500},{100,800,1800},{120,900,1800},{150,1000,1800},{201,1200,1800}}

function AddKinhNghiem(num)
if num == 1 then
doiexp2(1000)
elseif num == 2 then
doiexp2(1500)
elseif num == 3 then
doiexp2(2000)
end
end

function doiexp2(num)
	vt = 1
	for i=1,getn(soluongquai) do
	if (GetLevel() >= soluongquai[i][1]) and (GetLevel() < soluongquai[i+1][1]) then
	vt = i
	end
	end
	exp = soluongquai[vt][2] * soluongquai[vt][3] * 3 
	exp2 = exp / 10000 * num * 2
	AddOwnExp(exp2)
	Msg2Player("B�n nh�n ���c "..exp2.." �i�m kinh nghi�m")
	Talk(0,"")
end

