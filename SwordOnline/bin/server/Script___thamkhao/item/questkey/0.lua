

function main(idx)
n = GetItemCount(0)
			if GetTask(199) < gioihan() then
if GetItemCount(0) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(0) == (n-1) then
			SetTask(199,GetTask(199)+1)
			AddMagicPoint(1)
			Msg2Player("B¹n sö dông thµnh c«ng Vâ L©m MËt TŞch. nhËn ®­îc 1 ®iÓm kü n¨ng !"); 
			Msg2Player("<color=yellow>L­u ı: §iÓm nhËn ®­îc sÏ hiÓn thŞ khi ®¨ng nhËp l¹i"); 
			else
			Talk(1,"","Hack Ha Em")
			end
end
		
			else
			Talk(1,"","Ng­¬i ®· dïng <color=red> "..gioihan().." cuèn Vâ L©m MËt TŞch<color>, kh«ng thÓ dïng thªm")
			end
end

function gioihan()
return 10 + GetTask(139)*5
end