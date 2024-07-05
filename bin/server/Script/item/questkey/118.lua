

function main(idx)
if GetTask(173) <= 0 then
sl = GetItemCount(118)
if GetItemCount(118) >= 1 then
DelItemIdx(idx);
if GetItemCount(118) == (sl-1) then
Setx2Skill(60*60*18)
Msg2Player("B¹n cã 60 phót nh©n ®«i luyÖn skill")
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end
else
Talk(1,"","B¹n ®ang sö dông n÷ nhi hång. Kh«ng thÓ sö dông thªm")
end
end
