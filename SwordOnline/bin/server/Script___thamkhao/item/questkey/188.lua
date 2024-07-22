idxQ = 0
function main(idx)
idxQ = idx
SayNew("Vui lßng chän lo¹i MÆt N¹ muèn ®æi :",10,
"§¹o Thanh Ch©n Nh©n/doi",
"Cæ B¸ch/doi",
"Hoµng LiÖt/doi",
"§oµn Méc DuÖ /doi",
"Chung Linh Tö /doi",
"Hµ Linh Phiªu /doi",
"V­¬ng T¸ /doi",
"HuyÒn Gi¸c §¹i S­ /doi",
"Trang 2 /trang2",
"Tho¸t ./no")
end

function no()
end

function trang2()
SayNew("Vui lßng chän lo¹i MÆt N¹ muèn ®æi :",10,
"§­êng BÊt NhiÔm /doia",
"B¹ch Doanh Doanh /doia",
"Thanh TuyÖt S­ Th¸i /doia",
"Yªn HiÓu Th¸i /doia",
"Hµ Nh©n Ng· /doia",
"§¬n Tö Nam/doia",
"TuyÒn C« Tö /doia",
"Hµn Méng /doia",
"Trang 3/trang3",
"Tho¸t./no")
end

function trang3()
SayNew("Vui lßng chän lo¹i MÆt N¹ muèn ®æi :",10,
"Xµ T©m /doib",
"Thanh Tó /doib",
"Cç L©m S¸t /doib",
"Tµ §éc V©n/doib",
"Th¹ch Hïng/doib",
"TiÓu Linh Tö /doib",
"Tr­¬ng T«ng ChÝnh/doib",
"DiÖu Nh­ /doib",
"LiÔu Thanh Thanh/doib",
"Tho¸t./no")
end

function doi(nsel)
choose(nsel+1+50)
end
function doia(nsel)
choose(nsel+9+50)
end
function doib(nsel)
choose(nsel+17+50)
end

function choose(i)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))


sl = GetItemCount(188)
DelItemIdx(idxQ);
if GetItemCount(188) == (sl-1) then
		itemidx = AddItem(0,11,0,i,0,0,0)
		if thang == 12 then
			SetHSD(itemidx,2019,1,ngay,gio)
		else
			SetHSD(itemidx,2018,thang+1,ngay,gio)
		end
		Msg2Player("B¹n nhËn ®­îc 1 c¸i  <color=yellow>MÆt N¹ [1 Th¸ng]")
		
		Msg2Player("B¹n nhËn ®­îc  1 c¸i  <color=yellow>MÆt N¹ cao cÊp ")
	Talk(0,"")
else
Talk(1,"","Hack ha em ")
end
end