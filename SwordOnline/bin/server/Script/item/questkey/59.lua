

function main(idx)
if GetPK() == 0 or GetPK() == 10 then
Talk(1,"","�i�m PK c�a b�n hi�n t�i l�: <color=red>"..GetPK().."<color>, kh�ng th� s� d�ng v�t ph�m ") 
return
end

n = GetItemCount(59)
if GetItemCount(59) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(59) == (n-1) then
		SetPK(GetPK()-1)
		Msg2Player("B�n �� gi�m ���c 1 PK. �i�m PK hi�n t�i c�a b�n l�: "..GetPK().." !"); 
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end
end
