function main(idx)
sl = GetItemCount(191)
if GetLevel() >= 90 then
Talk(1,"","V�t ph�m ch� s� d�ng cho nh�n v�t d��i 90")
return
end
DelItemIdx(idx);

if GetItemCount(191) == sl -1 then
	nexp = 0
	if GetLevel() < 30 then
		nexp = 20
	elseif GetLevel() >= 30 and GetLevel() < 50 then	
		nexp = 10
	elseif GetLevel() >= 50 and GetLevel() < 70 then	
		nexp = 5
	elseif GetLevel() >= 71 and GetLevel() < 80 then	
		nexp = 2
	else
		nexp = 1
	end
	nexp2 = nexp * GetLevelExp() / 100
	AddOwnExp(nexp2)
	Msg2Player("B�n nh�n ���c "..nexp2.." kinh nghi�m")
else
Talk(1,"","hack ha em")
end

end