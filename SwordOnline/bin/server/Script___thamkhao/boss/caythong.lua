
function OnDrop()

end

function OnDeath()
sx = random(1,5)
if sx == 1 then
AddEventItem(46)
Msg2SubWorld(""..GetName().." ti�u di�t Boss K� L�n nh�n ���c <color=yellow>Huy�n Tinh 3")
elseif sx == 2 then
AddEventItem(47)
Msg2SubWorld(""..GetName().." ti�u di�t Boss K� L�n nh�n ���c <color=yellow>Huy�n Tinh 4")
elseif sx == 3 then
AddEventItem(28)
Msg2SubWorld(""..GetName().." ti�u di�t Boss K� L�n nh�n ���c <color=yellow>Lam Th�y Tinh")
elseif sx == 4 then
AddEventItem(29)
Msg2SubWorld(""..GetName().." ti�u di�t Boss K� L�n nh�n ���c <color=yellow>T� Th�y Tinh")
elseif sx == 5 then
AddEventItem(30)
Msg2SubWorld(""..GetName().." ti�u di�t Boss K� L�n nh�n ���c <color=yellow>L�c Th�y Tinh")
end
end



