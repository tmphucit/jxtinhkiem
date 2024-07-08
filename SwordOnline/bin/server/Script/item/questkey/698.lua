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
				Msg2Player("Bπn nhÀn Æ≠Óc 1 L∏ B∏nh")
		elseif sx > 26 and sx <= 50 then
				AddEventItem(XUONGRONG)
				Msg2Player("Bπn nhÀn Æ≠Óc 1 Gπo N’p")
		elseif sx > 50 and sx <= 75 then
				AddEventItem(DUOIRONG)
				Msg2Player("Bπn nhÀn Æ≠Óc 1 ßÀu Xanh")
		elseif sx > 75 and sx <= 94 then
				AddEventItem(MAICHEO)
				Msg2Player("Bπn nhÀn Æ≠Óc 1 <color=blue>Thﬁt Heo")
		else
				AddEventItem(DAURONG)
				Msg2Player("Bπn nhÀn Æ≠Óc 1 <color=pink>Thanh Tre")
		end
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end

end
