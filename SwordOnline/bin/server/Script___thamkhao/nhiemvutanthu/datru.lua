function OnDeath()
if GetTask(496) ~= 6 then
return
end
if GetItemCount(633) < 10 then
idxitem = AddEventItem(633)
SetBindItem(idxitem , 1)
else
Msg2Player("Nguoi da hoan thanh nhiem vu, hay quay ve gap Bat Gia")
end
end

function OnDrop()
end