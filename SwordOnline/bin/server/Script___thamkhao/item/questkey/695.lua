
iditem = 695

function main(idx)
diem = kiemtra()
			if diem == 0 then
			Talk(1,"","Ng­¬i ch­a häc kü n¨ng 120, kh«ng thÓ sö dông.")
			return
			end
			if diem == 20 then
				Talk(1,"","Kü n¨ng 120 cña b¹n ®· ®¹t tèi ®a, kh«ng thÓ sö dông mËt tŞch")
			return
			end
			
			
n = GetItemCount(iditem)
if GetItemCount(iditem) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(iditem) == (n-1) then			
			idskill = kiemtra2()
			if (idskill ~= 0) then
				AddMagic(idskill, diem+1)
				Msg2Player("B¹n ®· sö dông MËt TŞch Hoµn Mü t¨ng 1 ®iÓm kü n¨ng 120")
			end
	else
		Talk(1,"","Hack Ha Em")
	end
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
return HaveMagic(i)
end
end
return 0
end

