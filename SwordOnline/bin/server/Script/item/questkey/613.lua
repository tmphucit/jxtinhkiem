
iditem = 613

function main(idx)
n = GetItemCount(iditem)
			
gh = gioihan()
if GetTask(439) >= gh then
Talk(1,"","B¹n sö dông L¸ Cê ChiÕn Th¾ng ®¹t giíi h¹n: <color=yellow>"..GetTask(439).." / "..gh.."")
return
end			
			
			if GetItemCount(iditem) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(iditem) == (n-1) then
						
						AddOwnExp(200000)
						SetTask(439, GetTask(439) + 200)
						Msg2Player("Giíi h¹n: "..GetTask(439).."000 / "..gh.."000")
				
				else
				Talk(1,"","Hack Ha Em")
				end
			end
end


function gioihan()
if GetTask(490) == 1 then
return 1000000
elseif GetTask(490) == 2 then
return 1500000
else
return 500000
end
end