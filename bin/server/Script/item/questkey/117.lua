

function main(idx)

if GetTask(172) <= 0 then
sl = GetItemCount(117)
if GetItemCount(117) >= 1 then
DelItemIdx(idx);
if GetItemCount(117) == (sl-1) then
AddSkillEffect(460,1,60*60*18)
Setx2Exp(60*60*18)
SetTask(141,1)
Msg2Player("B¹n cã 60 phót nh©n ®«i kinh nghiÖm")

Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end
else
Talk(1,"","B¹n ®ang sö dông tiªn th¶o lé. Kh«ng thÓ sö dông thªm")
end
end
