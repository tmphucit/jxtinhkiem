function main()
if GetTask(103) == 2 then
	SetTask(103,3)
	Talk(1,"","�a t� tr�ng s�, sau bao nhi�u n�m ch� ��i cu�i c�ng �� gi�p ta tr� th�, �n n�y kh�ng bi�t khi n�o m�i ��n ��p ���c")
	Msg2Player("Di�p Ti�p M� �� t� bi�t v� r�i kh�i n�i Hoa S�n, h�y quay v� Ch��ng M�n �� ph�c m�nh !")
else
	Talk(1,"","��n th�n ��c b��c ch� ��i 1 ng�y c� th� an l�ng r�i kh�i ��y !")
end
end