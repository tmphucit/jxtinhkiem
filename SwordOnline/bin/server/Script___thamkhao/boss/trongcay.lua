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
			Talk(1,"","B¹n ch­a nhËn nhiÖm vô S¨n C©y T×m B¶o, vui lßng ®Õn LÔ Quan ®Ó nhËn !")
			Msg2Player("§Õn lÔ quan ®Ó nhËn nhiÖm vô !")
		return
		end
		if mangcay[vt1][8] <= 0 then
			DelNpc(idx)
			
			if mangcay[vt1][5] == "[MM]"..mangcay[vt1][2].."" or mangcay[vt1][5] == "[MM]"..mangcay[vt1][3].."" or mangcay[vt1][5] == "[MM]"..mangcay[vt1][4].."" then
				AddEventItem(189)
				Msg2Player("Chóc mõng, b¹n ®· c­íp thµnh c«ng <color=yellow>H¹t May M¾n ")
			elseif mangcay[vt1][5] == "[HH]"..mangcay[vt1][2].."" or mangcay[vt1][5] == "[HH]"..mangcay[vt1][3].."" or mangcay[vt1][5] == "[HH]"..mangcay[vt1][4].."" then
				AddEventItem(190)
				Msg2Player("Chóc mõng, b¹n ®· c­íp thµnh c«ng <color=yellow>H¹t Hoa Hång")
			elseif mangcay[vt1][5] == "[TT]"..mangcay[vt1][2].."" or mangcay[vt1][5] == "[TT]"..mangcay[vt1][3].."" or mangcay[vt1][5] == "[TT]"..mangcay[vt1][4].."" then
				AddEventItem(191)
				Msg2Player("Chóc mõng, b¹n ®· c­íp thµnh c«ng <color=yellow>H¹t Thñy Tinh")
		
			elseif mangcay[vt1][5] == "[HK]"..mangcay[vt1][2].."" or mangcay[vt1][5] == "[HK]"..mangcay[vt1][3].."" or mangcay[vt1][5] == "[HK]"..mangcay[vt1][4].."" then
				AddEventItem(192)
				Msg2Player("Chóc mõng, b¹n ®· c­íp thµnh c«ng <color=yellow>H¹t Hoµng Kim")
			end
			mangcay[vt1][1] = 0	
			SetKetThuc2(vt1)
			for i=1,GetCountPlayerMax() do
			PlayerIndex = i
			if GetName() == mangcay[vt1][2] or GetName() == mangcay[vt1][3] or GetName() == mangcay[vt1][4] then
			Msg2Player("<color=yellow>Xin chia buån ! C©y cña b¹n ®· bÞ "..name.." trém mÊt, h·y cè g¾ng trång l¹i nhÐ !")
			end
			end
			PlayerIndex = idxP
		else
			mangcay[vt1][8] = mangcay[vt1][8] - 1
			Msg2Player("Cßn "..mangcay[vt1][8].." lÇn n÷a b¹n sÏ trém ®­îc c©y !")
			for i=1,GetCountPlayerMax() do
			PlayerIndex = i
			if GetName() == mangcay[vt1][2] or GetName() == mangcay[vt1][3] or GetName() == mangcay[vt1][4] then
				Msg2Player("C©y ®ang bÞ "..name.." ¨n trém, h·y b¶o vÖ c©y !!!!!!")
			end
			end
			PlayerIndex = idxP
		end
		--savebang()
	return
	end
else
	Msg2Player("C©y kh«ng thÓ c­íp do chñ c©y ch­a kÝch ho¹t !")
end

