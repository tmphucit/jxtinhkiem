
iditem = 695

function main(idx)
diem = kiemtra()
			if diem == 0 then
			Talk(1,"","Ng��i ch�a h�c k� n�ng 120, kh�ng th� s� d�ng.")
			return
			end
			if diem == 20 then
				Talk(1,"","K� n�ng 120 c�a b�n �� ��t t�i �a, kh�ng th� s� d�ng m�t t�ch")
			return
			end
			
			
n = GetItemCount(iditem)
if GetItemCount(iditem) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(iditem) == (n-1) then			
			idskill = kiemtra2()
			if (idskill ~= 0) then
				AddMagic(idskill, diem+1)
				Msg2Player("B�n �� s� d�ng M�t T�ch Ho�n M� t�ng 1 �i�m k� n�ng 120")
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

