function main()
SayNew("<color=green>Xa Phu:<color> Ng��i mu�n �i ��u ?",2,
"Ta mu�n r�i kh�i L�nh ��a Bang/roikhoi",
"Tho�t./no")
end

function no()
end

function roikhoi()
a = GetCash()
if GetCash() >= 1000 then
	Pay(1000)
	if GetCash() == a - 1000 then
		Msg2Player("B�n �� r�i kh�i L�nh ��a Bang ")
	
		SetPunish(0);
		NewWorld(53,200*8,200*16)
		if GetCurCamp() == 0 or GetCamp() == 0 then
			KickOutSelf()
		end
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng mang �� 1000 l��ng, kh�ng th� r�i kh�i ��y !")
end
end