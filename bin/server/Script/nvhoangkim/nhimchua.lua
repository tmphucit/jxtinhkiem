function OnDeath()
if GetTask(157) == 7 then
	if GetTask(156) == 100 then
	SetTask(156,101)
		if GetTask(156) == 101 then
		AddOwnExp(1250)
		Msg2Player("B�n nh�n ���c 1250 kinh nghi�m")
		Talk(1,"","Nhi�m v� ho�n th�nh ! Quay v� g�p Ng�o V�n T�ng")
		else
		Talk(1,"","Hack ha em")
		end
	elseif GetTask(156) == 101 then
	Msg2Player("Nhi�m v� ho�n th�nh ! Quay v� g�p Ng�o V�n T�ng")
	else
	Msg2Player("Thu�c h� c�a ta c�n ch�a kh�t ph�c, sao l�i t�m ta s�m v�y.. ")
	end
elseif GetTask(157) == 13 then
	sx = random(1,2)
	if sx == 1 then
	if GetItemCount(21) == 0 then
		AddEventItem(21)
		Talk(1,"","B�n nh�n ���c 1 <color=yellow>Huy�n Tinh 1 Tinh Khi�t")
	else
		Talk(1,"","Ng��i �� c� r�i t�i sao c�n mu�n l�y th�m ")
	end
	end
end
end

function OnDrop()
end