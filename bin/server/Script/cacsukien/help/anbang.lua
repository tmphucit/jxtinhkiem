function main()
Say("<color=green>An Bang Sø Gi¶: <color> Ng­êi cã mang theo <color=red> LÖnh Bµi An Bang <color> ®Õn ®©y kh«ng? ",5,
"§æi An Bang Tinh Th¹ch H¹ng Liªn/doidcab",
"§æi An Bang Cóc Hoa Th¹ch ChØ Hoµn/doinhan1ab",
"§æi An Bang Kª HuyÕt Th¹ch Giíi ChØ /doinhan2ab",
"§æi An Bang §iÒn Hoµng Th¹ch Ngäc Béi /doinbab",
"Thoat./no")
end

function no()
end


function doinbab()
if CheckFreeBoxItem(0,9,3,1) == 0 then
Msg2Player("Kho¶ng trèng hµnh trang kh«ng ®ñ . §Ò nghÞ dän dÑp hµnh trang tr­íc khi sö dông chøc n¨ng !")
return
end
a = GetItemCount(38)
if GetItemCount(38) >= 1 then
	DelItem(38)
	if GetItemCount(38) == (a-1) then
	AddItem(0,9,18,3,0,0,0)
	Msg2Player("B¹n NhËn §­îc 1 [Liªn §Êu] An Bang §iÒn Hoµng Th¹ch Ngäc Béi ")
	Talk(0,"no","")
	else
	Talk(1,"","hack ha em")
	end
else
Talk(1,"","<color=green>An Bang Sø Gi¶: <color> B¹n kh«ng mang theo <color=red> LÖnh Bµi An Bang ")
end
end

function doinhan2ab()
if CheckFreeBoxItem(0,3,4,1) == 0 then
Msg2Player("Kho¶ng trèng hµnh trang kh«ng ®ñ . §Ò nghÞ dän dÑp hµnh trang tr­íc khi sö dông chøc n¨ng !")
return
end
a = GetItemCount(37)
if GetItemCount(37) >= 1 then
	DelItem(37)
	if GetItemCount(37) == (a-1) then
	AddItem(0,3,34,3,0,0,0)
	Msg2Player("B¹n NhËn §­îc 1 [Liªn §Êu] An Bang Kª HuyÕt Th¹ch Giíi ChØ ")
	Talk(0,"no","")
	else
	Talk(1,"","hack ha em")
	end
else
Talk(1,"","<color=green>An Bang Sø Gi¶: <color> B¹n kh«ng mang theo <color=red> LÖnh Bµi An Bang ")
end
end
function doinhan1ab()
if CheckFreeBoxItem(0,3,3,1) == 0 then
Msg2Player("Kho¶ng trèng hµnh trang kh«ng ®ñ . §Ò nghÞ dän dÑp hµnh trang tr­íc khi sö dông chøc n¨ng !")
return
end
a = GetItemCount(36)
if GetItemCount(36) >= 1 then
	DelItem(36)
	if GetItemCount(36) == (a-1) then
	AddItem(0,3,33,3,0,0,0)
	Msg2Player("B¹n NhËn §­îc 1 [Liªn §Êu] An Bang Cóc Hoa Th¹ch ChØ Hoµn")
	Talk(0,"no","")
	else
	Talk(1,"","hack ha em")
	end
else
Talk(1,"","<color=green>An Bang Sø Gi¶: <color> B¹n kh«ng mang theo <color=red> LÖnh Bµi An Bang")
end
end
function doidcab()
if CheckFreeBoxItem(0,4,3,1) == 0 then
Msg2Player("Kho¶ng trèng hµnh trang kh«ng ®ñ . §Ò nghÞ dän dÑp hµnh trang tr­íc khi sö dông chøc n¨ng !")
return
end
a = GetItemCount(35)
if GetItemCount(35) >= 1 then
	DelItem(35)
	if GetItemCount(35) == (a-1) then
	AddItem(0,4,18,3,0,0,0)
	Msg2Player("B¹n NhËn §­îc 1 [Liªn §Êu] An Bang Tinh Th¹ch H¹ng Liªn")
	Talk(0,"no","")
	else
	Talk(1,"","hack ha em")
	end
else
Talk(1,"","<color=green>An Bang Sø Gi¶: <color> B¹n kh«ng mang theo <color=red> LÖnh Bµi An Bang")
end
end