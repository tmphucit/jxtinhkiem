

function main(idx)
if GetTeam() == nil then
Talk(1,"","Ng­¬i kh«ng cã tæ ®éi, kh«ng thÓ sö dông vËt phÈm nµy")
return
end

if GetTeamSize() < 8 then
Talk(1,"","Tæ ®éi nhá h¬n 8 ng­êi, kh«ng thÓ sö dông vËt phÈm nµy")
return
end
team = GetTeam()
n = GetItemCount(650)
if GetItemCount(650) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(650) == (n-1) then
				idxplayer = PlayerIndx
					for p=1,GetCountPlayerMax() do
						PlayerIndex = p
						if GetTeam() == team then
							SetTask(471, GetTask(471) + 60 * 60 * 18)
							Msg2Player("B¹n nhËn ®­îc t¨ng 10% may m¾n trong 1 giê ")
						end
					end
				PlayerIndx = idxplayer
			else
			Talk(1,"","Hack Ha Em")
			end
end
end

