

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
Msg2SubWorld("<color=green>Bang h�i "..GetTongName().." s� d�ng L�nh B�i Kinh Nghi�m. T�ng 1 gi� nh�n ��i kinh nghi�m cho to�n b� th�nh vi�n bang h�i")
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
					Msg2Player("B�n c� th�m 1 gi� nh�n ��i kinh nghi�m")
					Msg2Player("Th�i gian nh�n ��i kinh nghi�m hi�n t�i: "..floor(GetTask(172)/18/60).." ph�t !")
				end
			end
			PlayerIndex = idxplayer	
	else
		Talk(1,"","Hack ha em")
	end
end
end
