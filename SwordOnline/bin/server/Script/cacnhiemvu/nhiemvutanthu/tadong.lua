function main()
if GetTask(495) == 7 then
	SetTask(495, 8)
	Talk(1,"","Ng­¬i h·y qua Phôc L­u §éng kiÕm cho ta nguyªn liÖu ®Ó rÌn c©y ®ao")
	Msg2Player("<color=green>[NhiÖm Vô T©n Thñ]<color=red> §Õn Phôc L­u §éng 188/177 t×m vµ më B¶o R­¬ng lÊy 20 Kho¸ng VËt")
elseif GetTask(495) == 8 then
	if GetItemCount(635) >= 20 then
		for p=1,20 do DelItem(635) end
		SetTask(495,9)
		Talk(1,"","Quay vÒ gÆp C¬ Di §ãa ®Ó phôc mÖnh")
		Msg2Player("<color=green>[NhiÖm Vô T©n Thñ]<color=red> Quay vÒ gÆp C¬ Di §ãa ®Ó phôc mÖnh")
	else
		Talk(1,"","Qua Phôc L­u §éng 188/177 t×m 20 Kho¸ng VËt. Sè l­îng hoµn thµnh: <color=yellow>"..GetItemCount(635).." / 20")
	end
else

end
end