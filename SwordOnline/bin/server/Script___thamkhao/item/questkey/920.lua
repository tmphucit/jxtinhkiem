iditem = 920

function main(idx)
-- if GetTeam() == nil then
-- Talk(1,"","Ng��i kh�ng c� t� ��i, kh�ng th� s� d�ng v�t ph�m n�y")
-- return
-- end

-- if GetTeamSize() < 3 then
-- Talk(1,"","T� ��i nh� h�n 3 ng��i, kh�ng th� s� d�ng v�t ph�m n�y")
-- return
-- end

team = GetTeam()
name = GetName()
n = GetItemCount(iditem)
if GetItemCount(iditem) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(iditem) == (n-1) then
				idxplayer = PlayerIndx
					for p=1,GetCountPlayerMax() do
						PlayerIndex = p
						if GetTeam() == team then
									SetTask(488,  GetTask(488) + 30* 60 * 18)
									Msg2Player("B�n nh�n ���c t�ng 5% may m�n Qu� Hoa T�u th�m 30 ph�t ")
									Msg2Player("<color=yellow>L�u �: C� th� c�ng d�n may m�n v�i Thi�n S�n B�o L� ")
						end
					end
				PlayerIndx = idxplayer
			else
			Talk(1,"","Hack Ha Em")
			end
end
end

