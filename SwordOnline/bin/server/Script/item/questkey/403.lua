

function main(idx)
if GetTongName() == "" then
Talk(1,"","Ng��i kh�ng c� bang h�i, kh�ng th� s� d�ng v�t ph�m")
return
end

if GetTongFigure() ~= 3 and GetTongFigure() ~= 2  then
Talk(1,"","Ch� c� Bang Ch�, Tr��ng L�o m�i c� th� s� d�ng v�t ph�m n�y")
return
end
bang = GetTongName()
Msg2SubWorld("<color=green>Bang h�i "..GetTongName().." s� d�ng L�nh B�i X�a PK. Gi�m 1 �i�m PK cho t�t c� th�nh vi�n bang h�i")
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
						Msg2Tong("<color=yellow>"..GetName().." PK c�n: "..GetPK().."")
					end
				end
			end
			PlayerIndex = idxplayer	
	else
		Talk(1,"","Hack ha em")
	end
end
end
