IDITEM = 315

function main(idx)
n = GetItemCount(IDITEM)

gh = gioihan()
if GetTask(985) >= gh then
Talk(1,"","B�n �� ��t gi�i h�n: "..gh.." kinh nghi�m, kh�ng th� s� d�ng th�m !")
return
end

if GetItemCount(IDITEM) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(IDITEM) == (n-1) then
				
				AddOwnExp(100000)
				SetTask(985, GetTask(985) + 100)
				Msg2Player("Gi�i h�n: <color=yellow>"..GetTask(985).."000 <color=red>/ "..gh.."000")
				
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