

function main(idx)
if GetTeam() == nil then
Talk(1,"","Ng��i kh�ng c� t� ��i, kh�ng th� s� d�ng v�t ph�m n�y")
return
end

if GetTeamSize() < 8 then
Talk(1,"","T� ��i nh� h�n 8 ng��i, kh�ng th� s� d�ng v�t ph�m n�y")
return
end
team = GetTeam()
n = GetItemCount(650)
if GetItemCount(650) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(650) == (n-1) then
				idxplayer = PlayerIndx
					for p=1,GetCountPlayerMax() do
						PlayerIndex = p
						if GetTeam() == team then
							SetTask(471, GetTask(471) + 60 * 60 * 18)
							Msg2Player("B�n nh�n ���c t�ng 10% may m�n trong 1 gi� ")
						end
					end
				PlayerIndx = idxplayer
			else
			Talk(1,"","Hack Ha Em")
			end
end
end

