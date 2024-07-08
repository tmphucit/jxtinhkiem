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



if GetTask(493) == 0 then
	SayNew("<color=green>Tam N­¬ng<color>: HiÖn t¹i ta ®ang nî tiÒn cña Th¹ch B¶o, ng­¬i h·y gióp ta mang tiÒn tr¶ nhĞ ? ",2,
	"NhËn nhiÖm vô chuyÓn b¹c /nhiemvutanthu",
	"HiÖn t¹i ta ®ang bËn, gÆp ng­¬i sau nhĞ ./no")
elseif GetTask(493) == 1 then
Talk(1,"","Ng­¬i h·y gióp ta mang b¹c ®Õn <color=yellow>Nam Nh¹c TrÊn 204/198<color> ®­a cho Th¹ch B¶o")
elseif GetTask(493) == 2 then
SetTask(100, GetTask(100) + 3)
Msg2Player("Hoµn thµnh nhiÖm vô ChuyÓn B¹c. NhËn ®­îc: <color=yellow>3 Danh Väng")
SetTask(493,3)
Talk(1,"","Qua Ba L¨ng HuyÖn 204/200 gÆp Tr­¬ng C¶nh cã viÖc cÇn gióp")
elseif GetTask(493) == 5 then
SetTask(100, GetTask(100) + 5)
Msg2Player("Hoµn thµnh nhiÖm vô H¸i Thuèc. NhËn ®­îc: <color=yellow>5 Danh Väng")
SetTask(493,6)
Talk(1,"","Qua  Ba L¨ng HuyÖn 190/181 gÆp Con G¸i Vâ S­ ®Ó nhËn nhiÖm vô ")
elseif GetTask(493) == 9 then
SetTask(100, GetTask(100) + 7)
Msg2Player("Hoµn thµnh nhiÖm vô §­a C¬m. NhËn ®­îc: <color=yellow>7 Danh Väng")
SetTask(493,10)
else
Talk(1,"","Ng­¬i ®· nhËn nhiÖm vô råi mµ, h·y nhanh ch©n ®i lµm ®i !")
end
end

function no()
end
function nhiemvutanthu()
SetTask(493,1)
idxitem = AddEventItem(637)
SetBindItem(idxitem , 1)
Talk(1,"","H·y mang b¹c ®Õn Nam Nh¹c TrÊn 204/198 ®Ó tr¶ cho Th¹ch B¶o")
Msg2Player("<color=green>[NhiÖm Vô T©n Thñ]<color=red> NhËn nhiÖm vô mang b¹c ®Õn Nam Nh¹c TrÊn 204/198 ®Ó tr¶ cho Th¹ch B¶o")
end