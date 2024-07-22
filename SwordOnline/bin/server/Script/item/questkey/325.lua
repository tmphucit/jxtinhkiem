

function main(idx)
idxitem = 325
n = GetItemCount(idxitem)
w,x,y = GetWorldPos()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
if floor(GetTask(833)/1000) ~= ngay then
	SetTask(833,ngay*1000)
	Msg2Player("Reset ngµy míi, sè l­îng bao l× x× hiÖn t¹i lµ: 0 qu¶ !")
end
soluonggioihan = 10


if GetTask(833) - (ngay*1000) >= soluonggioihan then
Talk(1,"","Sè l­îng Bao L× X× Nhá sö dông ngµy h«m nay ®· ®¹t tèi ®a "..soluonggioihan.." bao !")
return
end

if thang == 2 then
Talk(1,"","VËt phÈm hÕt h¹n sö dông")
return
end
-- if floor(GetTask(339)/1000) == ngay and mod(GetTask(339),1000) == 1 then
-- Talk(1,"","Ng­¬i ®· sö dông Bao L× X× ngµy h«m nay råi")
-- return
-- end




if GetItemCount(idxitem) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(idxitem) == (n-1) then
					SetTask(339 , ngay*1000 + 1)
					Msg2Player("§· sö dông thµnh c«ng")
					SetTask(833,GetTask(833)+1)
					nexp = GetLevelExp()
					if GetLevel() < 120 then
						for i=1,25 do AddOwnExp(nexp/100) end
						Msg2Player("B¹n nhËn ®­îc "..(nexp/100).." kinh nghiÖm")
					elseif GetLevel() >= 120 and GetLevel() < 130 then
						for i=1,2 do AddOwnExp(nexp/200) end
						Msg2Player("B¹n nhËn ®­îc "..(nexp/200).." kinh nghiÖm")
					else
						for i=1,2 do AddOwnExp(nexp/10*3/100) end
						Msg2Player("B¹n nhËn ®­îc "..(nexp/10*3).." kinh nghiÖm")
					end
					
			else
			Talk(1,"","Hack Ha Em")
			end
end



end
