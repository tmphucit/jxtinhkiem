

function main(idx)
idxitem = 326
n = GetItemCount(idxitem)
w,x,y = GetWorldPos()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))

if floor(GetTask(822)/1000) ~= ngay then
	SetTask(822,ngay*1000)
	Msg2Player("Reset ng�y m�i, s� l��ng bao l� x� hi�n t�i l�: 0 qu� !")
end
soluonggioihan = 10


if GetTask(822) - (ngay*1000) >= soluonggioihan then
Talk(1,"","S� l��ng Bao L� X� L�n s� d�ng ng�y h�m nay �� ��t t�i �a "..soluonggioihan.." bao !")
return
end

if thang == 2 then
Talk(1,"","V�t ph�m h�t h�n s� d�ng")
return
end
-- if floor(GetTask(339)/1000) == ngay and mod(GetTask(339),1000) == 5 then
-- Talk(1,"","Ng��i �� s� d�ng Bao L� X� ng�y h�m nay r�i")
-- return
-- end



if GetItemCount(idxitem) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(idxitem) == (n-1) then
					SetTask(822,GetTask(822)+1)
					Msg2Player("�� s� d�ng th�nh c�ng")
					
					nexp = GetLevelExp()
					if GetLevel() < 120 then
						for i=1,50 do AddOwnExp(nexp/100) end
						Msg2Player("B�n nh�n ���c "..(nexp/100).." kinh nghi�m")
					elseif GetLevel() >= 120 and GetLevel() < 130 then
						for i=1,4 do AddOwnExp(nexp/200) end
						Msg2Player("B�n nh�n ���c "..(nexp/200).." kinh nghi�m")
					else
						for i=1,4 do AddOwnExp(nexp/10*3/100) end
						Msg2Player("B�n nh�n ���c "..(nexp/10*3).." kinh nghi�m")
					end
					sxhk = random(1,40)
					if sxhk == 40 then
							ngua = random(1,20)
							if ngua == 1 then
								idxitem = AddEventItem(random(39,43))
								Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng Bao L� X� (L�n) may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).."")
							elseif ngua == 2 then
								idxitem = AddItem(0,10,5,5,0,0,0)
								Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng Bao L� X� (L�n) may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).."")
							elseif ngua == 3 then		
								idxitem = AddEventItem(random(61,66))
								Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng Bao L� X� (L�n) may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).."")		
							elseif ngua == 5 then
								idxitem = AddEventItem(274)
								Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng Bao L� X� (L�n) may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).."")		
							elseif ngua == 6 then
								idxitem = AddEventItem(654)
								Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng Bao L� X� (L�n) may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).."")		
							else			
								idxitem = AddEventItem(415)
								Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng Bao L� X� (L�n) may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).."")		
							end
					end
			else
			Talk(1,"","Hack Ha Em")
			end
end
end
