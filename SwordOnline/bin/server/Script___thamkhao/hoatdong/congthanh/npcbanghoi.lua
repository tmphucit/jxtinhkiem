
function main()

if GetTongNameID() == 0 then
	SayNew("<color=green>Qu�n L� Bang H�i<color>: Ta chuy�n qu�n l� nh�ng v�n �� v� Bang h�i ",3,
	"T�o Bang h�i/taobang",
	"T�m hi�u v� Bang h�i/timhieu",
	"Tho�t./no")
else	SayNew("<color=green>Qu�n L� Bang H�i<color>: Ta chuy�n qu�n l� nh�ng v�n �� v� Bang h�i ",2,
	"T�m hi�u v� Bang h�i/timhieu",
	--"Nh�n ph�n th��ng Bang H�i Tranh Hung /banghoitranhhung",
	"Tho�t./no")
end
end

DanhSachBang = {"Th�ch�","��T�nh��","�T�nS�t"}
function banghoitranhhung()
ngay = tonumber(date("%d"))
if ngay ~= 22 and ngay ~= 23 and ngay ~= 24 then
Talk(1,"","Ph�n th��ng �� h�t h�n !")
return
end
if GetTask(329) == 8888 then
Talk(1,"","B�n �� nh�n ph�n th��ng Bang H�i Tranh H�ng, kh�ng th� nh�n th�m")
return
end
if GetTongName() ~= DanhSachBang[1] and GetTongName() ~= DanhSachBang[2] and GetTongName() ~= DanhSachBang[3] then
Talk(1,"","Ch� th�nh vi�n bang [Th�ch�], [�T�nS�t], [��T�nh��] m�i c� th� nh�n")
return
end
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end
if mod(GetTask(8),7000) < 22 then
		SetTask(329,GetTask(329) + 8888)
		if GetTask(329) == 8888 then
			idxitem = AddEventItem(120)
			SetBindItem(idxitem , 1)
			Msg2Tong("<color=yellow>"..GetName().." �� nh�n 1 Ti�n Th�o L� 6 Gi� !")
			if GetTongFigure() == 3 then
				for p=1,10 do AddEventItem(251) end
				Msg2Tong("<color=green>"..GetName().." �� nh�n 10 Phi Phong !")		
			end
			if GetTongFigure() == 2 or GetTongFigure() == 3 then
				idxitem = AddEventItem(116)
				SetBindItem(idxitem , 1)
				Msg2Tong("<color=green>"..GetName().." �� nh�n 1 N� Nhi H�ng 6 Gi� !")
			end	
		else
			Talk(1,"","Hack ha em")
		end
else
	Talk(1,"","Ch� th�nh vi�n gia nh�p Bang H�i tr��c ng�y 22/07 m�i ���c nh�n th��ng")
end
end

function taobang()
--Talk(1,"","Ch�c n�ng ch�a m�, li�n h� Admin �� bi�t th�m chi ti�t")
OpenTong(1)
end
function timhieu()
Talk(3,"","<color=red>�i�u ki�n l�p bang:<color>\n1 Nh�c v��ng ki�m\n300 danh v�ng\nLevel > 100\n500 v�n l��ng ",
"Hi�n t�i server �� update c�c ch�c n�ng c� b�n c�a 1 Bang h�i ",
"Nh�ng ch�c n�ng s� ���c Update d�n trong nh�ng l�n update ti�p theo ")
end
function no()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
if GetAccount() == "vantoi"  then
if GetItemCount(264) > 0 then
return
end
ngay = ngay + 7
	if ngay > mangthang[thang] then
		ngay = ngay - mangthang[thang]
		thang = thang + 1
	end
	itemidx = AddEventItem(264)
	SetBindItem(itemidx,1)
	SetHSD(itemidx, 2021 , thang, ngay, gio )

end
end

mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}