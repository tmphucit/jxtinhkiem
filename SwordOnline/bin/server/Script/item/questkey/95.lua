
Include("\\script\\admin\\monphai.lua")

function main(idx)
if GetLevel() >= 80 then
	if mp() == 8 then
		if HaveMagic(367) >= 1 then
		Msg2Player("Kü n¨ng nµy ®· ®­îc lÜnh ngé")
	else
		DelItemIdx(idx);
		AddMagic(367,1)
		end
	elseif (mp() == 0) then
	SetFaction("Thien Nhan Giao")
	else
	Msg2Player("M«n ph¸i yªu cÇu: Thiªn NhÉn Gi¸o")
	end
else
Msg2Player("§¼ng cÊp yªu cÇu: 80")
end
end

