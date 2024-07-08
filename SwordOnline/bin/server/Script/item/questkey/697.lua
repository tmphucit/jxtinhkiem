Include("\\script\\global\\sourcejx49.lua")
Include("\\Script\\header\\taskid.lua");
Include("\\Script\\lib\\worldlibrary.lua");
Include("\\Script\\lib\\thuvien.lua");

idxitem = TUIQUA

function main(idx)
n = GetItemCount(idxitem)
if GetItemCount(idxitem) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(idxitem) == (n-1) then
		sx = random(1,100)
		if sx <= 25 then
				AddEventItem(THANRONG)
				Msg2Player("B¹n nhËn ®­îc 1 Th©n Rång")
		elseif sx > 26 and sx <= 50 then
				AddEventItem(XUONGRONG)
				Msg2Player("B¹n nhËn ®­îc 1 X­¬ng Rång")
		elseif sx > 50 and sx <= 75 then
				AddEventItem(DUOIRONG)
				Msg2Player("B¹n nhËn ®­îc 1 §u«i Rång")
		elseif sx > 75 and sx <= 94 then
				AddEventItem(MAICHEO)
				Msg2Player("B¹n nhËn ®­îc 1 <color=blue>M¸i ChÌo")
		else
				AddEventItem(DAURONG)
				Msg2Player("B¹n nhËn ®­îc 1 <color=pink>§Çu Rång")
		end
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end

end
