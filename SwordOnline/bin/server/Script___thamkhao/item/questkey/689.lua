

function main(idx)
if (GetTask(198) < 15) then
	Talk(1,"","Ng­¬i ch­a häc thµnh th¹o 15 cuèn TÈy Tñy Kinh, kh«ng thÓ sö dông")	
	return
end
if (GetTask(198) >= gioihan()) then
	Talk(1,"","HiÖn t¹i ®· sö dông ®ñ 5 B¸nh TÐt TiÒm N¨ng, kh«ng thÓ sö dông thªm")	
	return
end

n = GetItemCount(689)
if GetItemCount(689) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(689) == (n-1) then
		SetTask(198,GetTask(198)+1)
		AddProp(5)
		Msg2Player("B¹n sö dông thµnh c«ng B¸nh TÐt TiÒm N¨ng nhËn ®­îc 5 ®iÓm tiÒm n¨ng !"); 
		KickOutSelf()
	else
		Talk(1,"","Hack Ha Em")
	end
end
end


function gioihan()
return 20
end