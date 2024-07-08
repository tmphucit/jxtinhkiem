
function doinondq()
if CheckFreeBoxItem(0,7,15,1) == 0 then
Msg2Player("Kho¶ng trèng hµnh trang kh«ng ®ñ . §Ò nghÞ dän dÑp hµnh trang tr­íc khi sö dông chøc n¨ng !")
return
end
a = GetItemCount(39)
if GetItemCount(39) >= 1 then
	DelItem(39)
	if GetItemCount(39) == (a-1) then
	AddItem(0,7,15,RandomNew(1,10),0,0,0)
	Msg2Player("B¹n NhËn §­îc 1 §Þnh Quèc ¤ Sa Ph¸t Qu¸n")
	Talk(0,"no","")
	else
	Talk(1,"","hack ha em")
	end
elseif GetItemCount(604) >= 1 then
	a = GetItemCount(604)
	DelItem(604)
	if GetItemCount(604) == (a-1) then
	AddItem(0,7,15,10,0,0,0)
	Msg2Player("B¹n NhËn §­îc 1 §Þnh Quèc ¤ Sa Ph¸t Qu¸n")
	Talk(0,"no","")
	else
	Talk(1,"","hack ha em")
	end
	
	
else
Talk(1,"","<color=green>§Þnh Quèc Sø Gi¶: <color> B¹n kh«ng mang theo <color=red> LÖnh Bµi §Þnh Quèc")
end
end
function doiaodq()
if CheckFreeBoxItem(0,2,30,1) == 0 then
Msg2Player("Kho¶ng trèng hµnh trang kh«ng ®ñ . §Ò nghÞ dän dÑp hµnh trang tr­íc khi sö dông chøc n¨ng !")
return
end
a = GetItemCount(40)
if GetItemCount(40) >= 1 then
	DelItem(40)
	if GetItemCount(40) == (a-1) then
	AddItem(0,2,30,RandomNew(1,10),0,0,0)
	Msg2Player("B¹n NhËn §­îc 1 §Þnh Quèc Thanh Sa Tr­êng Sam")
	Talk(0,"no","")
	else
	Talk(1,"","hack ha em")
	end
elseif GetItemCount(605) >= 1 then
a = GetItemCount(605)
	DelItem(605)
	if GetItemCount(605) == (a-1) then
	AddItem(0,2,30,10,0,0,0)
	Msg2Player("B¹n NhËn §­îc 1 §Þnh Quèc Thanh Sa Tr­êng Sam")
	Talk(0,"no","")
	else
	Talk(1,"","hack ha em")
	end	
	
	
else
Talk(1,"","<color=green>§Þnh Quèc Sø Gi¶: <color> B¹n kh«ng mang theo <color=red> LÖnh Bµi §Þnh Quèc")
end
end

function doidaidq()
if CheckFreeBoxItem(0,6,3,1) == 0 then
Msg2Player("Kho¶ng trèng hµnh trang kh«ng ®ñ . §Ò nghÞ dän dÑp hµnh trang tr­íc khi sö dông chøc n¨ng !")
return
end
a = GetItemCount(41)
if GetItemCount(41) >= 1 then
	DelItem(41)
	if GetItemCount(41) == (a-1) then
	AddItem(0,6,3,RandomNew(1,10),0,0,0)
	Msg2Player("B¹n NhËn §­îc 1 §Þnh Quèc Ng©n TÇm Yªu §¸i")
	Talk(0,"no","")
	else
	Talk(1,"","hack ha em")
	end
elseif GetItemCount(606) >= 1 then
a = GetItemCount(606)
	DelItem(606)
	if GetItemCount(606) == (a-1) then
	AddItem(0,6,3,10,0,0,0)
	Msg2Player("B¹n NhËn §­îc 1 §Þnh Quèc Ng©n TÇm Yªu §¸i")
	Talk(0,"no","")
	else
	Talk(1,"","hack ha em")
	end
else
Talk(1,"","<color=green>§Þnh Quèc Sø Gi¶: <color> B¹n kh«ng mang theo <color=red> LÖnh Bµi §Þnh Quèc")
end
end

function doigiaydq()
if CheckFreeBoxItem(0,5,5,1) == 0 then
Msg2Player("Kho¶ng trèng hµnh trang kh«ng ®ñ . §Ò nghÞ dän dÑp hµnh trang tr­íc khi sö dông chøc n¨ng !")
return
end
a = GetItemCount(42)
if GetItemCount(42) >= 1 then
	DelItem(42)
	if GetItemCount(42) == (a-1) then
	AddItem(0,5,5,RandomNew(1,10),0,0,0)
	Msg2Player("B¹n NhËn §­îc 1 §Þnh Quèc XÝch QuyÒn NhuyÔn Ngoa")
	Talk(0,"no","")
	else
	Talk(1,"","hack ha em")
	end
elseif GetItemCount(607) >= 1 then
a = GetItemCount(607)
	DelItem(607)
	if GetItemCount(607) == (a-1) then
	AddItem(0,5,5,10,0,0,0)
	Msg2Player("B¹n NhËn §­îc 1 §Þnh Quèc XÝch QuyÒn NhuyÔn Ngoa")
	Talk(0,"no","")
	else
	Talk(1,"","hack ha em")
	end	
else
Talk(1,"","<color=green>§Þnh Quèc Sø Gi¶: <color> B¹n kh«ng mang theo <color=red> LÖnh Bµi §Þnh Quèc")
end
end
function doibtdq()
if CheckFreeBoxItem(0,8,3,1) == 0 then
Msg2Player("Kho¶ng trèng hµnh trang kh«ng ®ñ . §Ò nghÞ dän dÑp hµnh trang tr­íc khi sö dông chøc n¨ng !")
return
end
a = GetItemCount(43)
if GetItemCount(43) >= 1 then
	DelItem(43)
	if GetItemCount(43) == (a-1) then
	AddItem(0,8,3,RandomNew(1,10),0,0,0)
	Msg2Player("B¹n NhËn §­îc 1 §Þnh Quèc Tö §»ng Hé UyÓn")
	Talk(0,"no","")
	else
	Talk(1,"","hack ha em")
	end
elseif GetItemCount(608) >= 1 then
a = GetItemCount(608)
	DelItem(608)
	if GetItemCount(608) == (a-1) then
	AddItem(0,8,3,10,0,0,0)
	Msg2Player("B¹n NhËn §­îc 1 §Þnh Quèc Tö §»ng Hé UyÓn")
	Talk(0,"no","")
	else
	Talk(1,"","hack ha em")
	end
else
Talk(1,"","<color=green>§Þnh Quèc Sø Gi¶: <color> B¹n kh«ng mang theo <color=red> LÖnh Bµi §Þnh Quèc")
end
end


function no()
end
function main()
SayNew("<color=green>§Þnh Quèc Sø Gi¶: <color> Ng­êi cã mang theo <color=red> LÖnh Bµi §Þnh Quèc <color> ®Õn ®©y kh«ng? ",6,
"§Þnh Quèc ¤ Sa Ph¸t Qu¸n /doinondq",
"§Þnh Quèc Thanh Sa Tr­êng Sam/doiaodq",
"§Þnh Quèc Ng©n TÇm Yªu §¸i /doidaidq",
"§Þnh Quèc XÝch QuyÒn NhuyÔn Ngoa /doigiaydq",
"§Þnh Quèc Tö §»ng Hé UyÓn /doibtdq",
"Thoat./no")
end
