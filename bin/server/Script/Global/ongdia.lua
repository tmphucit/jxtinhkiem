function main()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if gio == 20 or gio == 21 then
	Say("<color=green>LÔ Quan<color>: HiÖn t¹i ®ang diÔn ra sù kiÖn <color=red>Th¾p S¸ng §ªm R»m<color>: ",4,
	"Ta muèn treo Lång §Ìn KĞo Qu©n /treolongden",
	"KiÓm tra thêi gian hç trî Lång §Ìn KĞo Qu©n /kiemtra",
	"H­íng dÉn sù kiÖn /huongdan",
	"Tho¸t./no")
else
	Talk(1,"","Sù kiÖn <color=red>Th¾p S¸ng §ªm R»m<color> b¾t ®Çu vµo lóc 20h00 - 22h00 mçi ngµy !")
end
end

function kiemtra()
if GetTask(107) == 0 then
	Talk(1,"","HiÖn t¹i thêi gian hç trî Lång §Ìn KĞo Qu©n ®· hÕt !")
else
	Talk(1,"","HiÖn t¹i b¹n cßn <color=red>"..floor(GetTask(107)/18).."<color> gi©y hç trî tõ Lång §Ìn KĞo Qu©n !")
end
end
function huongdan()
Talk(3,"","X¸c suÊt treo thµnh c«ng Lång §Ìn KĞo Qu©n lµ 10%, khi thµnh c«ng sÏ xuÊt hiÖn lång ®Ìn ë vŞ trİ cña b¹n",
"Lång ®Ìn treo thµnh c«ng sÏ hç trî nh©n 1.5 lÇn kinh nghiÖm sö dông B¸nh Trung Thu ",
"Khi hÕt t¸c dông, hÖ thèng sÏ kh«ng th«ng b¸o ")
end

function no()
end

function treolongden()
if GetItemCount(137) <= 0 then
Talk(1,"","B¹n kh«ng mang theo <color=yellow>Lång §Ìn KĞo Qu©n<color>, kh«ng thÓ treo !")
return
end
sl = GetItemCount(137)
if GetItemCount(137) > 0 then
	DelItem(137)
	if GetItemCount(137) == sl - 1 then
		sx = random(1,100)
		if sx < 5 then
			h = tonumber(date("%H"))
			m = tonumber(date("%M"))
			s = tonumber(date("%S"))	
			SetTask(107,2*60*18)
			AddPropObj(456)
			Msg2Player("Treo Lång §Ìn KĞo Qu©n thµnh c«ng !")
			Msg2Player("<color=pink>B¹n ®­îc h­ëng 120 gi©y nh©n 1.5 kinh nghiÖm sö dông B¸nh Trung Thu. Thêi gian kÕt thóc: "..h.." giê "..(m+2).." phót "..s.." gi©y !")
			
		else			
			Msg2Player("Treo Lång §Ìn KĞo Qu©n thÊt b¹i, vui lßng thö l¹i !")
		end

	else
	Talk(1,"","hack ha em")
	end
else
Talk(1,"","hack ha em")
end


end