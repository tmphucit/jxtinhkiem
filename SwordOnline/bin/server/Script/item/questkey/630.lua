function main(idx)

w,x,y = GetWorldPos()
ngay = tonumber(date("%d"))
if GetLevel() < 100 then
Talk(1,"","Lo�i qu� n�y ch� s� d�ng cho nh�n v�t 100 tr� l�n !")
return
end
if floor(GetTask(188)/1000) ~= ngay then
	SetTask(188,ngay*1000)
	Msg2Player("Reset ng�y m�i, s� l��ng qu� hi�n t�i l�: 0 qu� !")
end
soluonggioihan = 1


if GetTask(188) - (ngay*1000) >= soluonggioihan then
Talk(1,"","S� l��ng qu� Ho�ng Kim s� d�ng ng�y h�m nay �� ��t t�i �a "..soluonggioihan.." qu� !")
return
end
n = GetItemCount(630)
DelItemIdx(idx);
if GetItemCount(630) == (n-1) then
	for i=1,30 do AddOwnExp(1000000) end
	Msg2Player("B�n nh�n ���c 30.000.000 kinh nghi�m !")
	SetTask(612,GetTask(612)+10)
	Msg2Player("B�n nh�n ���c 10 �i�m s� ki�n")
	SetTask(188,GetTask(188)+1)
	Msg2Player("S� l��ng Qu� Ho�ng Kim hi�n t�i �� s� d�ng l�: "..(GetTask(188) - (ngay*1000)).." / "..soluonggioihan.." qu� ")
else
	Talk(1,"","hack ha em ")
end

end
