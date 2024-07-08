function main()
if GetTask(103) == 29 then
	SetTask(103,30)
	Talk(2,"","<color=red>"..GetName().."<color>: Ch­ëng m«n sai ta ®Õn ®©y ®Ó hái th¨m vÒ TÝn VËt M«n Ph¸i bÞ thÊt l¹c",
	"<color=green>Thµnh §¹i Qu©n<color>: Muèn biÕt t­êng tËn sù viÖc h·y gióp ta tiªu diÖt n÷ qu¸i <color=yellow>LiÔu Tè Tè,<color> ®o¹t l¹i <color=red>Ngò S¾c Ngäc Béi")
	Msg2Player("<color=green>NhiÖm vô m«n ph¸i:<color=red> §Õn Chu Tiªn TrÊn ®¸nh b¹i LiÔu Tè Tè 217/180, lÊy l¹i Ngò S¾c Ngäc Béi !")
elseif GetTask(103) == 31 then
	Talk(2,"","<color=red>"..GetName().."<color>: Ngò S¾c Ngäc Béi cña ng­¬i ®©y, h·y nhanh nãi cho ta <color=yellow>TÝn VËt M«n Ph¸i<color> ®ang ë ®©u?",
	"TÝn VËt M«n Ph¸i theo nh­ ta biÕt ®ang n»m trong tay 1 g· ¨n mµy. HiÖn t¹i h¾n ®ang ë <color=yellow>T­¬ng D­¬ng 185/204<color>, ®Õn ®ã hái th¨m thö xem ")
	Msg2Player("<color=green>NhiÖm vô m«n ph¸i:<color=red> §Õn T­¬ng D­¬ng t×m L·o ¡n Mµy 185/204 ")
	SetTask(103,32)
else
	Talk(1,"","<color=green>Thµnh §¹i Qu©n<color>: Ta chØ ®øng ®©y ng¾m c¶nh th«i, ®õng lµm phiÒn ta !")
end
end