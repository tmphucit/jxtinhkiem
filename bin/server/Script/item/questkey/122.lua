Include("\\script\\source.lua")

function main(idx)
sl = GetItemCount(122)
DelItemIdx(idx);
if GetItemCount(122) == (sl-1) then
	sx = random(1,5)
	if sx == 1 then	
		AddEventItem(140)
		Msg2Player("B¹n nhËn ®­îc 1 Ba L« Con Cãc")
	elseif sx == 2 then
		AddEventItem(136)
		Msg2Player("B¹n nhËn ®­îc 1 ChiÕc Mò ChiÕn SÜ ")
	elseif sx == 3 then
		AddEventItem(137)
		Msg2Player("B¹n nhËn ®­îc 1 §«i Giµy Bé §éi")
	elseif sx == 4 then
		AddEventItem(138)
		Msg2Player("B¹n nhËn ®­îc 1 TÊm ¸o ChiÕn SÜ ")
	else
		AddEventItem(139)
		Msg2Player("B¹n nhËn ®­îc 1 ChiÕc Vâng Tr­êng S¬n")
	end
	Talk(0,"")
else
Talk(1,"","Hack ha em ")
end
end

