iditem = 920

function main(idx)
-- if GetTeam() == nil then
-- Talk(1,"","Ng­¬i kh«ng cã tæ ®éi, kh«ng thÓ sö dông vËt phÈm nµy")
-- return
-- end

-- if GetTeamSize() < 3 then
-- Talk(1,"","Tæ ®éi nhá h¬n 3 ng­êi, kh«ng thÓ sö dông vËt phÈm nµy")
-- return
-- end

team = GetTeam()
name = GetName()
n = GetItemCount(iditem)
if GetItemCount(iditem) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(iditem) == (n-1) then
				idxplayer = PlayerIndx
					for p=1,GetCountPlayerMax() do
						PlayerIndex = p
						if GetTeam() == team then
									SetTask(488,  GetTask(488) + 30* 60 * 18)
									Msg2Player("B¹n nhËn ®­îc t¨ng 5% may m¾n QuÕ Hoa Töu thªm 30 phót ")
									Msg2Player("<color=yellow>L­u ý: Cã thÓ céng dån may m¾n víi Thiªn S¬n B¶o Lé ")
						end
					end
				PlayerIndx = idxplayer
			else
			Talk(1,"","Hack Ha Em")
			end
end
end

