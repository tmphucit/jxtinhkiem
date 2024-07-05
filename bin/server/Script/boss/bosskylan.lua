function OnDeath()
end

function OnDrop(NpcIdx)
h,m,s = GetTimeNew()
DropEvent(NpcIdx)
Msg2SubWorld("<color=pink>Boss Kú L©n ®· bÞ ["..GetName().." tiªu diÖt  vµo lóc "..h.." giê "..m.." phót "..s.." gi©y. Sau 2 tiÕng n÷a sÏ xuÊt hiÖn l¹i !")

end

