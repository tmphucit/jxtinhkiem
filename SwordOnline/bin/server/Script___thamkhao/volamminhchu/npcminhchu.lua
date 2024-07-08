
Include("\\script\\lib\\thuvien.lua")
Include("\\script\\volamminhchu\\danhsach.lua")
Include("\\script\\volamminhchu\\danhsach1.txt")
Include("\\script\\volamminhchu\\danhsach2.txt")


function main()
SayNew("<color=green>N�i C�c Th��ng Th� <color>: Ta chuy�n qu�n l� c�c v�n �� li�n quan Thi�n T� Chi�n ",2,
"Ta mu�n nh�n th��ng V� L�m Minh Ch�/nhanthuong_volamminhchu",
--"Ta mu�n nh�n th��ng Thi�n T� /nhanthuong_thientu",
"Tho�t./no")
end

function no()
if GetAccount() ~= "admvltk102" then
return
end

for i=1,getn(DANHSACH2) do
		for j=1,getn(DANHSACH1) do
				if DANHSACH2[i][1] == DANHSACH1[j][1] then
						if DANHSACH2[i][2] ~= DANHSACH1[j][2] then
								LoginLog = openfile("Data/logcheck.txt", "a");
								if LoginLog then
								write(LoginLog,"["..DANHSACH2[i][1].."] - Old: ["..DANHSACH2[i][2].."] - New ["..DANHSACH1[j][2].."]\n");
								end
								closefile(LoginLog)
					
						end
				end
		end
end

Msg2Player("xong")
end

function nhanthuong_volamminhchu()
if CheckFreeBoxItem(4,364,1,1) == 0 then
		Talk(1,"","H�nh trang kh�ng �� 6 x 5 ch� tr�ng, kh�ng th� nh�n !")
		return
end


vitri = checktennhanthuong()
if vitri == 0 then
Talk(1,"","B�n kh�ng c� t�n trong danh s�ch nh�n th��ng")
return
end

if 	PHAN_THUONG[vitri][3] == 1 then	

AddItem(0,10,8,1,0,0,0)

idxitem = AddItem(0,11,0,139,0,0,0)
SetTimeItem(idxitem,550324);
SetHSD(idxitem, 2021, 12, 8 , 1)

	thoigian = tonumber(date("%H%M%d%m"))
		PHAN_THUONG[vitri][1] = thoigian
		PHAN_THUONG[vitri][3] = 9999
		BANG2 = TaoBang(PHAN_THUONG,"PHAN_THUONG")
		LuuBang("script/volamminhchu/danhsach.lua",BANG2)
elseif PHAN_THUONG[vitri][3] == 2 then

idxitem = AddItem(0,11,0,139,0,0,0)
SetTimeItem(idxitem,550324);
SetHSD(idxitem, 2021, 12, 8 , 1)

		thoigian = tonumber(date("%H%M%d%m"))
		PHAN_THUONG[vitri][1] = thoigian
		PHAN_THUONG[vitri][3] = 9999
		BANG2 = TaoBang(PHAN_THUONG,"PHAN_THUONG")
		LuuBang("script/volamminhchu/danhsach.lua",BANG2)
		
else
	Talk(1,"","B�n �� nh�n ph�n th��ng n�y r�i, kh�ng th� nh�n th�m")
end
end



function nhanthuong_thientu()
if CheckFreeBoxItem(4,364,1,1) == 0 then
		Talk(1,"","H�nh trang kh�ng �� 6 x 5 ch� tr�ng, kh�ng th� nh�n !")
		return
end


vitri = checktennhanthuong()
if vitri == 0 then
Talk(1,"","B�n kh�ng c� t�n trong danh s�ch nh�n th��ng")
return
end

if 	PHAN_THUONG[vitri][3] == 1 then	

	idxitem = AddItem(0,4,3,1,0,0,0)
SetTimeItem(idxitem,550324);
idxitem = AddItem(0,3,3,1,0,0,0)
SetTimeItem(idxitem,550324);
idxitem = AddItem(0,3,4,1,0,0,0)
SetTimeItem(idxitem,550324);
idxitem = AddItem(0,9,3,1,0,0,0)
SetTimeItem(idxitem,550324);
idxitem = AddItem(0,10,5,5,0,0,0)
SetTimeItem(idxitem,550324);
idxitem = AddItem(0,11,0,139,0,0,0)
SetTimeItem(idxitem,550324);
SetHSD(idxitem, 2021, 11, 15, 17 )


	thoigian = tonumber(date("%H%M%d%m"))
		PHAN_THUONG[vitri][1] = thoigian
		PHAN_THUONG[vitri][3] = 9999
		BANG2 = TaoBang(PHAN_THUONG,"PHAN_THUONG")
		LuuBang("script/volamminhchu/danhsach.lua",BANG2)
elseif PHAN_THUONG[vitri][3] == 2 then

idxitem = AddItem(0,11,0,139,0,0,0)
SetTimeItem(idxitem,550324);
SetHSD(idxitem, 2021, 11, 15, 17 )

		thoigian = tonumber(date("%H%M%d%m"))
		PHAN_THUONG[vitri][1] = thoigian
		PHAN_THUONG[vitri][3] = 9999
		BANG2 = TaoBang(PHAN_THUONG,"PHAN_THUONG")
		LuuBang("script/volamminhchu/danhsach.lua",BANG2)
else
	Talk(1,"","B�n �� nh�n ph�n th��ng n�y r�i, kh�ng th� nh�n th�m")
end
end

function checktennhanthuong()
for i=1,getn(PHAN_THUONG) do
	if GetName() == PHAN_THUONG[i][2] then
		return i
	end
end
return 0
end