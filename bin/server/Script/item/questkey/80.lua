
Include("\\script\\monphai.lua")

function main(idx)
if GetLevel() >= 80 then
	if mp() == 2 then
		if HaveMagic(342) >= 1 then
		Msg2Player("Kü n¨ng nµy ®· ®­îc lÜnh ngé")
	else
		DelItemIdx(idx);
		AddMagic(342,1)
		end
	else
	Msg2Player("M«n ph¸i yªu cÇu: Thiªn V­¬ng Bang")
	end
else
Msg2Player("§¼ng cÊp yªu cÇu: 80")
end
end

