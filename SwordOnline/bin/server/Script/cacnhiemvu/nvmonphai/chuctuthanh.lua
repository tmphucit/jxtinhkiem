function main()
if GetTask(103) == 36 then
	Talk(3,"","<color=green>Chóc Tó Thanh<color>: Th× ra lµ vËy, ta ®· biÕt kÎ ®· b¾t cãc cha lµ ai råi ",
	"Nh­ng, <color=yellow>§Şch H¹o Nhiªn<color> nµy vâ nghÖ tinh th«ng, víi søc cña ng­êi th× kh«ng næi ®©u ",
	"H·y ®Õn <color=yellow>T­¬ng D­¬ng<color> gÆp <color=red>Hµ Mé TuyÕt 191/206<color> ®Ó nhê h¾n nhĞ !")
	Msg2Player("NhiÖm vô m«n ph¸i: §Õn T­¬ng D­¬ng t×m Hµ Mé TuyÕt 191/206 ")
	SetTask(103,37)
elseif GetTask(103) == 39 then
	SetTask(103,40)
	Talk(2,"","<color=red>"..GetName().."<color>: Ta ®· cè g¾ng hÕt søc nh­ng vÉn kh«ng  cøu ®­îc cha ng­¬i ",	
	"C¸m ¬n tr¸ng sü, ng­¬i h·y ®em c¸i <color=red>Tr©m Cµi Tãc<color> cña ta trao cho <color=yellow>Tr­ Bµ Bµ,<color> ng­êi sÏ gióp ng­¬i ")
	Msg2Player("BiÕt ®­îc tin cha m×nh qua ®êi, Nµng khãc than th¶m thiÕt råi trao mét chiÕc Tr©m Cµi Tãc ")
	Msg2Player("H·y giao tİn vËt nµy cho Tr­ Bµ Bµ !")
else
	Talk(1,"","<color=green>Chóc Tó Thanh<color>: Vâ L©m FC , thÕ gian nµy vÉn h÷u t×nh ®Êy ")
end
end