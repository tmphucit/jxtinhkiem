

function main(idx)
idxitem = 325
n = GetItemCount(idxitem)
w,x,y = GetWorldPos()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
if floor(GetTask(833)/1000) ~= ngay then
	SetTask(833,ngay*1000)
	Msg2Player("Reset ng�y m�i, s� l��ng bao l� x� hi�n t�i l�: 0 qu� !")
end
soluonggioihan = 10


if GetTask(833) - (ngay*1000) >= soluonggioihan then
Talk(1,"","S� l��ng Bao L� X� Nh� s� d�ng ng�y h�m nay �� ��t t�i �a "..soluonggioihan.." bao !")
return
end

if thang == 2 then
Talk(1,"","V�t ph�m h�t h�n s� d�ng")
return
end
-- if floor(GetTask(339)/1000) == ngay and mod(GetTask(339),1000) == 1 then
-- Talk(1,"","Ng��i �� s� d�ng Bao L� X� ng�y h�m nay r�i")
-- return
-- end




if GetItemCount(idxitem) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(idxitem) == (n-1) then
					SetTask(339 , ngay*1000 + 1)
					Msg2Player("�� s� d�ng th�nh c�ng")
					SetTask(833,GetTask(833)+1)
					nexp = GetLevelExp()
					if GetLevel() < 120 then
						for i=1,25 do AddOwnExp(nexp/100) end
						Msg2Player("B�n nh�n ���c "..(nexp/100).." kinh nghi�m")
					elseif GetLevel() >= 120 and GetLevel() < 130 then
						for i=1,2 do AddOwnExp(nexp/200) end
						Msg2Player("B�n nh�n ���c "..(nexp/200).." kinh nghi�m")
					else
						for i=1,2 do AddOwnExp(nexp/10*3/100) end
						Msg2Player("B�n nh�n ���c "..(nexp/10*3).." kinh nghi�m")
					end
					
			else
			Talk(1,"","Hack Ha Em")
			end
end



end
