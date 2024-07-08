function main()
if GetTask(103) == 37 then
	Talk(3,"","<color=red>"..GetName().."<color>: <color=yellow>Chóc Tó Thanh<color> nhê ta ®i cøu cha m×nh, nh­ng søc m×nh cã h¹n nªn ta qua nhê ng­¬i gióp mét tay ",
	"§­îc, ng­êi h·y ®i tr­íc ®i. Ta sÏ theo sau hç trî ng­¬i ",
	"§Õn <color=red>L©m Du Quan 204/235<color> thu phôc <color=yellow>§Þch H¹o Nhiªn ")
	Msg2Player("§Õn L©m Du Quan thu phôc §Þch H¹o Nhiªn 204/235")
	SetTask(103,38)
else
	Talk(1,"","<color=green>Hµ Mé TuyÕt<color>: ë ®êi tµ kh«ng thÓ th¾ng ch¸nh, ng­¬i h·y lËp thËt nhiÒu chiÕn tÝch vµo ¾t sÏ cã ngµy vinh danh ")
end
end