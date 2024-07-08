
function main(idx)
dofile("script\\item\\questkey\\708.lua")

if GetLevel() < 120 then
	Talk(1,"","Ng­¬i ch­a ch­a ®ñ cÊp 120 kh«ng thÓ sö dông !")
	return
	end	
idskill = kiemtra_skill120()
if idskill == 0 then
Talk(1,"","Ng­¬i h·y häc kü n¨ng 120 sau ®ã quay l¹i t×m ta !")
return
end
-- if idskill == 20 then
AddMagic(idskill,20)
DelItemIdx(idx)
Msg2SubWorld("Chµo mõng <color=yellow>"..GetName().." <color=red> ®· sñ dông ®¹i thµnh bÝ kiÕp 120  !")
		
	-- else
	-- Talk(1,"","Ng­¬i ®· full kü n¨ng 120 kh«ng thÓ sö dung d­îc n÷a ! ")
	-- end	
end

function kiemtra_skill120()
for i=412,430  do
if HaveMagic(i) > 0 then
return i
end
end
return 0
end