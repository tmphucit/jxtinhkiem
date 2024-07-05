

function main(idx)

if GetTask(172) <= 0 then
sl = GetItemCount(119)
if GetItemCount(119) >= 1 then
DelItemIdx(idx);
if GetItemCount(119) == (sl-1) then
AddSkillEffect(460,1,3*60*60*18)
Setx2Exp(3*60*60*18)
SetTask(141,1)
Msg2Player("B¹n cã 3 giê nh©n ®«i kinh nghiÖm")
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end
else
Talk(1,"","B¹n ®ang sö dông tiªn th¶o lé. Kh«ng thÓ sö dông thªm")
end
end
