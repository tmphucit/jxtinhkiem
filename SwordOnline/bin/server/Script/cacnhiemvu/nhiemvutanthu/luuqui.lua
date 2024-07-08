function main()
ngay = tonumber(date("%d"))
if GetTask(482) ~= ngay then
	SetTask(482, ngay)
	SetTask(493,0)
	SetTask(494,0)
	SetTask(495,0)
	SetTask(496,0)
	for i=632,638 do
			for p=1,GetItemCount2(i) do
				DelAllItem(i)
			end	
	end
	Msg2Player("Reset nhiÖm vô t©n thñ ")
end


if GetTask(496) == 0 then
	SayNew("<color=green>L­u Quİ:<color> Ta ®ang thiÕu 1 İt nguyªn liÖu, ng­¬i cã thÓ gióp ta kh«ng?",2,
	"NhËn nhiÖm vô t×m 10 Lôc §Ëu /nhannhiemvu1",
	"Kh«ng cã g×, ta chØ hái th¨m th«i/no")

elseif GetTask(496) == 1 then
	tranhiemvu1()
elseif GetTask(496) == 2 then
	SayNew("<color=green>L­u Quİ:<color> Ng­¬i h·y mang gióp ta 5 Lôc §Ëu ®Õn cho L¹c Thi. H¾n ta ®ang ë <color=yellow>Néi ThÊt §éng 194/196 ",2,
	"NhËn nhiÖm vô vËn chuyÓn Lôc §Ëu cho L¹c Thi /nhannhiemvu2",
	"Kh«ng cã g×, ta chØ hái th¨m th«i/no")
elseif GetTask(496) == 3 or GetTask(496) == 4 then
	tranhiemvu2()
elseif GetItemCount(496) == 5 then
	Talk(1,"","Ng­¬i h·y qua Chu Tiªn TrÊn 196/199 t×m L¹c Gia. ¤ng ta cã viÖc cÇn nhê ng­¬i ®ã !")
elseif GetTask(496) == 7 then
	SetTask(496, 8)
	SetTask(100, GetTask(100) + 7)
	Msg2Player("Hoµn thµnh nhiÖm vô t×m thŞt t­¬i. NhËn ®­îc: <color=yellow>7 Danh Väng")
else
	Talk(1,"","Ta chuyªn t×m hiÓu nh÷ng lo¹i d­îc liÖu quı hiÕm ®Ó gióp ng­êi. Ngµy mai quay l¹i, ta cã viÖc cÇn nhê ng­¬i gióp ®ë nhĞ !")
end
end
function nhannhiemvu1()
	Talk(1,"","NhËn nhiÖm vô ®Õn <color=yellow>Thôc c­¬ng S¬n 220/186<color> thu ho¹ch 10 Lôc §Ëu")
	Msg2Player("<color=green>[NhiÖm Vô T©n Thñ] <color=red>NhËn nhiÖm vô ®Õn Thôc c­¬ng S¬n 220/186 thu ho¹ch 10 Lôc §Ëu")
	SetTask(496,1)
end
function tranhiemvu1()
if GetItemCount(632) >= 10 then
		for p=1,GetItemCount2(632) do
			DelAllItem(632)
		end	
		SetTask(496,2)
		SetTask(100, GetTask(100) + 3)
		Msg2Player("Hoµn thµnh nhiÖm vô t©n thñ, nhËn ®­îc: <color=yellow>3 §iÓm Danh Väng")
	else
		Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=red>10 Lôc §Ëu<color>, vui lßng kiÓm tra l¹i !")
	end
end
function no()
end
function nhannhiemvu2()
	if CheckFreeBoxItem(0,10,5,5) == 0 then
		Talk(1,"","Hµnh trang kh«ng ®ñ 2 x 3 «, kh«ng thÓ nhËn nhiÖm vô ")
		return
	end
	for p=1,5 do 
	idxitem = AddEventItem(632) 
	SetBindItem(idxitem,1)
	end
	SetTask(496,3)
	Talk(1,"","Ng­¬i h·y ®Õn Néi ThÊt §éng 194/196 ®­a 5 Lôc §Ëu cho L¹c Thi gióp ta !")
	Msg2Player("<color=green>[NhiÖm Vô T©n Thñ] <color=red> Mang 5 Lôc §Ëu ®Õn Néi ThÊt §éng 194/196 cho L¹c Thi")
end

function tranhiemvu2()
	if GetTask(496) == 4 then
		SetTask(496,5)
		SetTask(100, GetTask(100) + 5)
		Msg2Player("Hoµn thµnh nhiÖm vô chuyÓn nguyªn liÖu. NhËn ®­îc: <color=yellow>5 Danh Väng")
	else
		Talk(1,"","Ng­¬i ch­a hoµn thµnh nhiÖm vô ta giao, h·y ®Õn gÆp L¹c Thi ngay ®i !")
	end
end