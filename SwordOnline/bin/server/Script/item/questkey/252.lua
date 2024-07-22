

function main(idx)
n = GetItemCount(252)
	if GetExp() >= 0 then
		Talk(1,"","Kinh nghiÖm cña b¹n kh«ng bÞ ©m, kh«ng thÓ sö dông vËt phÈm !")
		return
	end
	
if GetItemCount(252) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(252) == (n-1) then
				SetExp(0)
				Msg2Player("B¹n ®· sö dông B¸t Nh· T©m Kinh bµi trï ßoµn bé kinh nghiÖm ©m!"); 
				--KickOutSelf()
			else
			Talk(1,"","Hack Ha Em")
			end
end
		
		
end
