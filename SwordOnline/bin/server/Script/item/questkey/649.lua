

function main(idx)
if GetTask(483) > 0 and GetTask(488) == 5 then
Talk(1,"","B�n �ang trong th�i gian s� d�ng Thi�n S�n B�o L�, kh�ng th� s� d�ng th�m Qu� Hoa T�u ")
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
n = GetItemCount(649)
if GetItemCount(649) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(649) == (n-1) then
				idxplayer = PlayerIndx
					for p=1,GetCountPlayerMax() do
						PlayerIndex = p
						if GetTeam() == team then
							if GetTask(483) > 0  and (GetTask(488) == 10) then
									SetTask(483,  GetTask(483) + 30* 60 * 18)
									Msg2Player("B�n nh�n ���c t�ng 10% may m�n th�m 30 ph�t ")
							else
											if GetTask(488) == 5 then
												Msg2Player("B�n b� m�t hi�u qu� Thi�n S�n B�o L� do s� d�ng Qu� Hoa T�u ")	
											end
									SetTask(483,  30* 60 * 18)
									SetTask(488, 10)
									Msg2Player("B�n nh�n ���c t�ng 10% may m�n trong 30 ph�t ")
							end
						end
					end
				PlayerIndx = idxplayer
			else
			Talk(1,"","Hack Ha Em")
			end
end
end

