

function main(idx)
n = GetItemCount(1)
if (GetTask(198) < gioihan()) then
if GetItemCount(1) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(1) == (n-1) then
	SetTask(198,GetTask(198)+1)
	AddProp(5)
	Msg2Player("B¹n nhËn ®­îc <color=yellow>5 ®iÓm tiÒm n¨ng !"); 
	--KickOutSelf()
	else
		Talk(1,"","Hack Ha Em")
	end
end
else
Talk(1,"","Ng­¬i ®· dïng <color=yellow>"..gioihan().." cuèn TÈy Tuû Kinh<color> , kh«ng thÓ sö dông thªm .")
end
end

function gioihan()
return 5 + GetTask(139)*5
end
