function main()
if GetTask(103) == 32 then
SayNew("<color=green>�n M�y: <color> ��u ph�i c�i g� mu�n c�ng c� ��u, c� ti�n �i tr��c r�i t�nh ti�p nh� ",2,
"Giao cho h�n 5 v�n l��ng l�y T�n V�t /chotien",
"Tho�t /no")
else
SayNew("<color=green>�n M�y: <color>��i hi�p xin b� th� cho k� �n xin kh�ng n�i n��ng t�a n�y ch�t x�u �� s�ng qua ng�y..",2,
"Cho �n m�y 5 v�n l��ng /chotien",
"Tho�t /no")
end
end
function no()
Msg2Player("��i hi�p b� �i th�t sao ? H�y th��ng x�t cho k� h�n m�n n�y")
end
function chotien()
tien = GetCash()
if GetCash() >= 0 then
	Pay(0)
	if GetCash() == (tien-0) then
		if GetTask(157) == 8 then
			SetTask(156,1)
			Msg2Player("Nhi�m V�: Quay v� g�p Ng�o V�n T�ng ")
			Talk(1,"","<color=green>�n M�y <color>: Nhi�m v� ho�n th�nh ! Quay v� g�p Ng�o V�n T�ng ...")
		elseif GetTask(103) == 32 then
			SetTask(103,33)
			Talk(1,"","<color=green>�n M�y <color>: C�m l�y T�n V�t M�n Ph�i c�a ng��i �i, ta gi� n� ch�ng ���c l�i �ch g� !")
			Msg2Player("Nhi�m v� ho�n th�nh, quay v� Ch��ng M�n �� ph�c m�nh !")
			
		else
		Talk(1,"","C�m �n ��i hi�p r�t nhi�u !!")
		end

	else
	Talk(1,"","hack he em")
	end
else
Talk(1,"","<color=green>�n M�y: <color> ��i hi�p kh�ng mang �� <color=red>5<color> v�n l��ng !")
end
end