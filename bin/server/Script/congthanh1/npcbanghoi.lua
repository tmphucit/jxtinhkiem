function main()
if GetTongNameID() == 0 then
	Say("<color=green>Qu�n L� Bang H�i<color>: Ta chuy�n qu�n l� nh�ng v�n �� v� Bang h�i ",3,
	"T�o Bang h�i/taobang",
	"T�m hi�u v� Bang h�i/timhieu",
	"Tho�t./no")
else	Say("<color=green>Qu�n L� Bang H�i<color>: Ta chuy�n qu�n l� nh�ng v�n �� v� Bang h�i ",2,
	"T�m hi�u v� Bang h�i/timhieu",
	"Tho�t./no")
end
end

function taobang()
OpenTong(1)
end
function timhieu()
Talk(3,"","<color=red>�i�u ki�n l�p bang:<color>\n1 Nh�c v��ng ki�m\n1000 danh v�ng\nLevel > 100\n1000 v�n l��ng ",
"Hi�n t�i server �� update c�c ch�c n�ng c� b�n c�a 1 Bang h�i ",
"Nh�ng ch�c n�ng s� ���c Update d�n trong nh�ng l�n update ti�p theo ")
end
function no()
end