Include("\\GameConfig.txt")

function main(idx)

if NhanDoiNuNhiHong == 0 then
Talk(1,"","Kh«ng thÓ sö dông vËt phÈm vµo lóc nµy") 
return
end

sl = GetItemCount(116)
if GetItemCount(116) >= 1 then
DelItemIdx(idx);
if GetItemCount(116) == (sl-1) then

--Setx2Skill(30*60*18)
SetTask(173, GetTask(173) + 6*60*60*18)
Msg2Player("B¹n cã thªm 6 giê nh©n ®«i luyÖn skill")
Msg2Player("Thêi gian nh©n ®«i luyÖn skill hiÖn t¹i: "..floor(GetTask(173)/18/60).." phót !")
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end
end
