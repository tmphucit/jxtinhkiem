function main()
if GetTask(157) == 16 then
	Talk(1,"","<color=green>V�n Nhi: <color>: Ta c�n t�m b�o v�t Kim Ph�t. H�y T�m Th�i C�ng C�ng ...")
	Msg2Player("Nhi�m Vu: T�m Th�i C�ng C�ng � Ph��ng T��ng ")
	SetTask(157,17)
elseif GetTask(157) == 17 then
	Talk(1,"","<color=green>V�n Nhi: <color> Nhi�m v� ch�a ho�n th�nh ��n ��y l�m gi ?")
elseif GetTask(157) == 19 then
	SetTask(157,20)
	Talk(1,"","<color=green>V�n Nhi: <color> C�m �n ��i Hi�p, t�m Ng�o V�n T�ng �i, �ng ta b�o ta nh�n l�i nh� v�y ")
	Msg2Player("Nhi�m Vu: t�m Ng�o V�n T�ng �� nh�n nhi�m v� ")
elseif GetTask(157) == 20 then
	Talk(1,"","<color=green>V�n Nhi: <color> Nhi�m v� ho�n th�nh r�i, �i nhanh �i ")
else
Talk(1,"","<color=green>V�n Nhi: <color> Ta sinh ra �� kh�ng c� cha m�, ng��i t�m ta l�m g� ?")
end
end