

function main(idx)
if GetAccount() == "" and GetItemCount(17) == 0 then
	return
end
if GetTask(483) > 0 and GetTask(488) == 10 then
Talk(1,"","B�n �ang trong th�i gian s� d�ng Qu� Hoa T�u, kh�ng th� s� d�ng th�m Thi�n S�n B�o L� ")
return
end

if GetTeam() == nil then
Talk(1,"","Ng��i kh�ng c� t� ��i, kh�ng th� s� d�ng v�t ph�m n�y")
return
end

if GetTeamSize() < 3 then
Talk(1,"","T� ��i nh� h�n 3 ng��i, kh�ng th� s� d�ng v�t ph�m n�y")
return
end
team = GetTeam()
name = GetName()
n = GetItemCount(648)
if GetItemCount(648) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(648) == (n-1) then
				idxplayer = PlayerIndx
					for p=1,GetCountPlayerMax() do
						PlayerIndex = p
						if GetTeam() == team then
							if GetTask(483) == 0 then
								if GetAccount() == "" then
									SetTask(483,  60* 60 * 18)
									SetTask(488,32)
									DelItem(17)
									AddEventItem(648)
								else

									if GetTask(483) > 0  and (GetTask(488) == 5) then
										SetTask(483,  GetTask(483) + 30* 60 * 18)
										Msg2Player("B�n nh�n ���c t�ng 5% may m�n th�m 30 ph�t ")
									else
											if GetTask(488) == 10 then
												Msg2Player("B�n b� m�t hi�u qu� Qu� Hoa T�u do s� d�ng Thi�n S�n B�o L� ")	
											end
											SetTask(483,  30* 60 * 18)
											SetTask(488, 5)
											Msg2Player("B�n nh�n ���c t�ng 5% may m�n trong 30 ph�t ")
									end

								end
									Msg2Player("B�n nh�n ���c t�ng 5% may m�n trong 30 ph�t ")
							else
								Msg2Player("Ng��i �ang trong th�i gian s� d�ng May M�n, kh�ng th� nh�n th�m may m�n c�a "..name.."")
							end
						end
					end
				PlayerIndx = idxplayer
			else
			Talk(1,"","Hack Ha Em")
			end
end
end

