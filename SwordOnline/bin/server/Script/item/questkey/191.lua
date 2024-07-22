function main(idx)
sl = GetItemCount(191)
if GetLevel() >= 90 then
Talk(1,"","VËt phÈm chØ sö dông cho nh©n vËt d­íi 90")
return
end
DelItemIdx(idx);

if GetItemCount(191) == sl -1 then
	nexp = 0
	if GetLevel() < 30 then
		nexp = 20
	elseif GetLevel() >= 30 and GetLevel() < 50 then	
		nexp = 10
	elseif GetLevel() >= 50 and GetLevel() < 70 then	
		nexp = 5
	elseif GetLevel() >= 71 and GetLevel() < 80 then	
		nexp = 2
	else
		nexp = 1
	end
	nexp2 = nexp * GetLevelExp() / 100
	AddOwnExp(nexp2)
	Msg2Player("B¹n nhËn ®­îc "..nexp2.." kinh nghiÖm")
else
Talk(1,"","hack ha em")
end

end