function main()
if GetTongNameID() == 0 then
	Say("<color=green>Kim S�n Ch��ng M�n <color>: Ta chuy�n qu�n l� nh�ng v�n �� v� Bang h�i ",3,
	"Th�nh l�p bang h�i/taobang",
	"�i�u ki�n l�p bang/timhieu",
	"K�t th�c ��i tho�i/no")
else	
    Say("<color=green>Kim S�n Ch��ng M�n <color>: Ta chuy�n qu�n l� nh�ng v�n �� v� Bang h�i ",2,
	"�i�u ki�n l�p bang/timhieu",
	"K�t th�c ��i tho�i/no")
end
end

function taobang()
OpenTong(1)
end

function timhieu()
Talk(1,"","<color=green>�i�u ki�n l�p bang c�n c� :<color>\nV�t ph�m y�u c�u : 1 Nh�c v��ng ki�m\n�i�m danh v�ng y�u c�u : 2000 \nC�p �� y�u c�u : 120\nTi�n v�n y�u c�u : 1000 v�n l��ng ")
--"<color=green>Hi�n t�i server �� update c�c ch�c n�ng c� b�n c�a 1 Bang h�i ",
--"<color=green>Nh�ng ch�c n�ng s� ���c Update d�n trong nh�ng l�n update ti�p theo ")
end

function no()
end