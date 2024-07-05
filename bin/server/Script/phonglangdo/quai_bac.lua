function OnDeath()

end

function OnDrop()
if GetPKState() == 0 then
Talk(1,"","Tr¹ng th¸i luyÖn c«ng kh«ng rít vËt phÈm ")
return
end

xs = random(1,60)
if xs == 30 then
AddEventItem(23)
Msg2Player("B¹n nhËn ®­îc 1 Khiªu ChiÕn LÖnh !")
end

xs22 = random(1,200)
if xs22 == 100 then
AddEventItem(173)
Msg2Player("B¹n nhËn ®­îc 1 Phóc Duyªn Lé !")
end


end