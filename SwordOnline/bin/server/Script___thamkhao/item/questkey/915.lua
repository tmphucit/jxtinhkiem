Include("\\script\\event\\tetduonglich\\EventConfig.txt")
iditem = 915

function main(idx)

end
function main_(idx)
if GetTask(990) ~= NgaySuKien then
	SetTask(990, NgaySuKien)
	SetTask(991, 0)
	SetTask(992, 0)
	SetTask(993, 0)
end

gh = gioihan()
if GetTask(992) >= gh then
Talk(2,"","B¹n ®· sö dông ®¹t giíi h¹n h«m nay: <color=yellow>"..GetTask(992)..".000.000 / "..gh..".000.000","B¹n cã thÓ gia h¹n t¹i NPC Thiªn Sø N¨m Míi ®Ó sö dông thªm")
return
end

n = GetItemCount(iditem)	
if GetItemCount(iditem) >= 1 then
			DelItemIdx(idx);
			if (GetItemCount(iditem) == n-1) then
					AddOwnExp(1000000)
					SetTask(992, GetTask(992) + 1)
					Msg2Player("Giíi h¹n: <color=yellow>"..GetTask(992)..".000.000<color=red> / "..gh..".000.000")				
			else
			Talk(1,"","Hack Ha Em")
			end
end
end

function gioihan()
if GetTask(993) == 1 then
return 400
else
return 200
end
end