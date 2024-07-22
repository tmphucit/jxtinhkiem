
Include("\\script\\admin\\monphai.lua")

function main(idx)
if GetLevel() >= 80 then
	if mp() == 6 then
		if HaveMagic(378) >= 1 then
		Msg2Player("Kü n¨ng nµy ®· ®­îc lÜnh ngé")
	else
		DelItemIdx(idx);
		AddMagic(378,1)
		end
	else
	Msg2Player("M«n ph¸i yªu cÇu: Thuý Yªn M«n")
	end
else
Msg2Player("§¼ng cÊp yªu cÇu: 80")
end
end

