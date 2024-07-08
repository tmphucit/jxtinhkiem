
Include("\\script\\admin\\monphai.lua")

function main(idx)
if GetLevel() >= 80 then
	if mp() == 1 then
		if HaveMagic(350) >=1 then
		Msg2Player("Kü n¨ng nµy ®· ®­îc lÜnh ngé")
		else
		DelItemIdx(idx);
		AddMagic(350,1)
		end
	else
	Msg2Player("M«n ph¸i yªu cÇu: ThiÕu L©m")
	end
else
Msg2Player("§¼ng cÊp yªu cÇu: 80")
end
end

