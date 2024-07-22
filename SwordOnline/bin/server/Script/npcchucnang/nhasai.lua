function main()
SayNew("<color=green>Nha Sai<color> §iÓm PK hiÖn t¹i cña b¹n lµ: <color=red>"..GetPK().."<color> ®iÓm. B¹n sÏ ph¶i tr¶ <color=yellow>5 v¹n<color> ®Ó ®Çu thó. B¹n cã ch¾c ch¾n muèn vµo nhµ lao kh«ng? ",3,
"Ta ®Õn ®Ó ®Çu thó/dauthu",
"T×m hiÓu nhµ tï /timhieu",
"Ta chØ ghĞ ngang qua th«i/no")
end

function timhieu()
Talk(3,"","<color=green>Nha Sai: <color> Nhµ tï lµ n¬i ®Ó nh÷ng kÎ s¸t nh©n vµo ®Çu thó. §©y lµ n¬i thİch hîp ®Ó b¹n tu th©n d­ìng tİnh .","§Ó  gi¶m PK cÇn 10 v¹n vµ 2 giê / 1 PK tõ 1 - 5, cÇn 20 v¹n vµ 4 giê / 1 PK tõ 6 - 10","Khi hÕt PK b¹n cã thÓ ra ngoµi vµ tiÕp tôc x«ng pha giang hå ")
end
function no()
Msg2Player("Kh«ng cã viÖc g× th× ®õng ®Õn phiÒn ta !")
end
function dauthu()
SetTask(1,0)
SetFightState(0)
SetCreateTeam(0);
SetPunish(0)
LeaveTeam()
Msg2Player("B¹n ®· di chuyÓn ®Õn tr¹i giam !!!!")
Msg2Player("§iÓm PK hiÖn t¹i cña b¹n lµ: "..GetPK().."")
Msg2Player("§Ó gi¶m 1 ®iÓm PK, B¹n ph¶i ngçi trong nhµ lao 1 giê")
Msg2Player("CÇn 1 kho¶n tiÒn nÕu b¹n muèn ra khái nhµ lao. Thêi gian b¹n ®· ngåi sÏ bŞ reset nÕu b¹n r· khái nhµ lao")
SetTask(143,1) -- Dang o tu
if GetTask(534) == 100 then
NewWorld(189,200*8,200*16)
else
NewWorld(5,200*8,200*16)
end
end