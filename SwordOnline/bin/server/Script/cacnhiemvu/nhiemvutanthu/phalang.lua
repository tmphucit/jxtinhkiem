function OnDeath()
if GetTask(495) == 5 then
	if GetTask(494) < 10 then
		SetTask(494, GetTask(494) +1)
		Msg2Player("Sè l­îng nhiÖm vô hoµn thµnh:<color=yellow> "..GetTask(494).." / 10 con")
	else
		Talk(1,"","Ng­¬i ®· hoµn thµnh nhiÖm vô, quay vÒ gÆp V­¬ng §øc Phóc ®Ó phôc mÖnh")
		Msg2Player("<color=green>[NhiÖm Vô T©n Thñ]<color=red> Quay vÒ gÆp V­¬ng §øc Phóc ®Ö phôc mÖnh !")
	end
end
end

function OnDrop()

end