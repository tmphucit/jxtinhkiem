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

if GetTask(495) == 0  then
SayNew("<colorr=green>C¬ Di §ãa<color>:  Ng­¬i h·y qua Thanh Thµnh S¬n t×m Ng­êi B¸n D­a HÊu, nghe nãi c« Êy ®ang cÇn ng­êi gióp",2,
"NhËn nhiÖm vô gióp Ng­¬i B¸n D­a HÊu /nhannv1",
"Kh«ng cã g×, ta chØ hái th¨m th«i/no")
elseif GetTask(495) == 1 then
Talk(1,"","NhËn nhiÖm vô ®Õn <color=yellow>Thanh Thµnh S¬n 314/265<color> t×m Ng­êi B¸n D­a HÊu ")
elseif GetTask(495) == 2 then
Talk(1,"","Ng­¬i ch­a tiªu diÖt ®ñ 15 con KÒn KÒn cho Ng­êi B¸n D­a HÊu, ®Õn ®©y lµm g×?")
elseif GetTask(495) == 3 then
tranv1()
elseif GetTask(495) == 4 then
	Talk(1,"","Qua Giang T©n Th«n 438/384 gÆp V­¬ng §øc Phóc, «ng ta cã chuyÖn cÇn ng­êi gióp ®ã ")
elseif GetTask(495) == 6 then
tranv2()
elseif GetTask(495) == 7 then
	Talk(1,"","GÆp T¶ §ång t¹i 430/389, h¾n ta ®ang rÊt cÇn ng­êi t×m nguyªn liÖu")
elseif GetTask(495) == 9 then
tranv3()
	
	
else
Talk(1,"","abcxvy")
end
end
function tranv3()
	SetTask(495,10)
	SetTask(100, GetTask(100) + 7)
	Talk(1,"","Hoµn thµnh nhiÖm vô Khai Th¸c Kho¸ng VËt. NhËn ®­îc: <color=yellow>7 §iÓm Danh Väng")
	
end

function tranv2()
	SetTask(495,7)
	SetTask(100, GetTask(100) + 5)
	Talk(1,"","Hoµn thµnh nhiÖm vô Tiªu DiÖt Qu¸i. NhËn ®­îc: <color=yellow>5 §iÓm Danh Väng")
	Msg2Player("<color=green>[NhiÖm Vô T©n Thñ]<color=red> TiÕp tôc nhiÖm vô gÆp T¶ §ång 430/389  ")
end
function nhannv1()
SetTask(495,1)
Talk(1,"","H·y ®Õn Thanh Thµnh S¬n 314/265 t×m Ng­êi B¸n D­a HÊu, c« Êy cã chuyÖn cÇn ng­¬i gióp")
Msg2Player("<color=green>[NhiÖm Vô T©n Thñ]<color=red> §Õn Thanh Thanh S¬n 314/265 t×m Ng­êi B¸n D­a HÊu")
end

function tranv1()
	if GetItemCount(634) >= 1 then
		DelItem(634)
		SetTask(495,4)
		SetTask(100, GetTask(100) + 3)
		Talk(1,"","NhiÖm vô hoµn thµnh. NhËn ®­îc: <color=yellow>3 §iÓm Danh Väng")
		Msg2Player("<color=green>[NhiÖm Vô T©n Thñ]<color=red>TiÕp tôc nhiÖm vô qua gÆp V­¬ng §øc Phóc t¹i Giang T©n Th«n 438/384")
	else
		Talk(1,"","Ng­¬i kh«ng mang theo d­a hÊu, kh«ng thÓ hoµn thµnh nhiÖm vô ")
	end
end

function no()
end