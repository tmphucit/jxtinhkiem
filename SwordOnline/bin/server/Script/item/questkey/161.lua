
function main(idx)
a = GetItemCount(161)
if GetItemCount(161) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(161) == (a - 1) then
						SetTask(99, GetTask(99) + 100)
						SetTask(101, GetTask(101) + 100)
						Msg2Player("HiÖn t¹i ®ang khãa sö dông Thiªn S¬n TuyÕt Liªn ®Ó chuÈn bŞ cËp nhËt.")
						Msg2Player("B¹n nhËn l¹i <color=yellow>100 vµng")
					Talk(0,"")
				else
					Talk(1,"","hack ha em")
				end
end				
end