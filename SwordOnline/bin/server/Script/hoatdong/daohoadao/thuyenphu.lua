function main()
w,x,y = GetWorldPos()
if w == 53 then

	SayNew("T��ng truy�n ��o Hoa ��o l� m�t n�i thi�n kh� h�i t�, ng� h�nh h�a h�p, th�m s�u kh� l��ng, �i d� kh� v�. Ng��i h� t�t ph�i ��n ��, h�y mau mau quay v� �i !",2,
	"Nam t� h�n ��i tr��ng phu c� g� ph�i s�, h�y ��a ta ��n �� /move_daohoadao",
	"�a t� ��i ca �� c�nh b�o /no")
else
	SayNew("Ng��i mu�n ta gi�p g�?",2,
	"Ta mu�n r�i kh�i ��o ��o Hoa/move_balanghuyen",
	"K�t th�c ��i tho�i/no")
end
end

function no()
end

function move_daohoadao()
if GetCurCamp() == 0 then
Talk(1,"","B�n ch�a gia nh�p ph�i, kh�ng th� v�o ��o Hoa ��o ")
return
end
NewWorld(239, 1524,3240)
SetFightState(0)
Msg2Player("Ng�i y�n, ch�ng ta �i ��o ��o Hoa ...")
end
function move_balanghuyen()
NewWorld(53, 1802,3148)
SetFightState(0)
Msg2Player("Ng�i y�n, ch�ng ta �i Ba L�ng Huy�n ...")
end