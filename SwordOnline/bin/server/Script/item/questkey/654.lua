

function main(idx)

if GetTask(483) > 0 then
Talk(1,"","B�n �ang trong th�i gian s� d�ng May M�n, kh�ng th� s� d�ng th�m !")
return
end 

if GetTask(488) == 1 then
Talk(1,"","B�n �ang trong th�i gian s� d�ng Thi�n S�n B�o L�, kh�ng th� s� d�ng th�m ! ")
return
end

name = GetName()
n = GetItemCount(654)
if GetItemCount(654) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(654) == (n-1) then

							if GetTask(483) == 0 then
		
										SetTask(483, 10*60*18)
										SetTask(488, 2)
										
					end
			else
			Talk(1,"","Hack Ha Em")
			end
end
end

