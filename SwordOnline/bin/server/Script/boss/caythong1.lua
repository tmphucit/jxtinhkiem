
function OnDrop()

end


function OnDeath()
sx = random(1,5)
if sx == 1 then
for i=1,3 do
AddEventItem(46)
end
Msg2SubWorld(""..GetName().." tiªu diÖt Boss Kú L©n nhËn ®­îc <color=yellow>3 viªn HuyÒn Tinh 3")
elseif sx == 2 then
for i=1,2 do
AddEventItem(47)
end
Msg2SubWorld(""..GetName().." tiªu diÖt Boss Kú L©n nhËn ®­îc <color=yellow>2 viªn HuyÒn Tinh 4")
elseif sx == 3 then
for i=1,2 do
AddEventItem(28)
end
Msg2SubWorld(""..GetName().." tiªu diÖt Boss Kú L©n nhËn ®­îc <color=yellow>2 viªn Lam Thñy Tinh")
elseif sx == 4 then
for i=1,2 do
AddEventItem(29)
end
Msg2SubWorld(""..GetName().." tiªu diÖt Boss Kú L©n nhËn ®­îc <color=yellow>2 viªn Tö Thñy Tinh")
elseif sx == 5 then
for i=1,2 do
AddEventItem(30)
end
Msg2SubWorld(""..GetName().." tiªu diÖt Boss Kú L©n nhËn ®­îc <color=yellow>2 viªn Lôc Thñy Tinh")
end
end



