function main()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if gio == 21 then
	SayNew("<color=green>LÔ Quan<color>: HiÖn t¹i ®ang diÔn ra sù kiÖn <color=red>Th¾p S¸ng §ªm R»m<color>: ",3,
	"Ta muèn treo Lång §Ìn KĞo Qu©n /treolongden",
	"H­íng dÉn sù kiÖn /huongdan",
	"Tho¸t./no")
else
	Talk(1,"","Sù kiÖn <color=red>Th¾p S¸ng §ªm R»m<color> b¾t ®Çu vµo lóc 21h00 - 22h00 mçi ngµy !")
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
"Lång ®Ìn treo thµnh c«ng nhËn ®­îc 40.000.000 kinh nghiÖm, thÊt b¹i ®­îc 10 phót nh©n ®«i kinh nghiÖm ",
"Mçi ngµy chØ ®­îc treo 3 lång ®Ìn kĞo qu©n")
end

function no()
end

function treolongden()
ngay = tonumber(date("%d"))
if floor(GetTask(321)/1000) ~= ngay then
SetTask(321, ngay*1000)
end

if GetItemCount(144) <= 0 then
Talk(1,"","B¹n kh«ng mang theo <color=yellow>Lång §Ìn KĞo Qu©n<color>, kh«ng thÓ treo !")
return
end
if mod(GetTask(321),1000) >= 3 then
Talk(1,"","B¹n ®· ®¹t giíi h¹n 3 Lång §Ìn KĞo Qu©n vµo ngµy h«m nay")
return
end

sl = GetItemCount(144)
if GetItemCount(144) > 0 then
	DelItem(144)
	if GetItemCount(144) == sl - 1 then
		sx = random(1,100)
		if sx < 10 then
			h = tonumber(date("%H"))
			m = tonumber(date("%M"))
			s = tonumber(date("%S"))	
			AddPropObj(456)
			Msg2Player("Treo Lång §Ìn KĞo Qu©n thµnh c«ng !")
			for k=1,40 do AddOwnExp(1000000) end
			Msg2Player("B¹n nhËn ®­îc <color=yellow>40.000.000 kinh nghiÖm")
			SetTask(321, GetTask(321) + 1)
			Msg2Player("Giíi h¹n sö dông: "..mod(GetTask(321),1000).." / 3")
		else			
			Msg2Player("Treo Lång §Ìn KĞo Qu©n thÊt b¹i, vui lßng thö l¹i !")
			SetTask(172, GetTask(172) + 10*60*18)
			AddSkillEffect(460,1,GetTask(172))
			SetTask(141,1)
			Msg2Player("B¹n nhËn ®­îc thªm 10 phót nh©n ®«i kinh nghiÖm. Thêi gian nh©n ®«i hiÖn t¹i lµ: <color=yellow>"..floor(GetTask(172)/18).." gi©y!")
		end

	else
	Talk(1,"","hack ha em")
	end
else
Talk(1,"","hack ha em")
end


end