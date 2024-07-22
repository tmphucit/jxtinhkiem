
Include("\\script\\admin\\monphai.lua")

function main(idx)
if GetLevel() >= 80 then
	if mp() == 5 then
		if HaveMagic(291) >= 1 then
	Msg2Player("Kü n¨ng nµy ®· ®­îc lÜnh ngé")
	else
		DelItemIdx(idx);
		AddMagic(291,0)
		end
	else
Msg2Player("M«n ph¸i yªu cÇu: Nga Mi Ph¸i")
	end
else
Msg2Player("Level Yeu Cau: 80")
end
end

