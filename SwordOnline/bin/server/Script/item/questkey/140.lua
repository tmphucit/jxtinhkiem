idxitem = 140

function main(idx)
if GetFightState() == 0 then
Talk(1,"","V�t ph�m kh�ng th� s� d�ng trong tr�ng th�i Phi Chi�n ��u !")
return
end
if GetTask(483) > 0 then
Talk(1,"","B�n �ang trong th�i gian s� d�ng May M�n, kh�ng th� s� d�ng th�m !")
return
end 

if GetTask(488) == 1 then
Talk(1,"","B�n �ang trong th�i gian s� d�ng Thi�n S�n B�o L�, kh�ng th� s� d�ng th�m ! ")
return
end
if GetTask(488) == 2 then
Talk(1,"","B�n �ang trong th�i gian s� d�ng Qu� Hoa T�u, kh�ng th� s� d�ng th�m ! ")
return
end

team = GetTeam()
w,x,y = GetWorldPos()


n = GetItemCount(idxitem)
if GetItemCount(idxitem) >= 1 then
	DelItemIdx(idx);
	AddPropObj(452)
	if GetItemCount(idxitem) == (n-1) then
			if team == nil then
							if GetTask(483) == 0 then
											SetTask(483,   30*60 * 18)
											SetTask(488, 1)
											Msg2Player("B�n nh�n ���c 15% May M�n trong 30 ph�t !")
							else
									if GetTask(488) == 2 then
										Msg2Player("B�n �ang trong th�i gian s� d�ng Qu� Hoa T�u, kh�ng nh�n ���c h� tr� t�  L�ng ��n Ng�i Sao !")
									else
											SetTask(483,   30*60 * 18)
											SetTask(488, 1)
											Msg2Player("B�n nh�n ���c 15% May M�n trong 30 ph�t !")
									end
							end
							
							if GetTask(172) < 30*60*18 then
								SetTask(172, 30*60*18)
								AddSkillEffect(460,1,GetTask(172))
								SetTask(141,1)
								Msg2Player("B�n nh�n ���c Nh�n ��i Kinh Nghi�m trong 30 ph�t")
							else
								Msg2Player("B�n �ang trong th�i gian s� d�ng Ti�n Th�o L�, kh�ng nh�n ���c h� tr� t� L�ng ��n Ng�i Sao ")
							end
			else
				idxp = PlayerIndex
				for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				w1,x1,y1 = GetWorldPos()
					if GetTeam() == team then
						if w == w1 then
							if GetTask(483) == 0 then
											SetTask(483,   30*60 * 18)
											SetTask(488, 1)
											Msg2Player("B�n nh�n ���c 15% May M�n trong 30 ph�t !")
							else
									if GetTask(488) == 2 then
										Msg2Player("B�n �ang trong th�i gian s� d�ng Qu� Hoa T�u, kh�ng nh�n ���c h� tr� t�  L�ng ��n Ng�i Sao !")
									else
											SetTask(483,   30*60 * 18)
											SetTask(488, 1)
											Msg2Player("B�n nh�n ���c 15% May M�n trong 30 ph�t !")
									end
							end
							
							if GetTask(172) < 30*60*18 then
								SetTask(172, 30*60*18)
								AddSkillEffect(460,1,GetTask(172))
								SetTask(141,1)
								Msg2Player("B�n nh�n ���c Nh�n ��i Kinh Nghi�m trong 30 ph�t")
							else
								Msg2Player("B�n �ang trong th�i gian s� d�ng Ti�n Th�o L�, kh�ng nh�n ���c h� tr� t� L�ng ��n Ng�i Sao ")
							end
						else
							Talk(1,"","B�n thu�c ph�m vi ngo�i b�n ��, kh�ng nh�n ���c h� tr� t� L�ng ��n Ng�i Sao !")
						end
					end		
				end			
				PlayerIndex = idxp
			end
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end

end
