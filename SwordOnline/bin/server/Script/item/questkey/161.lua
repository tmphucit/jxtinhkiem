
function main(idx)
a = GetItemCount(161)
if GetItemCount(161) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(161) == (a - 1) then
						SetTask(99, GetTask(99) + 100)
						SetTask(101, GetTask(101) + 100)
						Msg2Player("Hi�n t�i �ang kh�a s� d�ng Thi�n S�n Tuy�t Li�n �� chu�n b� c�p nh�t.")
						Msg2Player("B�n nh�n l�i <color=yellow>100 v�ng")
					Talk(0,"")
				else
					Talk(1,"","hack ha em")
				end
end				
end