function OnDeath()
end

function OnDrop(NpcIdx)
if GetTask(528) ~= 1 then
return
end
if GetItemCount(663) ~= 0 then
return
end
DropEvent(NpcIdx)
end