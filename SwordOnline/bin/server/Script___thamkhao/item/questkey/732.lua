ItemIdx = 732

function main(idx)
if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� tr�ng !")
return
end

n = GetItemCount(ItemIdx)
gh = gioihan()
if GetTask(963) >= gh then
Talk(1,"","B�n �� ��t gi�i h�n t�i �a: "..GetTask(963).."000 / "..gh.."000 kinh nghi�m s� ki�n")
return
end
	
if GetItemCount(ItemIdx) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(ItemIdx) == (n-1) then
				SetTask(963,GetTask(963)+300)
				AddOwnExp(300000)
				Msg2Player("B�n �� s� d�ng "..GetTask(963).."000 / "..gh.."000 kinh nghi�m")
			else
			Talk(1,"","Hack Ha Em")
			end
end
		
end

function gioihan()
if GetTask(962) == 0 then
return 1000000
elseif GetTask(962) == 1 then
return 2000000
elseif GetTask(962) == 2 then
return 3000000
else
return 0
end
end