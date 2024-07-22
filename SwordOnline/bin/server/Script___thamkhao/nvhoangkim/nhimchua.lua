function OnDeath()
if GetTask(157) == 7 then
	if GetTask(156) == 100 then
	SetTask(156,101)
		if GetTask(156) == 101 then
		AddOwnExp(1250)
		Msg2Player("B¹n nhËn ®­îc 1250 kinh nghiÖm")
		Talk(1,"","NhiÖm vô hoµn thµnh ! Quay vÒ gÆp Ng¹o V©n T«ng")
		else
		Talk(1,"","Hack ha em")
		end
	elseif GetTask(156) == 101 then
	Msg2Player("NhiÖm vô hoµn thµnh ! Quay vÒ gÆp Ng¹o V©n T«ng")
	else
	Msg2Player("Thuéc h¹ cña ta cßn ch­a khó©t phôc, sao l¹i t×m ta sím vËy.. ")
	end
elseif GetTask(157) == 13 then
	sx = random(1,2)
	if sx == 1 then
	if GetItemCount(21) == 0 then
		AddEventItem(21)
		Talk(1,"","B¹n nhËn ®­îc 1 <color=yellow>HuyÒn Tinh 1 Tinh KhiÕt")
	else
		Talk(1,"","Ng­êi ®· cã råi t¹i sao cßn muèn lÊy thªm ")
	end
	end
end
end

function OnDrop()
end