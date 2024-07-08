function main()
if GetTask(528) == 5 then
		if GetItemCount(662) == 1 and GetItemCount(663) == 1 and GetItemCount(661) == 1 then
			SetTask(528,6)
			Talk(1,"","<color=red>HÖ Thèng<color> Löa kh«ng ®ñ lín ®Ó nÊu Ch¸o L¹p B¸t, ng­¬i h·y thö víi bÕp kh¸c xem")
			Msg2Player("NhËn nhiÖm vô: <color=yellow>NÊu Ch¸o t¹i BÕp 197/203")
		else
			Talk(1,"","Nguyªn liÖu nÊu ch¸o kh«ng ®ñ, cÇn kiÓm tra l¹i")
		end
end
end