function main()
Say("<color=green>Xa Phu:<color> Ng­¬i muèn ®i ®©u ?",2,
"Ta muèn rêi khái L·nh §Þa Bang/roikhoi",
"Tho¸t./no")
end

function no()
end

function roikhoi()
a = GetCash()
if GetCash() >= 1000 then
	Pay(1000)
	if GetCash() == a - 1000 then
		Msg2Player("B¹n ®· rêi khái L·nh §Þa Bang ")

		SetPunish(0);
		NewWorld(53,200*8,200*16)
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng mang ®ñ 1000 l­îng, kh«ng thÓ rêi khái ®©y !")
end
end