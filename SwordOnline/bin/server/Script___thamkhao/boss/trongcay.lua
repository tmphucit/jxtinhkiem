Include("\\script\\lib\\thuvien.lua")
Include("\\script\\boss\\danhsachcay.lua")


function main(idx)

ngay = tonumber(date("%d"))
h,m,s = GetTimeNew()
time = ngay*24*60*60 + h*60*60 + m*60 + s
name = GetName()
team = GetTeam()
Team1 = ""
Team2 = ""
w,x,y = GetWorldPos()


if getn(mangcay) == 0 then
	mangcay[getn(mangcay)+1] = {0,"","","",GetNpcName(idx),time,0,10,2}
end

vt1 = checkvtidx(idx)
if (vt1 > 0) then
	idxP = PlayerIndex
	if mangcay[vt1][2] ~= GetName() and mangcay[vt1][3] ~= GetName() and mangcay[vt1][4] ~= GetName() then
		if GetTask(132) ~= 1 or GetPKState() ~= 1 then
			Talk(1,"","B�n ch�a nh�n nhi�m v� S�n C�y T�m B�o, vui l�ng ��n L� Quan �� nh�n !")
			Msg2Player("��n l� quan �� nh�n nhi�m v� !")
		return
		end
		if mangcay[vt1][8] <= 0 then
			DelNpc(idx)
			
			if mangcay[vt1][5] == "[MM]"..mangcay[vt1][2].."" or mangcay[vt1][5] == "[MM]"..mangcay[vt1][3].."" or mangcay[vt1][5] == "[MM]"..mangcay[vt1][4].."" then
				AddEventItem(189)
				Msg2Player("Ch�c m�ng, b�n �� c��p th�nh c�ng <color=yellow>H�t May M�n ")
			elseif mangcay[vt1][5] == "[HH]"..mangcay[vt1][2].."" or mangcay[vt1][5] == "[HH]"..mangcay[vt1][3].."" or mangcay[vt1][5] == "[HH]"..mangcay[vt1][4].."" then
				AddEventItem(190)
				Msg2Player("Ch�c m�ng, b�n �� c��p th�nh c�ng <color=yellow>H�t Hoa H�ng")
			elseif mangcay[vt1][5] == "[TT]"..mangcay[vt1][2].."" or mangcay[vt1][5] == "[TT]"..mangcay[vt1][3].."" or mangcay[vt1][5] == "[TT]"..mangcay[vt1][4].."" then
				AddEventItem(191)
				Msg2Player("Ch�c m�ng, b�n �� c��p th�nh c�ng <color=yellow>H�t Th�y Tinh")
		
			elseif mangcay[vt1][5] == "[HK]"..mangcay[vt1][2].."" or mangcay[vt1][5] == "[HK]"..mangcay[vt1][3].."" or mangcay[vt1][5] == "[HK]"..mangcay[vt1][4].."" then
				AddEventItem(192)
				Msg2Player("Ch�c m�ng, b�n �� c��p th�nh c�ng <color=yellow>H�t Ho�ng Kim")
			end
			mangcay[vt1][1] = 0	
			SetKetThuc2(vt1)
			for i=1,GetCountPlayerMax() do
			PlayerIndex = i
			if GetName() == mangcay[vt1][2] or GetName() == mangcay[vt1][3] or GetName() == mangcay[vt1][4] then
			Msg2Player("<color=yellow>Xin chia bu�n ! C�y c�a b�n �� b� "..name.." tr�m m�t, h�y c� g�ng tr�ng l�i nh� !")
			end
			end
			PlayerIndex = idxP
		else
			mangcay[vt1][8] = mangcay[vt1][8] - 1
			Msg2Player("C�n "..mangcay[vt1][8].." l�n n�a b�n s� tr�m ���c c�y !")
			for i=1,GetCountPlayerMax() do
			PlayerIndex = i
			if GetName() == mangcay[vt1][2] or GetName() == mangcay[vt1][3] or GetName() == mangcay[vt1][4] then
				Msg2Player("C�y �ang b� "..name.." �n tr�m, h�y b�o v� c�y !!!!!!")
			end
			end
			PlayerIndex = idxP
		end
		--savebang()
	return
	end
else
	Msg2Player("C�y kh�ng th� c��p do ch� c�y ch�a k�ch ho�t !")
end

if GetTeamSize() ~= 3 then
Talk(1,"","T� ��i ph�i �� 3 ng��i m�i c� th� tr�ng c�y !")
return
end

idxPlayer = PlayerIndex
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if team == GetTeam() and name ~= GetName() then
		if Team1 == "" then
			Team1 = GetName()
		elseif Team2 == "" then
			Team2 = GetName()
		end
	end
