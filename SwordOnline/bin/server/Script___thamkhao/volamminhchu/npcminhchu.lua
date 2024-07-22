
Include("\\script\\lib\\thuvien.lua")
Include("\\script\\volamminhchu\\danhsach.lua")
Include("\\script\\volamminhchu\\danhsach1.txt")
Include("\\script\\volamminhchu\\danhsach2.txt")


function main()
SayNew("<color=green>Néi C¸c Th­îng Th­ <color>: Ta chuyªn qu¶n lý c¸c vÊn ®Ò liªn quan Thiªn Tö ChiÕn ",2,
"Ta muèn nhËn th­ëng Vâ L©m Minh Chñ/nhanthuong_volamminhchu",
--"Ta muèn nhËn th­ëng Thiªn Tö /nhanthuong_thientu",
"Tho¸t./no")
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
		Talk(1,"","Hµnh trang kh«ng ®ñ 6 x 5 chç trèng, kh«ng thÓ nhËn !")
		return
end


vitri = checktennhanthuong()
if vitri == 0 then
Talk(1,"","B¹n kh«ng cã tªn trong danh s¸ch nhËn th­ëng")
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
	Talk(1,"","B¹n ®· nhËn phÇn th­ëng nµy råi, kh«ng thÓ nhËn thªm")
end
end



function nhanthuong_thientu()
if CheckFreeBoxItem(4,364,1,1) == 0 then
		Talk(1,"","Hµnh trang kh«ng ®ñ 6 x 5 chç trèng, kh«ng thÓ nhËn !")
		return
end


vitri = checktennhanthuong()
if vitri == 0 then
Talk(1,"","B¹n kh«ng cã tªn trong danh s¸ch nhËn th­ëng")
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
	Talk(1,"","B¹n ®· nhËn phÇn th­ëng nµy råi, kh«ng thÓ nhËn thªm")
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