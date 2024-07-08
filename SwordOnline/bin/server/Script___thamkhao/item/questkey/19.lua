
Include("\\script\\monphai.lua")

function main(idx)
a = GetItemCount(19)
diem = kiemtra()
if diem > 0 then
Talk(1,"","Ng­¬i ®· häc kü n¨ng 120 råi, kh«ng thÓ sö dông thªm !")
return
end

diemskill = 1

if GetLevel() >= 120 and diemskill ~= 0 then
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
				Msg2Player("Ban chua gia nhap phai")			
				end		
				Talk(0,"")
			else
			Talk(1,"","Hack ha em")
			end
else
Msg2Player("§¼ng cÊp kh«ng ®ñ 120, kh«ng thÓ häc")
end
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

