function OnDeath()
end

function OnDrop(NpcIdx)
h,m,s = GetTimeNew()
DropEvent(NpcIdx)
Msg2SubWorld("<color=pink>Boss K� L�n �� b� ["..GetName().." ti�u di�t  v�o l�c "..h.." gi� "..m.." ph�t "..s.." gi�y. Sau 2 ti�ng n�a s� xu�t hi�n l�i !")

end

