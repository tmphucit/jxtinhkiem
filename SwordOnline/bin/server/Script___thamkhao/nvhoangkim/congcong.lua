function main()
if GetTask(157) == 17 then
	SetTask(157,18)	
	SetTask(156,0)
	Talk(1,"","<color=green>Th�i C�ng C�ng: <color> H�y ��n Ph�c Ng�u S�n ti�u di�t Ti�u K� Nhi mang Kim Ph�t v� cho ta ....")
	Msg2Player("Nhi�m Vu: Ti�u di�t Ti�u K� Nhi � Ph�c Ng�u S�n 226/205")
elseif GetTask(157) == 18 then
	if GetTask(156) == 1 then
		SetTask(157,19)
		SetTask(156,0)
		Msg2Player("Nhi�m Vu: Quay v� g�p V�n Nhi �� b�o tin ")
		Talk(1,"","<color=green>Th�i C�ng C�ng: <color> N�i v�i V�n Nhi, Kim Ph�t �� � trong tay ta, tuy�t ��i an to�n ")
	else	
	Talk(1,"","<color=green>Th�i C�ng C�ng: <color>: H�n �ang � ph�c ng�u s�n 226/205 ...")
	end
elseif GetTask(157) == 19 then
	Talk(1,"","<color=green>Th�i C�ng C�ng: <color> ��n g�p V�n Nhi �� ph�c m�nh �i ")

else
Talk(1,"","<color=green>Th�i C�ng C�ng <color>: Ta l� th�i gi�m ch� kh�ng ph�i b� �� ")
end
end