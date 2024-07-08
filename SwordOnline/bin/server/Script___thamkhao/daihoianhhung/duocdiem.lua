function main()
SayNew("<color=green>D­îc §iÕm - §¹i Héi Anh Hïng<color>",2,
"Ta muèn nhËn Håi Thiªn T¸i T¹o §¬n /nhanhoithien",
"Tho¸t./no")
end

function nhanhoithien()
	for i=1,20 do
		idxitem = AddItem(1,10,0,3,0,0,0)
		SetItemLock(idxitem)
	end	
	Msg2Player("B¹n nhËn ®­îc 20 b×nh Håi Thiªn T¸i T¹o §¬n")
end

function no()

end