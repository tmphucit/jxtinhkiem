

function main(idx)


sl = GetItemCount(114)
if GetItemCount(114) >= 1 then
DelItemIdx(idx);
if GetItemCount(114) == (sl-1) then

--Setx2Skill(30*60*18)
SetTask(173, GetTask(173) + 30*60*18)
Msg2Player("B¹n cã thªm 30 phót nh©n ®«i luyÖn skill")
Msg2Player("Thêi gian nh©n ®«i luyÖn skill hiÖn t¹i: "..floor(GetTask(173)/18/60).." phót !")
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end
end
