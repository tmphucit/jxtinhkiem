
function main(idx)

w,x,y = GetWorldPos()
ngay = tonumber(date("%d"))
if floor(GetTask(189)/1000) ~= ngay then
	SetTask(189,ngay*1000)
	Msg2Player("Reset ng�y m�i, s� l��ng qu� hi�n t�i l�: 0 qu� !")
end
soluonggioihan = 5


if GetTask(189) - (ngay*1000) >= soluonggioihan then
Talk(1,"","S� l��ng qu� Huy Ho�ng Kim s� d�ng ng�y h�m nay �� ��t t�i �a "..soluonggioihan.." qu� !")
return
end
if (GetLevel() < 100)  then
	Talk(1,"","Ng��i ch�i v��t c�p 100 kh�ng th� s� d�ng  ")
	return 1
	end
n = GetItemCount(265)
DelItemIdx(idx);
if GetItemCount(265) == (n-1) then
	-- if GetLevel() < 100 then
		for i=1,50 do 
			AddOwnExp(200000)
		end
		SetTask(612,GetTask(612)+4)
		Msg2Player("B�n nh�n ���c 4 �i�m s� ki�n")
		Msg2Player("B�n nh�n ���c 10.000.000 kinh nghi�m !")
		SetTask(189,GetTask(189)+1)
		Msg2Player("S� l��ng Huy Ho�ng Kim hi�n t�i �� s� d�ng l�: "..(GetTask(189) - (ngay*1000)).." / "..soluonggioihan.." qu� ")

else
	Talk(1,"","hack ha em ")
end

end