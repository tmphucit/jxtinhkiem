
Include("\\script\\monphai.lua")

function main(idx)
a = GetItemCount(19)
if GetLevel() >= 120 then
	if HaveMagic(412) < 1 and HaveMagic(414) < 1 and HaveMagic(416) < 1 and HaveMagic(418) < 1 and HaveMagic(420) < 1 and HaveMagic(422) < 1 and HaveMagic(424) < 1 and HaveMagic(426) < 1 and HaveMagic(428) < 1 and HaveMagic(430) < 1 then
		DelItemIdx(idx);
			if GetItemCount(19) == (a - 1) then
				if mp() == 1 then
				AddMagic(412,1)
		elseif mp() == 2 then
		AddMagic(414,1)
		elseif mp() == 3 then
		AddMagic(416,1)
		elseif mp() == 4 then
		AddMagic(418,1)
		elseif mp() == 5 then
		AddMagic(420,1)
		elseif mp() == 6 then
		AddMagic(422,1)
		elseif mp() == 7 then
		AddMagic(424,1)
		elseif mp() == 8 then
		AddMagic(426,1)
		elseif mp() == 9 then
		AddMagic(428,1)
		elseif mp() == 10 then
		AddMagic(430,1)
		else
		AddEventItem(19)
		Msg2Player("B�n ch�a gia nh�p m�n ph�i n�o !")
		
		end		
	Talk(0,"")
	else
	Talk(1,"","Hack ha em")
	end
		else

	Talk(1,"","<color=red>H� Th�ng<coland> B�n �� h�c k� n�ng 120 r�i !")
	end
else
Msg2Player("��ng c�p y�u c�u: 120")
end
end

