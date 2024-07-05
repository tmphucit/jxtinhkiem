
function OnDeath()
idx = PlayerIndex
Msg2SubWorld("Chóc mõng ®¹i hiÖp ["..GetName().."] ®· tiªu diÖt Boss Vâ L©m T×nh NghÜa vµ ®em l¹i cho toµn bé nh©n sÜ tham gia t¹i Long TuyÒn Th«n rÊt nhiÒu kinh nghiÖm. ")
numteam = GetTeamSize()
team = GetTeam()
name = GetName()


AddEventItem(17)
Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc <color=yellow>1 Kim Nguyªn B¶o ")

for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetName() ~= "" or GetName() ~= nil then
			w,x,y = GetWorldPos()
			if w == 4 then
				AddOwnExp(20000000)
				Msg2Player("B¹n nhËn ®­îc 20 triÖu kinh nghiÖm tõ Boss Vâ L©m T×nh NghÜa ")

				SetTask(172,GetTask(172)+2*60*60*18)
				AddSkillEffect(460,1,GetTask(172))
				Msg2Player("Thêi gian nh©n ®«i kinh nghiÖm lµ: "..floor(GetTask(172)/60/18).." phót !")
				SetTask(141,1)	
			
			end
		end
end
PlayerIndex = idx


end


function OnDrop()


end











