
function main(idx)

w,x,y = GetWorldPos()
ngay = tonumber(date("%d"))
if GetLevel() < 90 then
Talk(1,"","Lo�i qu� n�y ch� s� d�ng cho nh�n v�t 90 tr� l�n !")
return
end
if floor(GetTask(189)/1000) ~= ngay then
	SetTask(189,ngay*1000)
	Msg2Player("Reset ng�y m�i, s� l��ng qu� hi�n t�i l�: 0 qu� !")
end
soluonggioihan = 1


if GetTask(189) - (ngay*1000) >= soluonggioihan then
Talk(1,"","S� l��ng qu� Ho�ng Kim s� d�ng ng�y h�m nay �� ��t t�i �a "..soluonggioihan.." qu� !")
return
end
n = GetItemCount(630)
DelItemIdx(idx);
if GetItemCount(630) == (n-1) then
	for i=1,10 do AddOwnExp(500000) end
	Msg2Player("B�n nh�n ���c 5.000.000 kinh nghi�m !")
	SetTask(189,GetTask(189)+1)
	Msg2Player("S� l��ng Qu� Ho�ng Kim hi�n t�i �� s� d�ng l�: "..(GetTask(189) - (ngay*1000)).." / "..soluonggioihan.." qu� ")
else
	Talk(1,"","hack ha em ")
end

end
