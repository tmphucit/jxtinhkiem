function OnTimer()
w,x,y = GetWorldPos()
if w == 5 then

if GetTask(4) > 0 then
	SetTask(4,GetTask(4)-1)
	Msg2Player("Th�i gian ng�i t� c�n l�i: "..GetTask(4).." ph�t ")
	if GetTask(4) == 0 then
		SetTask(4,1)
		StopTimer()
		Msg2Player("Qu� tr�nh h�i c�i �� k�t th�c. B�n c� th� ra kh�i nh� lao v� ti�p t�c h�nh t�u giang h� ")
	end
else
if GetTask(142) > 1 then
SetTask(142,GetTask(142)-1)
Msg2Player("Th�i gian �� gi�m PK c�n l�i: "..GetTask(142).." ph�t")
elseif GetTask(142) == 1 then
			SetTask(142,60)
			SetPK(GetPK()-1)
			Msg2Player("B�n �� gi�m ���c 1 �i�m PK")
			Msg2Player("�i�m PK hi�n t�i c�a b�n l�: "..GetPK().."")

if GetPK() == 0 then
StopTimer()
SetTask(142,0)
Msg2Player("Qu� tr�nh ��u th� c�a b�n �� k�t th�c. B�n c� th� ra kh�i nh� lao v� ti�p t�c h�nh t�u giang h�")
end
end
end
else
	StopTimer()
	SetTask(142,0)
Msg2Player("B�n ra kh�i Nh� T�, h� th�ng PK t� ��ng h�y.")
end
end