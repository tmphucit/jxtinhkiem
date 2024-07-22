

function main(idx)
if (GetTask(199) < 10) then
	Talk(1,"","Ng­¬i ch­a häc thµnh th¹o 10 cuèn Vâ L©m MËt TÞch, kh«ng thÓ sö dông")	
	return
end
if (GetTask(199) >= gioihan()) then
	Talk(1,"","HiÖn t¹i ®· sö dông ®ñ 5 B¸nh TÐt Kü N¨ng, kh«ng thÓ sö dông thªm")	
	return
end

n = GetItemCount(690)
if GetItemCount(690) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(690) == (n-1) then
		SetTask(199,GetTask(199)+1)
		AddMagicPoint(1)
		Msg2Player("B¹n sö dông thµnh c«ng B¸nh TÐt Kü N¨ng nhËn ®­îc 5 ®iÓm tiÒm n¨ng !"); 
		KickOutSelf()
	else
		Talk(1,"","Hack Ha Em")
	end
end
end


function gioihan()
return 15
end