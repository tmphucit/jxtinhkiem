
function OnDrop()

end


function OnDeath()
sx = random(1,5)
if sx == 1 then
for i=1,3 do
AddEventItem(46)
end
Msg2SubWorld(""..GetName().." ti�u di�t Boss K� L�n nh�n ���c <color=yellow>3 vi�n Huy�n Tinh 3")
elseif sx == 2 then
for i=1,2 do
AddEventItem(47)
end
Msg2SubWorld(""..GetName().." ti�u di�t Boss K� L�n nh�n ���c <color=yellow>2 vi�n Huy�n Tinh 4")
elseif sx == 3 then
for i=1,2 do
AddEventItem(28)
end
Msg2SubWorld(""..GetName().." ti�u di�t Boss K� L�n nh�n ���c <color=yellow>2 vi�n Lam Th�y Tinh")
elseif sx == 4 then
for i=1,2 do
AddEventItem(29)
end
Msg2SubWorld(""..GetName().." ti�u di�t Boss K� L�n nh�n ���c <color=yellow>2 vi�n T� Th�y Tinh")
elseif sx == 5 then
for i=1,2 do
AddEventItem(30)
end
Msg2SubWorld(""..GetName().." ti�u di�t Boss K� L�n nh�n ���c <color=yellow>2 vi�n L�c Th�y Tinh")
end
end



