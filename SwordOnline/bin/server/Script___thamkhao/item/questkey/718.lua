
function main(idx)

w,x,y = GetWorldPos()
ngay = tonumber(date("%d"))

if floor(GetTask(189)/1000) ~= ngay then
	SetTask(189,ngay*1000)
	Msg2Player("Reset ng�y m�i, s� l��ng qu� hi�n t�i l�: 0 qu� !")
end
soluonggioihan = 5


if GetTask(189) - (ngay*1000) >= soluonggioihan then
Talk(1,"","S� l��ng qu� Huy Ho�ng s� d�ng ng�y h�m nay �� ��t t�i �a "..soluonggioihan.." qu� !")
return
end
n = GetItemCount(718)
DelItemIdx(idx);
if GetItemCount(718) == (n-1) then
		AddOwnExp(4000000)
		Msg2Player("B�n nh�n ���c 4.000.000 kinh nghi�m !")
		SetTask(189,GetTask(189)+1)
		Msg2Player("S� l��ng Qu� Huy Ho�ng hi�n t�i �� s� d�ng l�: "..(GetTask(189) - (ngay*1000)).." / "..soluonggioihan.." qu� ")
else
	Talk(1,"","hack ha em ")
end

end
