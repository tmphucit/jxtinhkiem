


function main(idx)
 dofile("script\\item\\questkey\\707.lua")

if GetTask(85) == 0 then
	Talk(1,"","Ng­¬i ch­a nhËn nhiÖm vô d· tÈu kh«ng thÓ sö dông !")
	return
	end
if GetTask(96) >= 1 then
	Talk(1,"","kh«ng thÓ sö dông liªn tiÕp ®­îc !")
	return
	end
	

DelItemIdx(idx);
SetTask(84,GetTask(84) + 1)
SetTask(83,GetTask(83) + 1)
SetTask(96,1)
Msg2Player("B¹n ®· sö dông LÖnh bµi D· TÈu hoµn thµnh nhanh nhiÖm vô. ")
end




