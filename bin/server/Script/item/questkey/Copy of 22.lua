

function main(idx)
ngay = tonumber(date("%d"))
if GetTask(115) == 15000 then
Talk(1,"","Nhan vat dua top khong duoc su dung !")
return
end

if floor(GetTask(189)/1000) ~= ngay then
	SetTask(189,ngay*1000)
	Msg2Player("Reset ng�y m�i, s� l��ng qu� hi�n t�i l�: 0 qu� !")
end
if GetTask(189) - (ngay*1000) >= 5 then
Talk(1,"","S� l��ng qu� ho�ng kim s� d�ng ng�y h�m nay �� ��t t�i �a 5 qu� !")
return
end

n = GetItemCount(22)
DelItemIdx(idx);
if GetItemCount(22) == (n-1) then
	exp = random(10,30)
	AddOwnExp(exp*1000000)
	Msg2Player("B�n nh�n ���c "..exp..".000.000 kinh nghi�m !")
	SetTask(189,GetTask(189)+1)
	Msg2Player("S� l��ng Qu� Ho�ng Kim hi�n t�i �� s� d�ng l�: "..(GetTask(189) - (ngay*1000)).." / 5 qu� ")
else
	Talk(1,"","hack ha em ")
end

--Msg2Player("Test task: "..GetTask(189).." ")
end
