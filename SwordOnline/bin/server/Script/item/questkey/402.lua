

function main_(idx)
n = GetItemCount(402)
if GetItemCount(402) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(402) == (n-1) then
		Earn(500000)
		Talk(1,"","B�n nh�n ���c 50 v�n l��ng")
	else
		Talk(1,"","Hack ha em")
	end
end
end

function main(idx)
w,x,y = GetWorldPos()

if w >= 116 and w <= 134 then
Msg2Player("Kh�ng th� s� d�ng l�nh b�i trong Khu V�c Bang H�i")
return
end

if w == 42 or w == 43 or w == 34 or w == 35 or w == 60 or w == 61 or w == 26 or w == 27 or w == 28 or w == 29 or w == 33 or w == 20 or w == 45  then
Msg2Player("Kh�ng th� s� d�ng L�nh B�i � ��y")
return
end


if GetTongName() == "" then
Talk(1,"","Ng��i kh�ng c� bang h�i, kh�ng th� s� d�ng v�t ph�m")
return
end

if GetTongFigure() ~= 3 and GetTongFigure() ~= 2  then
Talk(1,"","Ch� c� Bang Ch�, Tr��ng L�o m�i c� th� s� d�ng v�t ph�m n�y")
return
end
n = GetItemCount(402)
if GetItemCount(402) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(402) == (n-1) then
			SayNew("Ch�n m�u s�c c�n ��i: ",3,
			"Ch�nh Ph�i /DoiMau",
			"T� Ph�i /DoiMau",
			"Trung L�p /DoiMau")
	else
		Talk(1,"","Hack ha em")
	end
end
end

function DoiMau(nsel)
i = nsel + 1
w,x,y = GetWorldPos()
bang = GetTongName()
Msg2World("<color=green>"..GetName().." - Bang ["..GetTongName().."] �� s� d�ng L�nh B�i ��i M�u Bang")
idxplayer = PlayerIndex
			for k=1,GetCountPlayerMax() do
				PlayerIndex = k
				w1,x1,y1 = GetWorldPos()
		
				if GetTongName() == bang then
					if GetTeam() ~= nil then
						if w == w1 and (x1 >= x-24 and x1 <= x+24) and (y1 >= y-48 and y1 <= y+48) then
							SetCurCamp(i)
							SetCamp(i)
						else
							SetCamp(i)
							
						end
					else
						SetCurCamp(i)
						SetCamp(i)
						
					end
				end
			end
PlayerIndex = idxplayer	
end
