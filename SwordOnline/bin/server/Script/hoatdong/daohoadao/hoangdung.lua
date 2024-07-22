function main()
if GetTask(528) > 0 then
SayNew("<color=green>Ho�ng Dung:<color> V� huynh ��i n�y ��n t�m ta c� vi�c g�?",2,
"Ta mu�n h��ng d�n c�ch n�u Ch�o L�p B�t /nauchao",
"Xin l�i, �� l�m phi�n c� n��ng/no")
else
	Talk(1,"","Ta l� con g�i c�a Ho�ng ��o Ch�, ng��i ki�m ta c� vi�c g�?")
end
end

function nauchao()
if GetTask(528) == 2 then
	if GetItemCount(662) == 1 and GetItemCount(663) == 1 then
		SetTask(528,3)
		Talk(1,"","H�nh nh� huynh ��i c�n thi�u nguy�n li�u, h�y ��n T�p H�a Ba L�ng Huy�n mua cho ta 1 c�n G�o T� r�i ta s� h��ng d�n ng��i c�ch n�u Ch�o L�p B�t")
		Msg2Player("Nh�n nhi�m v�: <color=yellow>Mua G�o T� � T�p H�a Ba L�ng Huy�n")
	else
		Talk(1,"","Cha ta kh�ng d�n ng��i ph�i �i t�m c�y l�c ��u sao? Quay l�i c�nh d�ng s�ng, h�i cho ta 1 n�m ��u Xanh")
	end
elseif GetTask(528) == 3 then
	if GetItemCount(662) == 1 and GetItemCount(663) == 1 and GetItemCount(661) == 1 then
		SetTask(528,4)
		Talk(1,"","Nguy�n li�u �� r�i ��, b�y gi� h�y l�n l��t b� nguy�n li�u v�o 4 c�i b�p v� n�u l�n l��t theo th� t�. Sau khi xong th� quay l�i g�p ta")
		Msg2Player("Nh�n nhi�m v�: <color=yellow>N�u Ch�o t�i B�p 191/197")
	else
		Talk(1,"","Ng��i mu�n n�u m�t t� ch�o th�t th�m ngon c�n G�o T�, ��u Xanh, Th�t Heo, �� chu�n b� �� ch�a? Khi n�o �� nguy�n li�u th� quay l�i g�p ta")
	end
elseif GetTask(528) == 8 then
	if GetItemCount(662) == 1 and GetItemCount(663) == 1 and GetItemCount(661) == 1 then
		DelItem(661)
		DelItem(662)
		DelItem(663)
		sx = random(1,100)
		SetTask(528,0)
		
		ngay = tonumber(date("%d"))
		thang = tonumber(date("%m"))
		gio = tonumber(date("%H"))
		ngayitem = ngay + 1
		thangitem = thang
		if ngayitem > mangthang[thang] then
			ngayitem = ngayitem - mangthang[thang]
			thangitem = thang + 1
		end
		
		if sx < 40 then
			idxitem = AddEventItem(673)
			Talk(1,"","Nhi�m v� ho�n th�nh, nh�n ���c <color=pink>1 "..GetNameItemBox(idxitem).."")
			Msg2Player("Ch�c m�ng b�n nh�n ���c <color=pink>1 "..GetNameItemBox(idxitem).."")
			SetHSD(idxitem, 2022 , thangitem, ngayitem, gio )
		elseif sx < 70 then
			idxitem = AddEventItem(674)
			Talk(1,"","Nhi�m v� ho�n th�nh, nh�n ���c <color=pink>1 "..GetNameItemBox(idxitem).."")
			Msg2Player("Ch�c m�ng b�n nh�n ���c <color=pink>1 "..GetNameItemBox(idxitem).."")
			SetHSD(idxitem, 2022 , thangitem, ngayitem, gio )
		elseif sx < 90 then
			idxitem = AddEventItem(675)
			Talk(1,"","Nhi�m v� ho�n th�nh, nh�n ���c <color=pink>1 "..GetNameItemBox(idxitem).."")
			Msg2Player("Ch�c m�ng b�n nh�n ���c <color=pink>1 "..GetNameItemBox(idxitem).."")
			SetHSD(idxitem, 2022 , thangitem, ngayitem, gio )
		else
			idxitem = AddEventItem(676)
			Talk(1,"","Nhi�m v� ho�n th�nh, nh�n ���c <color=pink>1 "..GetNameItemBox(idxitem).."")
			Msg2Player("Ch�c m�ng b�n nh�n ���c <color=pink>1 "..GetNameItemBox(idxitem).."")
			SetHSD(idxitem, 2022 , thangitem, ngayitem, gio )
		end
	else
		Talk(1,"","Nguy�n li�u n�u ch�o kh�ng ��, c�n ki�m tra l�i")
	end
else
	Talk(1,"","H�nh nh� ng��i c�n vi�c g� �� qu�n l�m, h�y nh� k� l�i r�i quay l�i g�p ta")
end
end

mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}

function no()
end