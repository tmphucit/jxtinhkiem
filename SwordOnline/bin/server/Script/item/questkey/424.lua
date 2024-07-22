function main(idx)
sl = GetItemCount(424)

if GetTask(465) >= gioihan() then
	Talk(1,"","B¹n ®· sö dông v­ît qu¸ sè l­îng Giíi H¹n Sù KiÖn: <color=yellow>"..GetTask(465).."000000 / "..gioihan().."000000")
return
end

DelItemIdx(idx);
if GetItemCount(424) == sl -1 then
		AddOwnExp(4000000)
		SetTask(465, GetTask(465) + 4)
		Msg2Player("Giíi h¹n: "..GetTask(465).."000000 / "..gioihan().."000000") 
		
		vatpham = random(1,200)
		if vatpham == 100 then
			sx = random(1,10)
			if sx == 1 then
				idxitem = AddEventItem(random(0,1))
				Msg2SubWorld("Chóc mõng "..GetName().." sö dông Ng­êi TuyÕt Kh¨n §á may m¾n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif sx == 2 then
				idxitem = AddEventItem(random(414,415))
				Msg2SubWorld("Chóc mõng "..GetName().." sö dông Ng­êi TuyÕt Kh¨n §á may m¾n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif sx == 3 then
				idxitem = AddEventItem(random(406,407))
				Msg2SubWorld("Chóc mõng "..GetName().." sö dông Ng­êi TuyÕt Kh¨n §á may m¾n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
			else
				idxitem = AddEventItem(random(173,175))
				Msg2Player("Chóc mõng "..GetName().." sö dông Ng­êi TuyÕt Kh¨n §á may m¾n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
			end
		end
		
		Talk(0,"")
else
Talk(1,"","hack ha em")
end

end

function gioihan()
if GetTask(466) == 1 then
return 6000
elseif GetTask(466) == 2 then
return 100000
else
return 3000
end
end