
Include("\\script\\admin\\monphai.lua")



function main(idx)
dofile("script\\item\\questkey\\19.lua")
a = GetItemCount(19)
diemskill = 1
if mp() == 0 then
Talk(1,"","B�n ch�a gia nh�p m�n ph�i, kh�ng th� s� d�ng !")
return
end
if GetLevel() < 120 then
Talk(1,"","��ng c�p d��i 120 kh�ng th� s� d�ng")
return
end

if GetTask(200) >= 100 then
Talk(1,"","Ng��i �� �n �� 100 cu�n b� ki�p r�i kh�ng th� �n n�a")
return
end


if kiemtra2() > 0 then
	if (GetTask(200) < gioihan1()) then
			DelItemIdx(idx);
	SetTask(200,GetTask(200)+1)
	AddProp(10)
	Msg2Player("B�n s� d�ng th�nh c�ng B� Ki�p 120 nh�n ���c 10 �i�m ti�m n�ng !"); 
	--KickOutSelf()

	else
	Talk(1,"","Ng��i �� d�ng <color=red> "..gioihan1().." cu�n B� Ki�p 120<color>, kh�ng th� s� d�ng th�m")
			-- end
		end
elseif GetItemCount(19) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(19) == (a - 1) then
				if mp() == 1 then
					AddMagic(412,diemskill)
				elseif mp() == 2 then
				AddMagic(414,diemskill)
				elseif mp() == 3 then
				AddMagic(416,diemskill)
				elseif mp() == 4 then
				AddMagic(418,diemskill)
				elseif mp() == 5 then
				AddMagic(420,diemskill)
				elseif mp() == 6 then
				AddMagic(422,diemskill)
				elseif mp() == 7 then
				AddMagic(424,diemskill)
				elseif mp() == 8 then
				AddMagic(426,diemskill)
				elseif mp() == 9 then
				AddMagic(428,diemskill)
				elseif mp() == 10 then
				AddMagic(430,diemskill)		
				end		
				Talk(0,"")
			else
			Talk(1,"","Hack ha em")
			end
end
end

function gioihan1()
return 100 + GetTask(139)*10
end


function kiemtra2()
for i=412,430 do
if HaveMagic(i) > 0 then
return i
end
end
return 0
end
function kiemtra()
for i=412,430 do
if HaveMagic(i) > 0 then
Msg2Player(""..i.."")
return HaveMagic(i)
end
end
return 0
end

