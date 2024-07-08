function main()
if GetTask(528) > 0 then
SayNew("<color=green>Hoµng Dung:<color> VŞ huynh ®µi nµy ®Õn t×m ta cã viÖc g×?",2,
"Ta muèn h­íng dÉn c¸ch nÊu Ch¸o L¹p B¸t /nauchao",
"Xin lçi, ®· lµm phiÒn c« n­¬ng/no")
else
	Talk(1,"","Ta lµ con g¸i cña Hoµng §¶o Chñ, ng­¬i kiÕm ta cã viÖc g×?")
end
end

function nauchao()
if GetTask(528) == 2 then
	if GetItemCount(662) == 1 and GetItemCount(663) == 1 then
		SetTask(528,3)
		Talk(1,"","H×nh nh­ huynh ®µi cßn thiÕu nguyªn liÖu, h·y ®Õn T¹p Hãa Ba L¨ng HuyÖn mua cho ta 1 c©n G¹o TÎ råi ta sÏ h­íng dÉn ng­¬i c¸ch nÊu Ch¸o L¹p B¸t")
		Msg2Player("NhËn nhiÖm vô: <color=yellow>Mua G¹o TÎ ë T¹p Hãa Ba L¨ng HuyÖn")
	else
		Talk(1,"","Cha ta kh«ng dÆn ng­¬i ph¶i ®i t×m c©y lôc ®Ëu sao? Quay l¹i c¹nh dßng s«ng, h¸i cho ta 1 n¾m §Ëu Xanh")
	end
elseif GetTask(528) == 3 then
	if GetItemCount(662) == 1 and GetItemCount(663) == 1 and GetItemCount(661) == 1 then
		SetTask(528,4)
		Talk(1,"","Nguyªn liÖu ®ñ råi ®ã, b©y giê h·y lÇn l­ît bá nguyªn liÖu vµo 4 c¸i bÕp vµ nÊu lÇn l­ît theo thø tù. Sau khi xong th× quay l¹i gÆp ta")
		Msg2Player("NhËn nhiÖm vô: <color=yellow>NÊu Ch¸o t¹i BÕp 191/197")
	else
		Talk(1,"","Ng­¬i muèn nÊu mét t« ch¸o thËt th¬m ngon cÇn G¹o TÎ, §Ëu Xanh, ThŞt Heo, ®· chuÈn bŞ ®ñ ch­a? Khi nµo ®ñ nguyªn liÖu th× quay l¹i gÆp ta")
	end
elseif GetTask(528) == 8 then
	if GetItemCount(662) == 1 and GetItemCount(663) == 1 and GetItemCount(661) == 1 then
		DelItem(661)
		DelItem(662)
		DelItem(663)
		sx = random(1,100)
		SetTask(528,0)
		
		ngay = tonumber(date("%d"))
		thang = tonumber(date("%m"))
		gio = tonumber(date("%H"))
		ngayitem = ngay + 1
		thangitem = thang
		if ngayitem > mangthang[thang] then
			ngayitem = ngayitem - mangthang[thang]
			thangitem = thang + 1
		end
		
		if sx < 40 then
			idxitem = AddEventItem(673)
			Talk(1,"","NhiÖm vô hoµn thµnh, nhËn ®­îc <color=pink>1 "..GetNameItemBox(idxitem).."")
			Msg2Player("Chóc mõng b¹n nhËn ®­îc <color=pink>1 "..GetNameItemBox(idxitem).."")
			SetHSD(idxitem, 2022 , thangitem, ngayitem, gio )
		elseif sx < 70 then
			idxitem = AddEventItem(674)
			Talk(1,"","NhiÖm vô hoµn thµnh, nhËn ®­îc <color=pink>1 "..GetNameItemBox(idxitem).."")
			Msg2Player("Chóc mõng b¹n nhËn ®­îc <color=pink>1 "..GetNameItemBox(idxitem).."")
			SetHSD(idxitem, 2022 , thangitem, ngayitem, gio )
		elseif sx < 90 then
			idxitem = AddEventItem(675)
			Talk(1,"","NhiÖm vô hoµn thµnh, nhËn ®­îc <color=pink>1 "..GetNameItemBox(idxitem).."")
			Msg2Player("Chóc mõng b¹n nhËn ®­îc <color=pink>1 "..GetNameItemBox(idxitem).."")
			SetHSD(idxitem, 2022 , thangitem, ngayitem, gio )
		else
			idxitem = AddEventItem(676)
			Talk(1,"","NhiÖm vô hoµn thµnh, nhËn ®­îc <color=pink>1 "..GetNameItemBox(idxitem).."")
			Msg2Player("Chóc mõng b¹n nhËn ®­îc <color=pink>1 "..GetNameItemBox(idxitem).."")
			SetHSD(idxitem, 2022 , thangitem, ngayitem, gio )
		end
	else
		Talk(1,"","Nguyªn liÖu nÊu ch¸o kh«ng ®ñ, cÇn kiÓm tra l¹i")
	end
else
	Talk(1,"","H×nh nh­ ng­¬i cßn viÖc g× ®ã quªn lµm, h·y nhí kü l¹i råi quay l¹i gÆp ta")
end
end

mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}

function no()
end