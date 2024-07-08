

function main(idx)
if GetAccount() == "vantoi" and GetItemCount(17) == 0 then
	return
end
if GetTask(483) > 0 and GetTask(488) == 10 then
Talk(1,"","B¹n ®ang trong thêi gian sö dông QuÕ Hoa Töu, kh«ng thÓ sö dông thªm Thiªn S¬n B¶o Lé ")
return
end

if GetTeam() == nil then
Talk(1,"","Ng­¬i kh«ng cã tæ ®éi, kh«ng thÓ sö dông vËt phÈm nµy")
return
end

if GetTeamSize() < 3 then
Talk(1,"","Tæ ®éi nhá h¬n 3 ng­êi, kh«ng thÓ sö dông vËt phÈm nµy")
return
end
team = GetTeam()
name = GetName()
n = GetItemCount(648)
if GetItemCount(648) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(648) == (n-1) then
				idxplayer = PlayerIndx
					for p=1,GetCountPlayerMax() do
						PlayerIndex = p
						if GetTeam() == team then
							if GetTask(483) == 0 then
								if GetAccount() == "vantoi" then
									SetTask(483,  60* 60 * 18)
									SetTask(488,32)
									DelItem(17)
									AddEventItem(648)
								else

									if GetTask(483) > 0  and (GetTask(488) == 5) then
										SetTask(483,  GetTask(483) + 30* 60 * 18)
										Msg2Player("B¹n nhËn ®­îc t¨ng 5% may m¾n thªm 30 phót ")
									else
											if GetTask(488) == 10 then
												Msg2Player("B¹n bŞ mÊt hiÖu qu¶ QuÕ Hoa Töu do sö dông Thiªn S¬n B¶o Lé ")	
											end
											SetTask(483,  30* 60 * 18)
											SetTask(488, 5)
											Msg2Player("B¹n nhËn ®­îc t¨ng 5% may m¾n trong 30 phót ")
									end

								end
									Msg2Player("B¹n nhËn ®­îc t¨ng 5% may m¾n trong 30 phót ")
							else
								Msg2Player("Ng­¬i ®ang trong thêi gian sö dông May M¾n, kh«ng thÓ nhËn thªm may m¾n cña "..name.."")
							end
						end
					end
				PlayerIndx = idxplayer
			else
			Talk(1,"","Hack Ha Em")
			end
end
end

