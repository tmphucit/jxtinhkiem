function main()
w,x,y = GetWorldPos()
if w == 17 then
	SayNew("��i hi�p mu�n ��n Vi S�n ��o �? ��o ch� c�n d�n ta, ph�m nh�ng ai mu�n ��n Vi S�n ��o ph�i c� mang theo t�n v�t L�nh B�i Vi S�n ��o. Ng��i c� mang theo kh�ng?",1,
	-- "Ta c� mang theo t�n v�t, h�y ��a ta l�n Vi S�n ��o /move_visondao",
	"Ta qu�n mang theo l�nh b�i /no")
else
	SayNew("Ng��i mu�n ta gi�p g�?",2,
	"Ta mu�n r�i kh�i ��o ��o Hoa/move_balanghuyen",
	"K�t th�c ��i tho�i/no")
end
end

function no()
end

function move_visondao()
if GetCurCamp() == 0 then
Talk(1,"","B�n ch�a gia nh�p ph�i, kh�ng th� v�o Vi S�n ��o ")
return
end
if GetItemCount(658) == 0 then
Talk(1,"","Ng��i kh�ng mang theo L�nh B�i Vi S�n ��o, kh�ng th� l�n !")
return
end

DelItem(658)
SetPKState(1)
BlockPKState(1)
SetTempRevPos(24,1395*32,2783*32)
SetRevPos(58)
Msg2Player("�� di chuy�n ��n b�n �� Vi S�n ��o !")
Msg2SubWorld("��i hi�p [<color=green>"..GetName().."<color>] �� v�o Vi S�n ��o !")
--Msg2Player("<color=yellow>Tho�t game t�i Vi S�n ��o trong th�i gian 17h00 - 17h59 s� gi� nguy�n v� tr�. C�n l�i s� ���c ��a v� Ba Lang Huy�n")
SetDeathScript("\\script\\hoatdong\\visondao\\playerdie.lua");

SetFightState(0)
NewWorld(24,1395,2783)

end
function move_balanghuyen()
NewWorld(53, 1802,3148)
SetFightState(0)
Msg2Player("Ng�i y�n, ch�ng ta �i Ba L�ng Huy�n ...")
end