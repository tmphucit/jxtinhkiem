function OnDeath()

end

function OnDrop()
if GetPKState() == 0 then
Talk(1,"","Tr�ng th�i luy�n c�ng kh�ng r�t v�t ph�m ")
return
end

xs = random(1,60)
if xs == 30 then
AddEventItem(23)
Msg2Player("B�n nh�n ���c 1 Khi�u Chi�n L�nh !")
end

xs22 = random(1,200)
if xs22 == 100 then
AddEventItem(173)
Msg2Player("B�n nh�n ���c 1 Ph�c Duy�n L� !")
end


end