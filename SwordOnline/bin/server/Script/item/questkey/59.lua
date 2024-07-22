

function main(idx)
if GetPK() == 0 or GetPK() == 10 then
Talk(1,"","ßi”m PK cÒa bπn hi÷n tπi lµ: <color=red>"..GetPK().."<color>, kh´ng th” sˆ dÙng vÀt ph»m ") 
return
end

n = GetItemCount(59)
if GetItemCount(59) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(59) == (n-1) then
		SetPK(GetPK()-1)
		Msg2Player("Bπn Æ∑ gi∂m Æ≠Óc 1 PK. ßi”m PK hi÷n tπi cÒa bπn lµ: "..GetPK().." !"); 
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end
end
