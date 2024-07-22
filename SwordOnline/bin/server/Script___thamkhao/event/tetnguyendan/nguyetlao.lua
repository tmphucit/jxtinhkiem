

function main()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))

if thang == 1 and ngay < 26 then
Talk(1,"","Thêi gian nhËn phÇn th­ëng: 26/01 - 05/02 !")
return
end

if GetLevel() < 100 then
Talk(1,"","§¹t ®¼ng cÊp 100 råi quay l¹i gÆp ta, sÏ cã 1 phÇn quµ nhá cho quý b»ng h÷u !")
return
end

SayNew("<color=green>NguyÖt L·o<color>: Chóc mõng n¨m míi, ®©y lµ phÇn quµ cña ng­¬i",2,
"§a t¹, ta ®Õn nhËn quµ n¨m míi /nhanthuong",
"Tho¸t./no")
end
mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}
function nhanthuong()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
gio = tonumber(date("%H"))
thoigian = tonumber(date("%H%M%d%m"))
if GetLevel() >= 100 and GetTask(987) == 0 then
	SetTask(987, thoigian)
	
	ngay = ngay + 3
	if ngay > mangthang[thang] then
				ngay = ngay - mangthang[thang]
				
				if (thang == 12) then
					thang = 0
					nam = nam + 1
				end
				thang = thang + 1	
			end	
		
			
			Msg2Player("Chóc mõng b¹n nhËn phÇn quµ n¨m míi: ")
			idxitem = AddEventItem(696)
			SetBindItem(idxitem , 1)
			SetHSD(idxitem, 2000+nam , thang, ngay, gio )
			Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ngµy]")
	
			idxitem = AddEventItem(911)
			SetBindItem(idxitem , 1)
			Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).."")
else
	Talk(1,"","Ng­¬i ®· nhËn phÇn th­ëng nµy råi, kh«ng thÓ nhËn thªm !")
end
end

function no()
end