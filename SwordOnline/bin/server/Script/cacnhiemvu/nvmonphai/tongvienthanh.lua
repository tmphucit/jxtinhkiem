function main()
if GetTask(103) == 13 then
	Talk(2,"","§¹i hiÖp qu¶ thËt gan d¹, <color=red>HuyÕt Ma Hæ <color>®· ë ®©y rÊt nhiÒu n¨m trêi g©y häa cho ng­êi d©n vïng nµy",
	"H·y ®Õn <color=yellow>Miªu LÜnh 236/215, 257/216, 267/220<color> ®Ó tiªu diÖt Hæ d÷ !")
	Msg2Player("<color=green>NhiÖm vô m«n ph¸i:<color=red> §i Miªu LÜnh 236/215, 257/216, 267/220 quyÕt h¹ cho b»ng ®­îc Hç d÷ trõ häa cho d©n !")
	SetTask(103,14)
elseif GetTask(103) == 15 then
	SetTask(103,16)
	Talk(2,"","<color=green>Tèng ViÔn Thanh<color>: §a t¹ ®¹i hiÖp ®· ra tay cøu gióp d©n lµng chóng t«i ",
	"Göi lêi c¶m ¬n cña ta ®Õn <color=yellow>Ch­ëng M«n<color> cña ®¹i hiÖp n÷a nhĞ. ")
	Msg2Player("<color=green>NhiÖm vô m«n ph¸i:<color=red> Quay vÒ gÆp Ch­ëng M«n ®Ó phôc mÖnh ")
else
	Talk(1,"","H×nh nh­ ta ®· tõng gÆp ng­¬i !")
end
end