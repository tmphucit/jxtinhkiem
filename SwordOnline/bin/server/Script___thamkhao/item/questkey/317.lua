IDITEM = 317

function main(idx)
n = GetItemCount(IDITEM)

gh = gioihan()
if GetTask(985) >= gh then
Talk(1,"","B¹n ®· ®¹t giíi h¹n: "..gh.." kinh nghiÖm, kh«ng thÓ sö dông thªm !")
return
end

if GetItemCount(IDITEM) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(IDITEM) == (n-1) then
				
				AddOwnExp(100000)
				SetTask(985, GetTask(985) + 100)
				Msg2Player("Giíi h¹n: <color=yellow>"..GetTask(985).."000 <color=red>/ "..gh.."000")
				
			else
			Talk(1,"","Hack Ha Em")
			end
end
end


function gioihan()
if GetTask(986) == 0 then
return 1000000 
elseif GetTask(986) == 1 then
return 2000000 
elseif GetTask(986) == 2 then
return 3000000 
else
return 1000000 
end
end