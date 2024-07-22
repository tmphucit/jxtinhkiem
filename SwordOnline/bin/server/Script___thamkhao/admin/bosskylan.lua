
function OnDrop()
sx = random(1,5)
if sx == 1 then
AddEventItem(46)
Msg2SubWorld(""..GetName().." tiªu diÖt Boss Kú L©n nhËn ®­îc <color=yellow>HuyÒn Tinh 3")
elseif sx == 2 then
AddEventItem(47)
Msg2SubWorld(""..GetName().." tiªu diÖt Boss Kú L©n nhËn ®­îc <color=yellow>HuyÒn Tinh 4")
elseif sx == 3 then
AddEventItem(28)
Msg2SubWorld(""..GetName().." tiªu diÖt Boss Kú L©n nhËn ®­îc <color=yellow>Lam Thñy Tinh")
elseif sx == 4 then
AddEventItem(29)
Msg2SubWorld(""..GetName().." tiªu diÖt Boss Kú L©n nhËn ®­îc <color=yellow>Tö Thñy Tinh")
elseif sx == 5 then
AddEventItem(30)
Msg2SubWorld(""..GetName().." tiªu diÖt Boss Kú L©n nhËn ®­îc <color=yellow>Lôc Thñy Tinh")
end
end

function OnDeath()
end



