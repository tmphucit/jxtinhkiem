idxitem = 325

function main(idx)
n = GetItemCount(idxitem)

if GetItemCount(idxitem) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(idxitem) == (n-1) then
					AddOwnExp(5000000)
					Msg2Player("Chóc mõng b¹n nhËn ®­îc 5.000.000 kinh nghiÖm")
			else
			Talk(1,"","Hack Ha Em")
			end
end



end
