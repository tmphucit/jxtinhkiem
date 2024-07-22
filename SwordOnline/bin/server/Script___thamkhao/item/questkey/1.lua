

function main(idx)
n = GetItemCount(1)
if (GetTask(198) < gioihan()) then
if GetItemCount(1) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(1) == (n-1) then
	SetTask(198,GetTask(198)+1)
	AddProp(5)
	Msg2Player("B¹n sö dông thµnh c«ng TÈy Tuû Kinh nhËn ®­îc 5 ®iÓm tiÒm n¨ng !"); 
			Msg2Player("<color=yellow>L­u ı: §iÓm nhËn ®­îc sÏ hiÓn thŞ khi ®¨ng nhËp l¹i"); 
	else
		Talk(1,"","Hack Ha Em")
	end
end
else
Talk(1,"","Ng­¬i ®· dïng <color=red> "..gioihan().." cuèn TÈy Tuû Kinh<color>, kh«ng thÓ sö dông thªm")
end
end

function gioihan()
return 15 + GetTask(139)*5
end