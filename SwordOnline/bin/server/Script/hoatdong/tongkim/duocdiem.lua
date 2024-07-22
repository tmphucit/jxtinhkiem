
function main()
h = tonumber(date("%H"))
m = tonumber(date("%M"))
s = tonumber(date("%S"))

SetFightState(0)
h,m,s = GetTimeNew()
	SayNew("<color=green>D­îc §iÕm: <color>: Chç ta chuyªn cung cÊp d­îc phÈm cho chiÕn tr­êng ",6,
	"Giao dÞch/giaodich",
	"Mua Cöu ChuyÓn Hoµn Hån §an /muacuuchuyen",
	"Mua ¤ §Çu Hoµn Hån §an /muaodau",
	"Mua Ngò Hoa Ngäc Lé Hoµn /mualebao",
	"NhËn Thõa Tiªn MËt MiÔn PhÝ /nhanlebao",
	"Tho¸t ./no")
end
function nhannguhoa()
for i=1,60 do
	idx = AddItem(1,2,0,5,0,0,0)
	SetItemLock(idx)
end
Msg2Player("B¹n nhËn ®­îc Ngò Hoa Ngäc Lé Hoµn miÔn phÝ !")
Talk(0,"")
end

function nhanlebao()
for i=1,20 do
	idx = AddItem(1,2,0,3,0,0,0)
	SetItemLock(idx)
end
Msg2Player("B¹n nhËn ®­îc d­îc liÖu miÔn phÝ !")
Talk(0,"")
end

function muaodau()
sl = GetCash()
if GetCash() >= 20000 then
Pay(20000)
if GetCash() == sl - 20000 then

	for k=1,20 do
		AddItem(1,1,0,4,0,0,0)
	end
	Msg2Player("B¹n nhËn ®­îc 20 b×nh ¤ §Çu Hoµn Hån §an !")
Talk(0,"")
else
Talk(1,"","hack ha em")

end
else
Talk(1,"","B¹n kh«ng mang ®ñ 2 v¹n l­îng !")
end
end


function muacuuchuyen()
sl = GetCash()
if GetCash() >= 20000 then
Pay(20000)
if GetCash() == sl - 20000 then

	for k=1,20 do
		AddItem(1,0,0,4,0,0,0)
	end
	Msg2Player("B¹n nhËn ®­îc 20 b×nh Cöu ChuyÓn Hoµn Hån §an !")
Talk(0,"")
else
Talk(1,"","hack ha em")

end
else
Talk(1,"","B¹n kh«ng mang ®ñ 2 v¹n l­îng !")
end
end

function mualebao()
sl = GetCash()
if GetCash() >= 8000 then
Pay(8000)
if GetCash() == sl - 8000 then

	for i=1,20 do
		AddItem(1,2,0,4,0,0,0)
	end

Talk(0,"")
else
Talk(1,"","hack ha em")

end
else
Talk(1,"","B¹n kh«ng mang ®ñ 2 v¹n l­îng !")
end
end

function giaodich()
Sale(7)
end
function no()
end