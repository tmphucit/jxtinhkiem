idxitem = 140

function main(idx)
if GetFightState() == 0 then
Talk(1,"","VËt phÈm kh«ng thÓ sö dông trong tr¹ng th¸i Phi ChiÕn §Êu !")
return
end
if GetTask(483) > 0 then
Talk(1,"","B¹n ®ang trong thêi gian sö dông May M¾n, kh«ng thÓ sö dông thªm !")
return
end 

if GetTask(488) == 1 then
Talk(1,"","B¹n ®ang trong thêi gian sö dông Thiªn S¬n B¶o Lé, kh«ng thÓ sö dông thªm ! ")
return
end
if GetTask(488) == 2 then
Talk(1,"","B¹n ®ang trong thêi gian sö dông QuÕ Hoa Töu, kh«ng thÓ sö dông thªm ! ")
return
end

team = GetTeam()
w,x,y = GetWorldPos()


n = GetItemCount(idxitem)
if GetItemCount(idxitem) >= 1 then
	DelItemIdx(idx);
	AddPropObj(452)
	if GetItemCount(idxitem) == (n-1) then
			if team == nil then
							if GetTask(483) == 0 then
											SetTask(483,   30*60 * 18)
											SetTask(488, 1)
											Msg2Player("B¹n nhËn ®­îc 15% May M¾n trong 30 phót !")
							else
									if GetTask(488) == 2 then
										Msg2Player("B¹n ®ang trong thêi gian sö dông QuÕ Hoa Töu, kh«ng nhËn ®­îc hç trî tõ  Lång §Ìn Ng«i Sao !")
									else
											SetTask(483,   30*60 * 18)
											SetTask(488, 1)
											Msg2Player("B¹n nhËn ®­îc 15% May M¾n trong 30 phót !")
									end
							end
							
							if GetTask(172) < 30*60*18 then
								SetTask(172, 30*60*18)
								AddSkillEffect(460,1,GetTask(172))
								SetTask(141,1)
								Msg2Player("B¹n nhËn ®­îc Nh©n §«i Kinh NghiÖm trong 30 phót")
							else
								Msg2Player("B¹n ®ang trong thêi gian sö dông Tiªn Th¶o Lé, kh«ng nhËn ®­îc hç trî tõ Lång §Ìn Ng«i Sao ")
							end
			else
				idxp = PlayerIndex
				for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				w1,x1,y1 = GetWorldPos()
					if GetTeam() == team then
						if w == w1 then
							if GetTask(483) == 0 then
											SetTask(483,   30*60 * 18)
											SetTask(488, 1)
											Msg2Player("B¹n nhËn ®­îc 15% May M¾n trong 30 phót !")
							else
									if GetTask(488) == 2 then
										Msg2Player("B¹n ®ang trong thêi gian sö dông QuÕ Hoa Töu, kh«ng nhËn ®­îc hç trî tõ  Lång §Ìn Ng«i Sao !")
									else
											SetTask(483,   30*60 * 18)
											SetTask(488, 1)
											Msg2Player("B¹n nhËn ®­îc 15% May M¾n trong 30 phót !")
									end
							end
							
							if GetTask(172) < 30*60*18 then
								SetTask(172, 30*60*18)
								AddSkillEffect(460,1,GetTask(172))
								SetTask(141,1)
								Msg2Player("B¹n nhËn ®­îc Nh©n §«i Kinh NghiÖm trong 30 phót")
							else
								Msg2Player("B¹n ®ang trong thêi gian sö dông Tiªn Th¶o Lé, kh«ng nhËn ®­îc hç trî tõ Lång §Ìn Ng«i Sao ")
							end
						else
							Talk(1,"","B¹n thuéc ph¹m vi ngoµi b¶n ®å, kh«ng nhËn ®­îc hç trî tõ Lång §Ìn Ng«i Sao !")
						end
					end		
				end			
				PlayerIndex = idxp
			end
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end

end
