
Include("\\script\\monphai.lua")

function main(idx)
if GetLevel() >= 80 then
	if mp() == 7 then
		if HaveMagic(362) >= 1 then
		Msg2Player("Kü n¨ng nµy ®· ®­îc lÜnh ngé")
	else
		DelItemIdx(idx);
		AddMagic(362,1)
		end
	else
	Msg2Player("M«n ph¸i yªu cÇu: C¸i Bang")
	end
else
Msg2Player("§¼ng cÊp yªu cÇu: 80")
end
end

