

function main()
SayNew("Mét c¸i <color=yellow>B¸nh Trung Thu Siªu To Khæng Lå <color>, mïi th¬m cña b¸nh ®ang lan táa kh¾p <color=green>Minh NguyÖt TrÊn....<color>",2,
"NhËn th­ëng mèc B¸nh Trung Thu /nhanthuongmoc_banh",
"Tho¸t./no")
end

function nhanthuongmoc_banh()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ sö dông lång ®Ìn!")
	return
end

if GetTask(956) < 100 then
Talk(1,"","B¹n ch­a sö dông ®ñ 100 B¸nh Trung Thu, kh«ng thÓ nhËn th­ëng")
return
end

if GetTask(956) == 100 then
	SetTask(956,101) 
	PhanThuongMoc()
else
	Talk(1,"","B¹n ®· nhËn phÇn th­ëng nµy råi, kh«ng thÓ nhËn thªm")
end
end
function PhanThuongMoc()
sx = random(1,100)
if sx < 70 then
		itemname = AddEventItem(120)
		SetBindItem(itemname, 1)
		itemname = AddEventItem(120)
		SetBindItem(itemname, 1)
		Msg2SubWorld("Chóc mõng "..GetName().." sö dông 100 B¸nh Trung Thu nhËn ®­îc: <color=yellow>2 Tiªn Th¶o Lé 6 Giê ")
		inlog("[Tiªn Th¶o Lé] "..GetAccount().." - "..GetName().."")
else
		itemname = AddEventItem(random(0,1))
		SetBindItem(itemname, 1)
		Msg2SubWorld("Chóc mõng "..GetName().." sö dông 100 B¸nh Trung Thu nhËn ®­îc: <color=yellow>1 "..GetNameItemBox(itemname).." ")
		inlog("["..GetNameItemBox(itemname).."] "..GetAccount().." - "..GetName().."")
end
end


function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/PTMoc_BanhTrungThu.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end


function no()
end