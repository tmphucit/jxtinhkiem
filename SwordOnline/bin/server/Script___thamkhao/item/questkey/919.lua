iditem = 919

function main(idx)
team = GetTeam()
name = GetName()
n = GetItemCount(iditem)
if GetItemCount(iditem) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(iditem) == (n-1) then
					SetTask(483,  GetTask(483) + 30* 60 * 18)
					Msg2Player("B�n nh�n ���c t�ng 5% may m�n th�m 30 ph�t ")
					Msg2Player("<color=yellow>L�u �: C� th� c�ng d�n may m�n v�i Qu� Hoa T�u ")
			else
			Talk(1,"","Hack Ha Em")
			end
end
end

