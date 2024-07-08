iditem = 919

function main(idx)
team = GetTeam()
name = GetName()
n = GetItemCount(iditem)
if GetItemCount(iditem) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(iditem) == (n-1) then
					SetTask(483,  GetTask(483) + 30* 60 * 18)
					Msg2Player("B¹n nhËn ®­îc t¨ng 5% may m¾n thªm 30 phót ")
					Msg2Player("<color=yellow>L­u ý: Cã thÓ céng dån may m¾n víi QuÕ Hoa Töu ")
			else
			Talk(1,"","Hack Ha Em")
			end
end
end

