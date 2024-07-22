

function main(idx)
if GetTongName() == "" then
Talk(1,"","Ng­¬i kh«ng cã bang héi, kh«ng thÓ sö dông vËt phÈm")
return
end

if GetTongFigure() ~= 3 and GetTongFigure() ~= 2  then
Talk(1,"","ChØ cã Bang Chñ, Tr­ëng L·o míi cã thÓ sö dông vËt phÈm nµy")
return
end
bang = GetTongName()
Msg2SubWorld("<color=green>Bang héi "..GetTongName().." sö dông LÖnh Bµi Kinh NghiÖm. T¨ng 1 giê nh©n ®«i kinh nghiÖm cho toµn bé thµnh viªn bang héi")
n = GetItemCount(401)
if GetItemCount(401) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(401) == (n-1) then
			idxplayer = PlayerIndex
			for k=1,GetCountPlayerMax() do
				PlayerIndex = k
				if GetTongName() == bang then
					SetTask(172, GetTask(172) + 1*60*60*18)
					AddSkillEffect(460,1,GetTask(172))
					SetTask(141,1)
					Msg2Player("B¹n cã thªm 1 giê nh©n ®«i kinh nghiÖm")
					Msg2Player("Thêi gian nh©n ®«i kinh nghiÖm hiÖn t¹i: "..floor(GetTask(172)/18/60).." phót !")
				end
			end
			PlayerIndex = idxplayer	
	else
		Talk(1,"","Hack ha em")
	end
end
end
