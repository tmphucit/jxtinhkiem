function main()
if GetTask(499) == 0 then
SayNew("<color=green>Vâ S­ <color>: Ta ®· quy Èn s¬n l©m mÊy chôc n¨m råi, ng­êi ®· v« t×nh gÆp ®­îc ta xem nh­ cã duyªn. H«m nay ®· sÏ truyÒn d¹y mét lo¹i vâ c«ng mµ chÝnh ta ®· nghiªn cøu ra.",2,
"Ta ®ång ý mÊt 5000 l­îng  ®Ó b¸i s­ /baisu",
"Tho¸t./no")
elseif GetTask(499) == 4 then
Talk(1,"","Ta ch¼ng cßn g× ®Ó truyÒn d¹y cho nhµ ng­¬i !")
else
SayNew("<color=green>Vâ S­ <color>:  Qu¸ tr×nh khæ luyÖn cña nhµ ng­¬i thÕ nµo råi?",2,
"Ta ®Õn ®©y ®Ó phôc mÖnh /phucmenh",
"Tho¸t./no")
end
end

function baisu()
if GetLevel() < 5 then
Talk(1,"","§¼ng cÊp 5 h·y quay l¹i ®©y nhÐ ")
return
end
if GetCash() < 5000 then
Talk(1,"","Ng­¬i kh«ng mang theo ®ñ 5000 l­îng, kh«ng thÓ b¸i s­ ")
return
end
Pay(5000)
SetTask(499,1)
Msg2Player("NhiÖm Vô Vâ S­: H·y ra ngoµi ®¸nh <color=yellow>50 Cäc Gç <color=red>cho ta !")
end

function phucmenh()
if GetTask(499) == 1 then
	if GetTask(498) >= 50 then
		SetTask(498, 0)
		SetTask(499,2)
		Msg2Player("NhiÖm Vô Vâ S­: Qua Chu Tiªn TrÊn 216/194 ®¸nh<color=yellow> 50 Bao C¸t <color=red>cho ta ")
	else
		Talk(1,"","Ng­¬i ch­a ®¹t ®ñ nhiÖm vô ta giao: <color=yellow>"..GetTask(498).." / 50 Cäc Gç ")
	end
elseif GetTask(499) == 2 then
	if GetTask(498) >= 50 then
		SetTask(498, 0)
		SetTask(499,3)
		Msg2Player("NhiÖm Vô Vâ S­: Qua Giang T©n Th«n 443/375 ®¸nh<color=yellow> 50 Méc Nh©n <color=red>cho ta ")
	else
		Talk(1,"","Ng­¬i ch­a ®¹t ®ñ nhiÖm vô ta giao: <color=yellow>"..GetTask(498).." / 50 Bao C¸t")
	end
elseif GetTask(499) == 3 then
	if GetTask(498) >= 50 then
		AddMagic(210, 1)	
		SetTask(499,4)
		SetTask(498,0)
		Msg2Player("NhiÖm Vô Vâ S­: Ng­¬i ®· hoµn thµnh nhiÖm vô Vâ S­. Thµnh th¹o kü n¨ng <color=red>Khinh C«ng")
	else
		Talk(1,"","Ng­¬i ch­a ®¹t ®ñ nhiÖm vô ta giao: <color=yellow>"..GetTask(498).." / 50 Méc Nh©n")
	end
end
end

function no()
end

