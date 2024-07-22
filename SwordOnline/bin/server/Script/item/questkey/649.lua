

function main(idx)
if GetTask(483) > 0 and GetTask(488) == 5 then
Talk(1,"","B¹n ®ang trong thêi gian sö dông Thiªn S¬n B¶o Lé, kh«ng thÓ sö dông thªm QuÕ Hoa Töu ")
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
n = GetItemCount(649)
if GetItemCount(649) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(649) == (n-1) then
				idxplayer = PlayerIndx
					for p=1,GetCountPlayerMax() do
						PlayerIndex = p
						if GetTeam() == team then
							if GetTask(483) > 0  and (GetTask(488) == 10) then
									SetTask(483,  GetTask(483) + 30* 60 * 18)
									Msg2Player("B¹n nhËn ®­îc t¨ng 10% may m¾n thªm 30 phót ")
							else
											if GetTask(488) == 5 then
												Msg2Player("B¹n bŞ mÊt hiÖu qu¶ Thiªn S¬n B¶o Lé do sö dông QuÕ Hoa Töu ")	
											end
									SetTask(483,  30* 60 * 18)
									SetTask(488, 10)
									Msg2Player("B¹n nhËn ®­îc t¨ng 10% may m¾n trong 30 phót ")
							end
						end
					end
				PlayerIndx = idxplayer
			else
			Talk(1,"","Hack Ha Em")
			end
end
end

