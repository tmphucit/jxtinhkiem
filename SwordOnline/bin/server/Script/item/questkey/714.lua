
idxitem = 714

function main(idxitem)
dofile("script\\item\\questkey\\714.lua")
-- if GetTask(777) >= 1 then
	-- Talk(1,"","Ng­¬i ®· nhËn råi kh«ng thÓ nhËn l¹i n÷a !")
	-- return
-- end
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end
	if(GetFightState() == 1) then
	-- Talk(1,"","TÝnh n¨ng t¹m khãa ®îi cËp nhËt tÝnh n¨ng míi thay thÕ !")
		Talk(1,"","ChØ cã thÓ sö dông khi ®ang ë c¸c thµnh thÞ or th«n.")
	return 
	end
SayNew("Chän lo¹i trang bÞ m×nh muèn: ",2,
"Vò khÝ cËn chiÕn /tbxanh_vukhi_ruong",
"Vò khÝ tÇm xa /tbxanh_tamxa_ruong",
-- "Ao /tbxanh1",
-- "NhÉn /tbxanh1",
-- "D©y ChuyÒn /tbxanh1",
-- "Giµy /tbxanh1",
-- "Th¾t l­ng /tbxanh1",
-- "Nãn /tbxanh1",
-- "Bao Tay/tbxanh1",
-- "Ngäc Béi/tbxanh1",
"Tho¸t/no")
	DelItemIdx(idxitem);
end

function tbxanh_tamxa_ruong()
SayNew("Chän lo¹i vò khÝ",4,
"Phi Tiªu /tbxanh_tamxa3",
"Phi §ao /tbxanh_tamxa3",
"Ná /tbxanh_tamxa3",
"Quay l¹i./main")
end

function tbxanh_vukhi_ruong()
SayNew("Chän lo¹i vò khÝ",7,
"KiÕm /tbxanh_vukhi3",
"§ao /tbxanh_vukhi3",
"Bæng /tbxanh_vukhi3",
"Th­¬ng /tbxanh_vukhi3",
"Chïy /tbxanh_vukhi3",
"Song §ao /tbxanh_vukhi3",
"Quay l¹i./main")
end
function tbxanh_vukhi3(nsel)
SetTaskTemp(1,nsel)
SayNew("Chon Ngò hµnh ",6,
"Kim/tbxanh_vukhi4",
"Méc /tbxanh_vukhi4",
"Thñy/tbxanh_vukhi4",
"Háa /tbxanh_vukhi4",
"Thæ /tbxanh_vukhi4",
"Quay l¹i./tbxanh_vukhi_ruong")
end
function tbxanh_tamxa3(nsel)
SetTaskTemp(1,nsel)
SayNew("Chon Ngò hµnh ",6,
"Kim/tbxanh_tamxa4",
"Méc /tbxanh_tamxa4",
"Thñy/tbxanh_tamxa4",
"Háa /tbxanh_tamxa4",
"Thæ /tbxanh_tamxa4",
"Quay l¹i./tbxanh_tamxa_ruong")
end

function tbxanh_vukhi4(nsel)
id = GetTaskTemp(1)
idxitem = AddItem(0,0,id,10,nsel,9,1)
-- SetTimeItem(idxitem,550324);
-- SetTask(777,1)
end

function tbxanh_tamxa4(nsel)
id = GetTaskTemp(1)
idxitem = AddItem(0,1,id,10,nsel,9,1)
-- SetTimeItem(idxitem,550324);
-- SetTask(777,1)
end

function no()

end