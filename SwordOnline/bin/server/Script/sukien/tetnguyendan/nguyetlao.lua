

function main()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))

if thang == 1 and ngay < 26 then
Talk(1,"","Th�i gian nh�n ph�n th��ng: 26/01 - 05/02 !")
return
end

if GetLevel() < 100 then
Talk(1,"","��t ��ng c�p 100 r�i quay l�i g�p ta, s� c� 1 ph�n qu� nh� cho qu� b�ng h�u !")
return
end

SayNew("<color=green>Nguy�t L�o<color>: Ch�c m�ng n�m m�i, ��y l� ph�n qu� c�a ng��i",2,
"�a t�, ta ��n nh�n qu� n�m m�i /nhanthuong",
"Tho�t./no")
end
mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}
function nhanthuong()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
gio = tonumber(date("%H"))
thoigian = tonumber(date("%H%M%d%m"))
if GetLevel() >= 100 and GetTask(987) == 0 then
	SetTask(987, thoigian)
	
	ngay = ngay + 3
	if ngay > mangthang[thang] then
				ngay = ngay - mangthang[thang]
				
				if (thang == 12) then
					thang = 0
					nam = nam + 1
				end
				thang = thang + 1	
			end	
		
			
			Msg2Player("Ch�c m�ng b�n nh�n ph�n qu� n�m m�i: ")
			idxitem = AddEventItem(696)
			SetBindItem(idxitem , 1)
			SetHSD(idxitem, 2000+nam , thang, ngay, gio )
			Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ng�y]")
	
			idxitem = AddEventItem(911)
			SetBindItem(idxitem , 1)
			Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).."")
else
	Talk(1,"","Ng��i �� nh�n ph�n th��ng n�y r�i, kh�ng th� nh�n th�m !")
end
end

function no()
end