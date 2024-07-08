function main()
if GetTask(528) == 7 then
		if GetItemCount(662) == 1 and GetItemCount(663) == 1 and GetItemCount(661) == 1 then
			SetTask(528,8)
			Talk(1,"","<color=red>HÖ Thèng<color> Chóc mõng ®¹i hiÖp, Ch¸o L¹p B¸t ®· hoµn thµnh råi. Quay l¹i t×m Hoµng Dung ®Ó phôc mÖnh")
			Msg2Player("NhËn nhiÖm vô: <color=yellow>quay l¹i gÆp Hoµng Dung phôc mÖnh")
		else
			Talk(1,"","Nguyªn liÖu nÊu ch¸o kh«ng ®ñ, cÇn kiÓm tra l¹i")
		end
end
end