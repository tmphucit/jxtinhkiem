function main()


if GetTask(493) == 6 then
	SetTask(493,7)
	idxitem = AddEventItem(638)
	SetBindItem(idxitem,1)
	Talk(1,"","Gi� c�ng �� tr�a r�i, phu qu�n c�a ta �ang ��n c�y � trong r�ng. Hi�n t�i, con ta �ang b� b�nh ph�i � nh� tr�ng con. Nh� v� ��i hi�p n�y gi�p ta mang c�m ��n cho ch�ng")
	Msg2Player("<color=green>[Nhi�m V� T�n Th�] Mang c�m cho T� L�ng t�i Mi�u L�nh 242/201")
elseif GetTask(493) == 7 then
	Msg2Player("<color=green>[Nhi�m V� T�n Th�] Mang c�m cho T� L�ng t�i Mi�u L�nh 242/201")
elseif GetTask(493) == 8 then
	SetTask(493,9)
	Talk(1,"","C�m �n ��i hi�p �� gi�p �� ta, h�y v� g�p Tam N��ng �� ph�c m�nh")
	Msg2Player("<color=green>[Nhi�m V� T�n Th�] Quay v� g�p Tam N��ng. Ho�n th�nh nhi�m v� ")
else
	if HaveMagic(210) ~= 1 then
	Talk(1,"","<color=yellow>Con g�i V� S� <color>:Ti�u n� hi�n t�i v�n ch�a c� � trung nh�n. ��i hi�p h�y c� g�ng tu luy�n, ng�y xu�t s� ta s� c�ng ng��i �i d�o m�t v�ng quanh ��ng ��nh H� b�ng khinh c�ng cha ta �� d�y cho ng��i.")
	else
	Talk(1,"","<color=yellow>Con g�i V� S� <color>: Ta th�nh th�t xin l�i v� ��i hi�p, ng��i tu luy�n qu� l�u, ta kh�ng th� ch� ��i ng��i m�i ���c. Ta �� th�nh th�n r�i n�n kh�ng th� c�ng ng��i �i d�o nh� l�i �� h�a ���c")
	end
end

end