end
PlayerIndex = idxPlayer

a = checkten()
if a ~= 0 then
	if idx ~= mangcay[a][1] then
		DelNpc(mangcay[a][1])
		mangcay[a][1] = 0	
		SetKetThuc()
	end
end

if GetNpcName(idx) == "[MM]"..GetName().."" or GetNpcName(idx) == "[HH]"..GetName().."" or GetNpcName(idx) == "[TT]"..GetName().."" or GetNpcName(idx) == "[HK]"..GetName().."" then	
	vt = 0
	if check_mangcay() ~= 0 then
		vt = check_mangcay()
			sx = random(1,4)
			if sx == 1 then
			mangcay[vt] = {idx,GetName(),Team1,Team2,GetNpcName(idx),(time-5),0,10,2}
			elseif sx == 2 then
			mangcay[vt] = {idx,Team1,GetName(),Team2,GetNpcName(idx),(time-5),0,10,2}
			elseif sx == 3 then
			mangcay[vt] = {idx,Team1,Team2,GetName(),GetNpcName(idx),(time-5),0,10,2}
			elseif sx == 4 then
			mangcay[vt] = {idx,Team2,Team1,GetName(),GetNpcName(idx),(time-5),0,10,2}
			end

			SetNpcName(idx,"M�m C�y");
			Msg2Team("C�ng vi�c m�i ng��i: "..mangcay[vt][2]..": T��i N��c\, "..mangcay[vt][3]..": B�t S�u, "..mangcay[vt][4].." B�n Ph�n ")
			Msg2Team("<color=green>Ch� �: Th�i gian t�i thi�u gi�a c�c giai �o�n l� 3 gi�y v� t�i �a l� 2 ph�t. N�u ch�m s�c kh�ng ��ng, c�y s� ch�t !")
			Msg2Team("<color=yellow>Giai �o�n hi�n t�i: T��i N��c")
	else
		if checkten() == 0 then
			sx = random(1,4)
			if sx == 1 then
			mangcay[getn(mangcay)+1] = {idx,GetName(),Team1,Team2,GetNpcName(idx),(time-5),0,10,2}
			elseif sx == 2 then
			mangcay[getn(mangcay)+1] =  {idx,Team1,GetName(),Team2,GetNpcName(idx),(time-5),0,10,2}
			elseif sx == 3 then
			mangcay[getn(mangcay)+1] =  {idx,Team1,Team2,GetName(),GetNpcName(idx),(time-5),0,10,2}
			elseif sx == 4 then
			mangcay[getn(mangcay)+1] =  {idx,Team2,Team1,GetName(),GetNpcName(idx),(time-5),0,10,2}
			end

			SetNpcName(idx,"M�m C�y");
			Msg2Team("C�ng vi�c m�i ng��i: "..mangcay[vt][2]..": T��i N��c\, "..mangcay[vt][3]..": B�t S�u, "..mangcay[vt][4].." B�n Ph�n ")
			Msg2Team("<color=green>Ch� �: Th�i gian t�i thi�u gi�a c�c giai �o�n l� 3 gi�y v� t�i �a l� 2 ph�t. N�u ch�m s�c kh�ng ��ng, c�y s� ch�t !")
			Msg2Team("<color=yellow>Giai �o�n hi�n t�i: T��i N��c")
		else
			Msg2Player("T�n t�i danh s�ch !")
		end
	end
