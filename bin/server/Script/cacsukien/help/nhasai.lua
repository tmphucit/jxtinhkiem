function main()
Say("<color=green>Nha Sai<color> �i�m PK hi�n t�i c�a b�n l�: <color=red>"..GetPK().."<color> �i�m. B�n s� ph�i tr� <color=yellow>5 v�n<color> �� ��u th�. B�n c� ch�c ch�n mu�n v�o nh� lao kh�ng? ",3,
"Ta ��n �� ��u th�/dauthu",
"T�m hi�u nh� t� /timhieu",
"Ta ch� gh� ngang qua th�i/no")
end

function timhieu()
Talk(3,"","<color=green>Nha Sai: <color> Nh� t� l� n�i �� nh�ng k� s�t nh�n v�o ��u th�. ��y l� n�i th�ch h�p �� b�n tu th�n d��ng t�nh .","��  gi�m PK c�n 10 v�n v� 2 gi� / 1 PK t� 1 - 5, c�n 20 v�n v� 4 gi� / 1 PK t� 6 - 10","Khi h�t PK b�n c� th� ra ngo�i v� ti�p t�c x�ng pha giang h� ")
end
function no()
Msg2Player("Kh�ng c� vi�c g� th� ��ng ��n phi�n ta !")
end
function dauthu()
SetTask(1,0)
SetFightState(0)
SetCreateTeam(0);
SetPunish(0)
LeaveTeam()
Msg2Player("B�n �� di chuy�n ��n tr�i giam !!!!")
Msg2Player("�i�m PK hi�n t�i c�a b�n l�: "..GetPK().."")
Msg2Player("�� gi�m 1 �i�m PK, B�n ph�i ng�i trong nh� lao 1 gi�")
Msg2Player("C�n 1 kho�n ti�n n�u b�n mu�n ra kh�i nh� lao. Th�i gian b�n �� ng�i s� b� reset n�u b�n r� kh�i nh� lao")
SetTask(143,1) -- Dang o tu
NewWorld(5,200*8,200*16)
end