function main(idx)
SetPKState(1)
if CheckFreeBoxItem(4,22,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng, vui lßng kiÓm tra l¹i !")
return
end

if GetCurCamp() == 0 then
Talk(1,"","Ch÷ tr¾ng kh«ng ®­îc nhÆt nhĞ b¹n")
return
end

h,m,s = GetTimeNew()
if m >= 30 then
DelNpc(idx)
Msg2Player("Qu¶ ®· chİn qu¶ l©u, hiÖn t¹i kh«ng thÓ sö dông ®­îc n÷a !")
return
end

		if GetTask(193) == 0 then 
			SetTask(193,11)
			Msg2Player(""..GetTask(193))
			elseif GetTask(193) >= 2 then
			A = GetTask(193) - 1
			SetTask(193,A)
			Msg2Player("Thêi gian kÕt qu¶ cßn l¹i lµ:"..GetTask(193).." gi©y !")	
			elseif GetTask(193) == 1 then 
			AddEventItem(22)
			DelNpc(idx)
			Msg2Player("<color=yellow>Thu thËp thµnh c«ng, b¹n nhËn ®­îc 1 Qu¶ Huy Hoµng ")
			SetTask(193,0)
		end
	end
