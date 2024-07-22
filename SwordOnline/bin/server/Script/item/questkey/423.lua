function main(idx)
sl = GetItemCount(423)

if GetTask(465) >= gioihan() then
	Talk(1,"","B¹n ®· sö dông v­ît qu¸ sè l­îng Giíi H¹n Sù KiÖn: <color=yellow>"..GetTask(465).."000000 / "..gioihan().."000000")
return
end
if GetLevel() >= 140 then
Talk(1,"","§¼ng cÊp trªn 140 kh«ng thÓ sö dông")
return
end
DelItemIdx(idx);
if GetItemCount(423) == sl -1 then
		AddOwnExp(2000000)
		SetTask(465, GetTask(465) + 2)
		Msg2Player("Giíi h¹n: "..GetTask(465).."000000 / "..gioihan().."000000") 
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