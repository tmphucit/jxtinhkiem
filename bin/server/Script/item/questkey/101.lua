
Include("\\script\\monphai.lua")

function main(idx)
if GetLevel() >= 80 then
	if mp() == 10 then
		if HaveMagic(385) >= 1 then
		Msg2Player("Kü n¨ng nµy ®· ®­îc lÜnh ngé")
	else
		DelItemIdx(idx);
		AddMagic(385,1)
		end
	else
	Msg2Player("M«n ph¸i yªu cÇu: C«n L«n Ph¸i")
	end
else
Msg2Player("§¼ng cÊp yªu cÇu: 80")
end
end

