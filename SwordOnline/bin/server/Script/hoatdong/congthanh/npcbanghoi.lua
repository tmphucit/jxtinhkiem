
function main()
if GetTongNameID() == 0 then
	SayNew("<color=green>Qu¶n Lı Bang Héi<color>: Ta chuyªn qu¶n lı nh÷ng vÊn ®Ò vÒ Bang héi ",3,
	"T¹o Bang héi/taobang",
	"T×m hiÓu vÒ Bang héi/timhieu",
	"Tho¸t./no")
else	SayNew("<color=green>Qu¶n Lı Bang Héi<color>: Ta chuyªn qu¶n lı nh÷ng vÊn ®Ò vÒ Bang héi ",3,
	"T×m hiÓu vÒ Bang héi/timhieu",
	"NhËn phÇn th­ëng Bang Héi Tranh Hung /banghoitranhhung",
	"Tho¸t./no")
end
end

DanhSachBang = {"ThİchÙ","•T×nhÙÄ","ÄTµnS¸t"}
function banghoitranhhung()
ngay = tonumber(date("%d"))
if ngay ~= 22 and ngay ~= 23 and ngay ~= 24 then
Talk(1,"","PhÇn th­ëng ®· hÕt h¹n !")
return
end
if GetTask(329) == 8888 then
Talk(1,"","B¹n ®· nhËn phÇn th­ëng Bang Héi Tranh Hïng, kh«ng thÓ nhËn thªm")
return
end
if GetTongName() ~= DanhSachBang[1] and GetTongName() ~= DanhSachBang[2] and GetTongName() ~= DanhSachBang[3] then
Talk(1,"","ChØ thµnh viªn bang [ThİchÙ], [ÄTµnS¸t], [•T×nhÙÄ] míi cã thÓ nhËn")
return
end
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end
if mod(GetTask(8),7000) < 22 then
		SetTask(329,GetTask(329) + 8888)
		if GetTask(329) == 8888 then
			idxitem = AddEventItem(120)
			SetBindItem(idxitem , 1)
			Msg2Tong("<color=yellow>"..GetName().." ®· nhËn 1 Tiªn Th¶o Lé 6 Giê !")
			if GetTongFigure() == 3 then
				for p=1,10 do AddEventItem(251) end
				Msg2Tong("<color=green>"..GetName().." ®· nhËn 10 Phi Phong !")		
			end
			if GetTongFigure() == 2 or GetTongFigure() == 3 then
				idxitem = AddEventItem(116)
				SetBindItem(idxitem , 1)
				Msg2Tong("<color=green>"..GetName().." ®· nhËn 1 N÷ Nhi Hång 6 Giê !")
			end	
		else
			Talk(1,"","Hack ha em")
		end
else
	Talk(1,"","ChØ thµnh viªn gia nhËp Bang Héi tr­íc ngµy 22/07 míi ®­îc nhËn th­ëng")
end
end

function taobang()
OpenTong(1)
end
function timhieu()
Talk(3,"","<color=red>§iÒu kiÖn lËp bang:<color>\n1 Nh¹c v­¬ng kiÕm\n1000 danh väng\nLevel > 100\n100 v¹n l­îng ",
"HiÖn t¹i server ®· update c¸c chøc n¨ng c¬ b¶n cña 1 Bang héi ",
"Nh­ng chøc n¨ng sÏ ®­îc Update dÇn trong nh÷ng lÇn update tiÕp theo ")
end
function no()
end