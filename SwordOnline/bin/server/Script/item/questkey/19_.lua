
Include("\\script\\admin\\monphai.lua")
function main(idx)
a = GetItemCount(19)
diem = kiemtra()
if diem == 0 then
diemskill = 1
else
Talk(1,"","B�n �� h�c k� n�ng 120, kh�ng th� h�c th�m !")
return 
end

if GetLevel() >= 120 then
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
				else
				AddEventItem(19)
				Msg2Player("B�n ch�a gia nh�p m�n ph�i n�o !")			
				end		
				Talk(0,"")
			else
			Talk(1,"","Hack ha em")
			end
else
Msg2Player("��ng c�p y�u c�u: 120")
end
end

function kiemtra()
for i=412,430 do
if HaveMagic(i) > 0 then
return HaveMagic(i)
end
end
return 0
end

