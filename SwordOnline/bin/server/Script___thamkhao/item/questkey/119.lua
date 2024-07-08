

Include("\\GameConfig.txt")

function main(idx)

if NhanDoiTienThaoLo == 0 then
Talk(1,"","Kh«ng thÓ sö dông vËt phÈm vµo lóc nµy") 
return
end

sl = GetItemCount(119)
if GetItemCount(119) >= 1 then
DelItemIdx(idx);
if GetItemCount(119) == (sl-1) then
SetTask(172, GetTask(172) + 3*60*60*18)
AddSkillEffect(460,1,GetTask(172))
SetTask(141,1)
Msg2Player("B¹n cã thªm 3 giê nh©n ®«i kinh nghiÖm")
Msg2Player("Thêi gian nh©n ®«i kinh nghiÖm hiÖn t¹i: "..floor(GetTask(172)/18/60).." phót !")
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end
end
