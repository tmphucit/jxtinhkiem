

function main(idx)
n = GetItemCount(615)
			
gh = gioihan()
if GetTask(439) >= gh then
Talk(1,"","B¹n sö dông L¸ Cê ChiÕn Th¾ng ®¹t giíi h¹n: <color=yellow>"..GetTask(439).." / "..gh.."")
return
end			
			
			if GetItemCount(615) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(615) == (n-1) then
						
						AddOwnExp(10000000)
						if GetLevel() >= 105 then
								SetTask(439, GetTask(439) + 10)
								if GetTask(490) >= 10 then
										sxitem = random(1,150)
										if sxitem == 50 then
												sx2 = random(1,15)
												if sx2 == 1 then
													idxitem = AddEventItem(random(35,43))
													Msg2SubWorld("Chóc mõng "..GetName().." sö dông L¸ Cê ChiÕn Th¾ng nhËn ®­îc 1 <color=yellow>"..GetNameItemBox(idxitem).."")
												elseif sx2 == 2 then
													idxitem = AddEventItem(random(61,66))
													Msg2SubWorld("Chóc mõng "..GetName().." sö dông L¸ Cê ChiÕn Th¾ng nhËn ®­îc 1 <color=yellow>"..GetNameItemBox(idxitem).."")
												elseif sx2 == 3 then
													idxitem = AddEventItem(411)
													Msg2SubWorld("Chóc mõng "..GetName().." sö dông L¸ Cê ChiÕn Th¾ng nhËn ®­îc 1 <color=yellow>"..GetNameItemBox(idxitem).."")
												elseif sx2 == 4 then
													idxitem = AddEventItem(129)
													Msg2SubWorld("Chóc mõng "..GetName().." sö dông L¸ Cê ChiÕn Th¾ng nhËn ®­îc 1 <color=yellow>"..GetNameItemBox(idxitem).."")
												elseif sx2 == 5 then
													idxitem = AddEventItem(333)
													Msg2SubWorld("Chóc mõng "..GetName().." sö dông L¸ Cê ChiÕn Th¾ng nhËn ®­îc 1 <color=yellow>"..GetNameItemBox(idxitem).."")
												elseif sx2 == 6 then
													idxitem = AddEventItem(410)
													Msg2SubWorld("Chóc mõng "..GetName().." sö dông L¸ Cê ChiÕn Th¾ng nhËn ®­îc 1 <color=yellow>"..GetNameItemBox(idxitem).."")	
												elseif sx2 == 7 then
													idxitem = AddEventItem(random(414,415))
													Msg2SubWorld("Chóc mõng "..GetName().." sö dông L¸ Cê ChiÕn Th¾ng nhËn ®­îc 1 <color=yellow>"..GetNameItemBox(idxitem).."")
												else
													idxitem = AddEventItem(random(28,31))
													Msg2SubWorld("Chóc mõng "..GetName().." sö dông L¸ Cê ChiÕn Th¾ng nhËn ®­îc 1 <color=yellow>"..GetNameItemBox(idxitem).."")	
												end
											
										end
								end								
						end
						Msg2Player("Giíi h¹n: "..GetTask(439).." / "..gh.."")
				
				else
				Talk(1,"","Hack Ha Em")
				end
			end
end


function gioihan()
if GetTask(490) < 10 then
return 4000
elseif GetTask(490) == 10 then
return 8000
elseif GetTask(490) == 20 then
return 13000
elseif GetTask(490) == 30 then
return 20000
else
return 4000
end
end