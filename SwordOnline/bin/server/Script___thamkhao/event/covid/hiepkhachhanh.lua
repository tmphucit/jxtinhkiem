

function main()
SayNew("<color=green>HiÖp Kh¸ch Hµnh<color>:",4,
"Mua LÖnh Bµi Th­ëng Ph¹t /mualenhbai",
"§Õn Bµn T¬ §éng /movebantodong",
"Xin lçi, ta sÏ quay l¹i sau./no")
end

function mualenhbai()
gia = 300000

if GetCash() < gia then
Talk(1,"","Ng­¬i kh«ng mang ®ñ "..gia.." l­îng, kh«ng thÓ mua !")
return
end

Pay(gia)
idx = AddEventItem(686)
Msg2Player("B¹n nhËn ®­îc 1 "..GetNameItemBox(idx).."")
end
function movebantodong()
SayNew("Bµn T¬ §éng lµ n¬i nguy hiÓm cã rÊt nhiÒu dÞ nh©n dïng ®éc giÕt ng­êi kh«ng gím tay, ng­¬i cã ch¾c ch¾n muèn ®Õn chø?",5,
"Cæng 1 /movebantodong1",
"Cæng 2 /movebantodong1",
"Cæng 3 /movebantodong1",
"Cæng 4 /movebantodong1",
"Tho¸t./no")
end

function movebantodong1(nsel)
if GetItemCount(686) == 0 then
Talk(1,"","Ta thÊy ng­¬i ch­a ®ñ m¹nh, h·y mang LÖnh Bµi Th­ëng ThiÖn Ph¸t ¸c ®Õn gÆp ta.")
return
end

sx = nsel + 1
AddSkillEffect(504,1,3*18)
SetFightState(1)
SetLogoutRV(1)
DelItem(686)
if sx == 1 then
NewWorld(77, 1527,3228)
elseif sx == 2 then
NewWorld(77, 1626,3230)
elseif sx == 3 then
NewWorld(77, 1675,3346)
elseif sx == 4 then
NewWorld(77, 1514,3355)
end
end