if GetTeamSize() ~= 3 then
Talk(1,"","Tæ ®éi ph¶i ®ñ 3 ng­êi míi cã thÓ trång c©y !")
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

			SetNpcName(idx,"MÇm C©y");
			Msg2Team("C«ng viÖc mçi ng­êi: "..mangcay[vt][2]..": T­íi N­íc\, "..mangcay[vt][3]..": B¾t S©u, "..mangcay[vt][4].." Bãn Ph©n ")
			Msg2Team("<color=green>Chó ý: Thêi gian tèi thiÓu gi÷a c¸c giai ®o¹n lµ 3 gi©y vµ tèi ®a lµ 2 phót. NÕu ch¨m sãc kh«ng ®óng, c©y sÏ chÕt !")
			Msg2Team("<color=yellow>Giai ®o¹n hiÖn t¹i: T­íi N­íc")
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

			SetNpcName(idx,"MÇm C©y");
			Msg2Team("C«ng viÖc mçi ng­êi: "..mangcay[vt][2]..": T­íi N­íc\, "..mangcay[vt][3]..": B¾t S©u, "..mangcay[vt][4].." Bãn Ph©n ")
			Msg2Team("<color=green>Chó ý: Thêi gian tèi thiÓu gi÷a c¸c giai ®o¹n lµ 3 gi©y vµ tèi ®a lµ 2 phót. NÕu ch¨m sãc kh«ng ®óng, c©y sÏ chÕt !")
			Msg2Team("<color=yellow>Giai ®o¹n hiÖn t¹i: T­íi N­íc")
		else
			Msg2Player("Tån t¹i danh s¸ch !")
		end
	end
