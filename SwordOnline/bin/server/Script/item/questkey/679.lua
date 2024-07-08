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
				Msg2Player("B¹n nhËn ®­îc 1 Hoa tuyÕt")
		elseif sx > 26 and sx <= 50 then
				AddEventItem(XUONGRONG)
				Msg2Player("B¹n nhËn ®­îc 1 Cµnh th«ng")
		elseif sx > 50 and sx <= 75 then
				AddEventItem(DUOIRONG)
				Msg2Player("B¹n nhËn ®­îc 1 Nãn gi¸ng sinh")
		elseif sx > 75 and sx <= 90 then
				AddEventItem(MAICHEO)
				Msg2Player("B¹n nhËn ®­îc 1 <color=blue>Kh¨n choµng (xanh)")
		else
				AddEventItem(DAURONG)
				Msg2Player("B¹n nhËn ®­îc 1 <color=pink>Kh¨n choµng (®á)")
		end
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end

end
