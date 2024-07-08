

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
Msg2SubWorld("<color=green>Bang héi "..GetTongName().." sö dông LÖnh Bµi Xãa PK. Gi¶m 1 ®iÓm PK cho tÊt c¶ thµnh viªn bang héi")
n = GetItemCount(403)
if GetItemCount(403) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(403) == (n-1) then
			idxplayer = PlayerIndex
			for k=1,GetCountPlayerMax() do
				PlayerIndex = k
				if GetTongName() == bang then
					if GetPK() > 0 then
						SetPK(GetPK()-1)
						Msg2Tong("<color=yellow>"..GetName().." PK cßn: "..GetPK().."")
					end
				end
			end
			PlayerIndex = idxplayer	
	else
		Talk(1,"","Hack ha em")
	end
end
end