else
	vt1 = checkvtidx(idx)
	if vt1 == 0 then
		Talk(1,"","C©y nµy ch­a ®­îc kÝch ho¹t, h·y ®îi chñ c©y ®Õn kick ho¹t")
	else
		vt2 = checkvitri(vt1)
		if vt2 == 0 then
			DelNpc(idx)
			mangcay[vt1][1] = 0
			SetKetThuc()
			Talk(1,"","Ng­êi kh«ng thuéc tæ ®éi ®· t¹o ra c©y nµy, c©y bi chÕt ....")
			Msg2Team("Ng­êi ch¬i "..GetName().." kh«ng thuéc tæ ®éi t¹o ra c©y, c©y bÞ chÕt !")	
		else
			if (mangcay[vt1][7] == 0 or mangcay[vt1][7] == 3 or mangcay[vt1][7] == 6) and GetName() == mangcay[vt1][2] then
				if time - mangcay[vt1][6] > 120 then
					DelNpc(idx)
					mangcay[vt1][1] = 0
					SetKetThuc()
					Msg2Team("<color=pink>C©y ®· chÕt do "..GetName().." do b¹n kh«ng ch¨m sãc sau 2 phót !")
				elseif time - mangcay[vt1][6] < 3 then
					Msg2Player("Thêi gian cßn l¹i: "..(3 - (time - mangcay[vt1][6])).." gi©y !")
				else
					if GetItemCount(193) > 0 then
						DelItem(193)
						mangcay[vt1][7] = mangcay[vt1][7] + 1
						mangcay[vt1][6] = time
						mangcay[vt1][9] = 2
						Msg2Team("Hoµn thµnh t­íi n­íc !")
						Msg2Team("<color=yellow>Giai ®o¹n tiÕp theo: B¾t S©u")
					else
						Talk(1,"","B¹n kh«ng mang theo <color=red>N­íc T­íi C©y<color>, kh«ng thÓ lµm nhiÖm vô !")
					end
				end
			elseif (mangcay[vt1][7] == 1 or mangcay[vt1][7] == 4 or mangcay[vt1][7] == 7)  and GetName() == mangcay[vt1][3] then
				if time - mangcay[vt1][6] > 120 then
					DelNpc(idx)
					mangcay[vt1][1] = 0
					SetKetThuc()
					Msg2Team("<color=pink>C©y ®· chÕt do "..GetName().." do b¹n kh«ng ch¨m sãc sau 2 phót !")
				elseif time - mangcay[vt1][6] < 3 then
					Msg2Player("Thêi gian cßn l¹i: "..(3 - (time - mangcay[vt1][6])).." gi©y !")
				else
					if GetItemCount(195) > 0 then
						DelItem(195)
						mangcay[vt1][7] = mangcay[vt1][7] + 1
						mangcay[vt1][6] = time
						mangcay[vt1][9] = 2	
						Msg2Team("Hoµn thµnh b¾t s©u !")
						Msg2Team("<color=yellow>Giai ®o¹n tiÕp theo: Bãn Ph©n")
					else
						Talk(1,"","B¹n kh«ng mang theo <color=red>Thuèc Trõ S©u<color>, kh«ng thÓ lµm nhiÖm vô !")
					end
				end
			elseif (mangcay[vt1][7] == 2 or mangcay[vt1][7] == 5 or mangcay[vt1][7] == 8)  and GetName() == mangcay[vt1][4] then
				if time - mangcay[vt1][6] > 120 then
					DelNpc(idx)
					mangcay[vt1][1] = 0
					SetKetThuc()
					Msg2Team("<color=pink>C©y ®· chÕt do "..GetName().." do b¹n kh«ng ch¨m sãc sau 2 phót !")
				elseif time - mangcay[vt1][6] < 3 then
					Msg2Player("Thêi gian cßn l¹i: "..(3 - (time - mangcay[vt1][6])).." gi©y !")
				else
					if GetItemCount(194) > 0 then
						DelItem(194)
						w1,x1,y1 = GetWorldPosIdx(idx)
						if mangcay[vt1][7] == 2 then
							aaa = AddNpc(1043,99,SubWorldID2Idx(w1),x1*32,y1*32)
							SetNpcScript(aaa,"\\script\\boss\\trongcay.lua");
							mangcay[vt1][1] = aaa
							Msg2Team("Chóc mõng c¸c b¹n, c©y ®· t¨ng tr­ëng thµnh <color=green>C©y Con")
						elseif mangcay[vt1][7] == 5 then
							aaa = AddNpc(1045,99,SubWorldID2Idx(w1),x1*32,y1*32)
							SetNpcScript(aaa,"\\script\\boss\\trongcay.lua");
							SetNpcName(aaa,"C©y Lín")
							mangcay[vt1][1] = aaa
							Msg2Team("Chóc mõng c¸c b¹n, c©y ®· t¨ng tr­ëng thµnh <color=green>C©y Lín")
						elseif mangcay[vt1][7] == 8 then
							aaa = AddNpc(1044,99,SubWorldID2Idx(w1),x1*32,y1*32)
							SetNpcScript(aaa,"\\script\\boss\\trongcay.lua");
							mangcay[vt1][1] = aaa
							Msg2Team("Chóc mõng c¸c b¹n, c©y ®· t¨ng tr­ëng thµnh <color=green>C©y Tr­ëng Thµnh")
						end
						DelNpc(idx)
						mangcay[vt1][7] = mangcay[vt1][7] + 1
						mangcay[vt1][6] = time
						mangcay[vt1][9] = 2
					else
						Talk(1,"","B¹n kh«ng mang theo <color=red>Ph©n Bãn<color>, kh«ng thÓ lµm nhiÖm vô !")
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
							Msg2Team("Chóc mõng "..GetName().." nhËn ®­îc "..sxsl.." Liªn Hoa ")
						elseif loai == 2 then
							sxsl = random(5,7)
							for k=1,sxsl do AddEventItem(random(196,200)) end
							Msg2Team("Chóc mõng "..GetName().." nhËn ®­îc "..sxsl.." Liªn Hoa ")
						elseif loai == 3 then
							sxsl = random(7,10)
							for k=1,sxsl do AddEventItem(random(196,200)) end
							Msg2Team("Chóc mõng "..GetName().." nhËn ®­îc "..sxsl.." Liªn Hoa ")
						elseif loai == 4 then
							sxsl = random(10,15)
							for k=1,sxsl do AddEventItem(random(196,200)) end
							Msg2Team("Chóc mõng "..GetName().." nhËn ®­îc "..sxsl.." Liªn Hoa ")

						end
					end
				end
				PlayerIndex = idxP
				SetKetThuc()
			else
				if mangcay[vt1][9] == 0 then
					Msg2Team("<color=pink>C©y bÞ chÕt do "..GetName().." lµm sai giai ®o¹n. Giai ®o¹n hiÖn t¹i: "..tengiaidoan(mangcay[vt1][7]).." ")
					DelNpc(mangcay[vt1][1])
					mangcay[vt1][1] = 0
					SetKetThuc()
				else
					mangcay[vt1][9] = mangcay[vt1][9] - 1
					Msg2Team("<color=yellow>C¶nh b¸o: "..GetName().." ®ang lµm sai giai ®o¹n. Giai ®o¹n hiÖn t¹i: "..tengiaidoan(mangcay[vt1][7]).." ")
					Msg2Player("Cßn ".. mangcay[vt1][9].." lÇn lµm sai n÷a, c©y sÏ chÕt !")
				end
			end
		end
	end
end
--savebang()
end

function tengiaidoan(num)
if num == 0 then
return "T­íi N­íc"
elseif num == 1 then
return "B¾t S©u"
elseif num == 2 then
return "Bãn Ph©n"
else
return "Lçi"
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