else
	vt1 = checkvtidx(idx)
	if vt1 == 0 then
		Talk(1,"","C�y n�y ch�a ���c k�ch ho�t, h�y ��i ch� c�y ��n kick ho�t")
	else
		vt2 = checkvitri(vt1)
		if vt2 == 0 then
			DelNpc(idx)
			mangcay[vt1][1] = 0
			SetKetThuc()
			Talk(1,"","Ng��i kh�ng thu�c t� ��i �� t�o ra c�y n�y, c�y bi ch�t ....")
			Msg2Team("Ng��i ch�i "..GetName().." kh�ng thu�c t� ��i t�o ra c�y, c�y b� ch�t !")	
		else
			if (mangcay[vt1][7] == 0 or mangcay[vt1][7] == 3 or mangcay[vt1][7] == 6) and GetName() == mangcay[vt1][2] then
				if time - mangcay[vt1][6] > 120 then
					DelNpc(idx)
					mangcay[vt1][1] = 0
					SetKetThuc()
					Msg2Team("<color=pink>C�y �� ch�t do "..GetName().." do b�n kh�ng ch�m s�c sau 2 ph�t !")
				elseif time - mangcay[vt1][6] < 3 then
					Msg2Player("Th�i gian c�n l�i: "..(3 - (time - mangcay[vt1][6])).." gi�y !")
				else
					if GetItemCount(193) > 0 then
						DelItem(193)
						mangcay[vt1][7] = mangcay[vt1][7] + 1
						mangcay[vt1][6] = time
						mangcay[vt1][9] = 2
						Msg2Team("Ho�n th�nh t��i n��c !")
						Msg2Team("<color=yellow>Giai �o�n ti�p theo: B�t S�u")
					else
						Talk(1,"","B�n kh�ng mang theo <color=red>N��c T��i C�y<color>, kh�ng th� l�m nhi�m v� !")
					end
				end
			elseif (mangcay[vt1][7] == 1 or mangcay[vt1][7] == 4 or mangcay[vt1][7] == 7)  and GetName() == mangcay[vt1][3] then
				if time - mangcay[vt1][6] > 120 then
					DelNpc(idx)
					mangcay[vt1][1] = 0
					SetKetThuc()
					Msg2Team("<color=pink>C�y �� ch�t do "..GetName().." do b�n kh�ng ch�m s�c sau 2 ph�t !")
				elseif time - mangcay[vt1][6] < 3 then
					Msg2Player("Th�i gian c�n l�i: "..(3 - (time - mangcay[vt1][6])).." gi�y !")
				else
					if GetItemCount(195) > 0 then
						DelItem(195)
						mangcay[vt1][7] = mangcay[vt1][7] + 1
						mangcay[vt1][6] = time
						mangcay[vt1][9] = 2	
						Msg2Team("Ho�n th�nh b�t s�u !")
						Msg2Team("<color=yellow>Giai �o�n ti�p theo: B�n Ph�n")
					else
						Talk(1,"","B�n kh�ng mang theo <color=red>Thu�c Tr� S�u<color>, kh�ng th� l�m nhi�m v� !")
					end
				end
			elseif (mangcay[vt1][7] == 2 or mangcay[vt1][7] == 5 or mangcay[vt1][7] == 8)  and GetName() == mangcay[vt1][4] then
				if time - mangcay[vt1][6] > 120 then
					DelNpc(idx)
					mangcay[vt1][1] = 0
					SetKetThuc()
					Msg2Team("<color=pink>C�y �� ch�t do "..GetName().." do b�n kh�ng ch�m s�c sau 2 ph�t !")
				elseif time - mangcay[vt1][6] < 3 then
					Msg2Player("Th�i gian c�n l�i: "..(3 - (time - mangcay[vt1][6])).." gi�y !")
				else
					if GetItemCount(194) > 0 then
						DelItem(194)
						w1,x1,y1 = GetWorldPosIdx(idx)
						if mangcay[vt1][7] == 2 then
							aaa = AddNpc(1043,99,SubWorldID2Idx(w1),x1*32,y1*32)
							SetNpcScript(aaa,"\\script\\boss\\trongcay.lua");
							mangcay[vt1][1] = aaa
							Msg2Team("Ch�c m�ng c�c b�n, c�y �� t�ng tr��ng th�nh <color=green>C�y Con")
						elseif mangcay[vt1][7] == 5 then
							aaa = AddNpc(1045,99,SubWorldID2Idx(w1),x1*32,y1*32)
							SetNpcScript(aaa,"\\script\\boss\\trongcay.lua");
							SetNpcName(aaa,"C�y L�n")
							mangcay[vt1][1] = aaa
							Msg2Team("Ch�c m�ng c�c b�n, c�y �� t�ng tr��ng th�nh <color=green>C�y L�n")
						elseif mangcay[vt1][7] == 8 then
							aaa = AddNpc(1044,99,SubWorldID2Idx(w1),x1*32,y1*32)
							SetNpcScript(aaa,"\\script\\boss\\trongcay.lua");
							mangcay[vt1][1] = aaa
							Msg2Team("Ch�c m�ng c�c b�n, c�y �� t�ng tr��ng th�nh <color=green>C�y Tr��ng Th�nh")
						end
						DelNpc(idx)
						mangcay[vt1][7] = mangcay[vt1][7] + 1
						mangcay[vt1][6] = time
						mangcay[vt1][9] = 2
					else
						Talk(1,"","B�n kh�ng mang theo <color=red>Ph�n B�n<color>, kh�ng th� l�m nhi�m v� !")
					end
				end
			elseif mangcay[vt1][7] == 9 then
				DelNpc(idx)
				mangcay[vt1][1] = 0
				loai = 0
				if mangcay[vt1][5] == "[MM]"..mangcay[vt1][2].."" or mangcay[vt1][5] == "[MM]"..mangcay[vt1][3].."" or mangcay[vt1][5] == "[MM]"..mangcay[vt1][4].."" then
					loai = 1
				elseif mangcay[vt1][5] == "[HH]"..mangcay[vt1][2].."" or mangcay[vt1][5] == "[HH]"..mangcay[vt1][3].."" or mangcay[vt1][5] == "[HH]"..mangcay[vt1][4].."" then
					loai = 2
				elseif mangcay[vt1][5] == "[TT]"..mangcay[vt1][2].."" or mangcay[vt1][5] == "[TT]"..mangcay[vt1][3].."" or mangcay[vt1][5] == "[TT]"..mangcay[vt1][4].."" then
					loai = 3
				elseif mangcay[vt1][5] == "[HK]"..mangcay[vt1][2].."" or mangcay[vt1][5] == "[HK]"..mangcay[vt1][3].."" or mangcay[vt1][5] == "[HK]"..mangcay[vt1][4].."" then
					loai = 4
				end
				idxP = PlayerIndex
				for i=1,GetCountPlayerMax() do
					PlayerIndex = i
					if GetTeamSize() == 3 and GetTeam() == team then
						if loai == 1 then
							sxsl = random(3,5)
							for k=1,sxsl do AddEventItem(random(196,200)) end
							Msg2Team("Ch�c m�ng "..GetName().." nh�n ���c "..sxsl.." Li�n Hoa ")
						elseif loai == 2 then
							sxsl = random(5,7)
							for k=1,sxsl do AddEventItem(random(196,200)) end
							Msg2Team("Ch�c m�ng "..GetName().." nh�n ���c "..sxsl.." Li�n Hoa ")
						elseif loai == 3 then
							sxsl = random(7,10)
							for k=1,sxsl do AddEventItem(random(196,200)) end
							Msg2Team("Ch�c m�ng "..GetName().." nh�n ���c "..sxsl.." Li�n Hoa ")
						elseif loai == 4 then
							sxsl = random(10,15)
							for k=1,sxsl do AddEventItem(random(196,200)) end
							Msg2Team("Ch�c m�ng "..GetName().." nh�n ���c "..sxsl.." Li�n Hoa ")

						end
					end
				end
				PlayerIndex = idxP
				SetKetThuc()
			else
				if mangcay[vt1][9] == 0 then
					Msg2Team("<color=pink>C�y b� ch�t do "..GetName().." l�m sai giai �o�n. Giai �o�n hi�n t�i: "..tengiaidoan(mangcay[vt1][7]).." ")
					DelNpc(mangcay[vt1][1])
					mangcay[vt1][1] = 0
					SetKetThuc()
				else
					mangcay[vt1][9] = mangcay[vt1][9] - 1
					Msg2Team("<color=yellow>C�nh b�o: "..GetName().." �ang l�m sai giai �o�n. Giai �o�n hi�n t�i: "..tengiaidoan(mangcay[vt1][7]).." ")
					Msg2Player("C�n ".. mangcay[vt1][9].." l�n l�m sai n�a, c�y s� ch�t !")
				end
			end
		end
	end
