
function main(idx)
dofile("script\\item\\questkey\\708.lua")

if GetLevel() < 120 then
	Talk(1,"","Ng��i ch�a ch�a �� c�p 120 kh�ng th� s� d�ng !")
	return
	end	
idskill = kiemtra_skill120()
if idskill == 0 then
Talk(1,"","Ng��i h�y h�c k� n�ng 120 sau �� quay l�i t�m ta !")
return
end
-- if idskill == 20 then
AddMagic(idskill,20)
DelItemIdx(idx)
Msg2SubWorld("Ch�o m�ng <color=yellow>"..GetName().." <color=red> �� s� d�ng ��i th�nh b� ki�p 120  !")
		
	-- else
	-- Talk(1,"","Ng��i �� full k� n�ng 120 kh�ng th� s� dung d��c n�a ! ")
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