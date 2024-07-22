function main(idx)
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
w,x,y = GetWorldPos()

	DelNpc(idx)
	rnd = random(1,100)
	if rnd < 50 then
		idxitem = AddEventItem(304)
		Msg2World("<color=pink>[R­¬ng Vµng]: Chóc mõng "..GetName().." ®· t×m ®­îc R­¬ng Vµng nhËn ®­îc phÇn th­ëng <color=blue>"..GetNameItemBox(idxitem).."")
	elseif rnd >= 50 and rnd < 80 then
		idxitem = AddEventItem(305)
		Msg2World("<color=pink>[R­¬ng Vµng]: Chóc mõng "..GetName().." ®· t×m ®­îc R­¬ng Vµng nhËn ®­îc phÇn th­ëng <color=blue>"..GetNameItemBox(idxitem).."")
	else
		idxitem = AddEventItem(306)
		Msg2World("<color=pink>[R­¬ng Vµng]: Chóc mõng "..GetName().." ®· t×m ®­îc R­¬ng Vµng nhËn ®­îc phÇn th­ëng <color=blue>"..GetNameItemBox(idxitem).."")
	end
end