end
--savebang()
end

function tengiaidoan(num)
if num == 0 then
return "T��i N��c"
elseif num == 1 then
return "B�t S�u"
elseif num == 2 then
return "B�n Ph�n"
else
return "L�i"
end
end
function checkvtidx(num)
for i=1,getn(mangcay) do
	if mangcay[i][1] == num then
		return i
	end
end
return 0
end

function checkvitri(num)
if mangcay[num][2] == GetName() then
	return 1
elseif mangcay[num][3] == GetName() then
	return 2
elseif mangcay[num][4] == GetName() then
	return 3
else
	return 0
end
end

function savebang()
BANG = TaoBang(mangcay,"mangcay")				
LuuBang("script/boss/danhsachcay.lua",BANG)
end

function check_mangcay()
for i=1,getn(mangcay) do
	if mangcay[i][1] == 0 then
		return i
	end
end
return 0
end
function checkten()
for i=1,getn(mangcay) do
	if mangcay[i][1] ~= 0 then
	if mangcay[i][2] == GetName() or mangcay[i][3] == GetName() or mangcay[i][4] == GetName() then
		return i
	end
	end
end
return 0
end
function SetKetThuc2(num)
teamP = GetTeam()
idxP = PlayerIndex
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetName() == mangcay[num][2] or GetName() == mangcay[num][3] or GetName() == mangcay[num][4] then
		SetTaskTemp(25,0)
	end
end

PlayerIndex = idxP
end

function SetKetThuc()
teamP = GetTeam()
idxP = PlayerIndex
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == teamP then
		SetTaskTemp(25,0)
	end
end

PlayerIndex = idxP
end